import { ApiProperty } from '@nestjs/swagger';

export class AvailableVersionResponseDto {
  isAvailable!: boolean;
  @ApiProperty({ type: 'integer' })
  dateCheckAvailbleVersion!: number | null;
  currentVersion!: SystemConfigImmichVersion;
  releaseVersion!: SystemConfigImmichVersion | null;
}
class SystemConfigImmichVersion {
  @ApiProperty({ type: 'integer' })
  major!: number;
  @ApiProperty({ type: 'integer' })
  minor!: number;
  @ApiProperty({ type: 'integer' })
  patch!: number;
}