import {
  AuthUserDto,
  CreateLibraryDto,
  GetLibrariesDto,
  LibraryResponseDto,
  LibraryService,
  LibraryStatsResponseDto,
  ScanLibraryDto as RefreshLibraryDto,
  UpdateLibraryDto,
} from '@app/domain';
import { Body, Controller, Delete, Get, Param, Post, Put, Query } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { Authenticated, AuthUser } from '../app.guard';
import { UseValidation } from '../app.utils';
import { UUIDParamDto } from './dto/uuid-param.dto';

@ApiTags('Library')
@Controller('library')
@Authenticated()
@UseValidation()
export class LibraryController {
  constructor(private libraryService: LibraryService) {}

  @Post()
  createLibrary(
    @AuthUser() authUser: AuthUserDto,
    @Body() createLibraryDto: CreateLibraryDto,
  ): Promise<LibraryResponseDto> {
    return this.libraryService.create(authUser, createLibraryDto);
  }

  @Put()
  updateLibrary(
    @AuthUser() authUser: AuthUserDto,
    @Body() updateLibraryDto: UpdateLibraryDto,
  ): Promise<LibraryResponseDto> {
    return this.libraryService.update(authUser, updateLibraryDto);
  }

  @Get()
  getAllLibraries(@AuthUser() authUser: AuthUserDto, @Query() dto: GetLibrariesDto): Promise<LibraryResponseDto[]> {
    return this.libraryService.getAll(authUser, dto);
  }

  @Get('count')
  getLibraryCount(@AuthUser() authUser: AuthUserDto): Promise<number> {
    return this.libraryService.getCount(authUser);
  }

  @Get(':id')
  getLibraryInfo(@AuthUser() authUser: AuthUserDto, @Param() { id }: UUIDParamDto): Promise<LibraryResponseDto> {
    return this.libraryService.get(authUser, id);
  }

  @Get('statistics/:id')
  getLibraryStatistics(
    @AuthUser() authUser: AuthUserDto,
    @Param() { id }: UUIDParamDto,
  ): Promise<LibraryStatsResponseDto> {
    return this.libraryService.getStatistics(authUser, id);
  }

  @Delete(':id')
  deleteLibrary(@AuthUser() authUser: AuthUserDto, @Param() { id }: UUIDParamDto): Promise<void> {
    return this.libraryService.delete(authUser, id);
  }

  @Post('refresh/:id')
  refreshLibrary(@AuthUser() authUser: AuthUserDto, @Param() { id }: UUIDParamDto, @Body() dto: RefreshLibraryDto) {
    return this.libraryService.refresh(authUser, id, dto);
  }
}
