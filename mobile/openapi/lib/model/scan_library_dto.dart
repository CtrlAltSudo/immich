//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScanLibraryDto {
  /// Returns a new [ScanLibraryDto] instance.
  ScanLibraryDto({
    this.emptyTrash = false,
    this.refreshAllFiles = false,
    this.refreshModifiedFiles = false,
  });

  bool emptyTrash;

  bool refreshAllFiles;

  bool refreshModifiedFiles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanLibraryDto &&
     other.emptyTrash == emptyTrash &&
     other.refreshAllFiles == refreshAllFiles &&
     other.refreshModifiedFiles == refreshModifiedFiles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emptyTrash.hashCode) +
    (refreshAllFiles.hashCode) +
    (refreshModifiedFiles.hashCode);

  @override
  String toString() => 'ScanLibraryDto[emptyTrash=$emptyTrash, refreshAllFiles=$refreshAllFiles, refreshModifiedFiles=$refreshModifiedFiles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emptyTrash'] = this.emptyTrash;
      json[r'refreshAllFiles'] = this.refreshAllFiles;
      json[r'refreshModifiedFiles'] = this.refreshModifiedFiles;
    return json;
  }

  /// Returns a new [ScanLibraryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanLibraryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ScanLibraryDto(
        emptyTrash: mapValueOfType<bool>(json, r'emptyTrash') ?? false,
        refreshAllFiles: mapValueOfType<bool>(json, r'refreshAllFiles') ?? false,
        refreshModifiedFiles: mapValueOfType<bool>(json, r'refreshModifiedFiles') ?? false,
      );
    }
    return null;
  }

  static List<ScanLibraryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanLibraryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanLibraryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanLibraryDto> mapFromJson(dynamic json) {
    final map = <String, ScanLibraryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanLibraryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanLibraryDto-objects as value to a dart map
  static Map<String, List<ScanLibraryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanLibraryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanLibraryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

