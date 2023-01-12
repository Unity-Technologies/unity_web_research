struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb40 : bool;
  var u_xlatb41 : bool;
  var u_xlat4 : vec4<f32>;
  var x_139 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var x_292 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat43 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_486 : f32;
  var x_498 : f32;
  var x_510 : f32;
  var u_xlatb43 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_668 : f32;
  var x_680 : f32;
  var x_692 : f32;
  var u_xlat14 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat39;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_59 : vec2<f32> = vs_TEXCOORD2;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_59);
  u_xlat2 = vec3<f32>(x_60.x, x_60.y, x_60.z);
  let x_62 : vec3<f32> = u_xlat2;
  let x_66 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_62 * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_70 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_70 * vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_84 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb40 = (x_84 == 1.0f);
  let x_87 : bool = u_xlatb40;
  if (x_87) {
    let x_93 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_93 == 1.0f);
    let x_96 : vec3<f32> = vs_TEXCOORD1;
    let x_101 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_103 : vec3<f32> = (vec3<f32>(x_96.y, x_96.y, x_96.y) * vec3<f32>(x_101.x, x_101.y, x_101.z));
    let x_104 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
    let x_107 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_109 : vec3<f32> = vs_TEXCOORD1;
    let x_112 : vec4<f32> = u_xlat4;
    let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.x, x_109.x, x_109.x)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
    let x_115 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
    let x_119 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_121 : vec3<f32> = vs_TEXCOORD1;
    let x_124 : vec4<f32> = u_xlat4;
    let x_126 : vec3<f32> = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_121.z, x_121.z, x_121.z)) + vec3<f32>(x_124.x, x_124.y, x_124.z));
    let x_127 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
    let x_129 : vec4<f32> = u_xlat4;
    let x_133 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_135 : vec3<f32> = (vec3<f32>(x_129.x, x_129.y, x_129.z) + vec3<f32>(x_133.x, x_133.y, x_133.z));
    let x_136 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
    let x_138 : bool = u_xlatb41;
    if (x_138) {
      let x_142 : vec4<f32> = u_xlat4;
      x_139 = vec3<f32>(x_142.x, x_142.y, x_142.z);
    } else {
      let x_145 : vec3<f32> = vs_TEXCOORD1;
      x_139 = x_145;
    }
    let x_146 : vec3<f32> = x_139;
    let x_147 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_149 : vec4<f32> = u_xlat4;
    let x_153 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_155 : vec3<f32> = (vec3<f32>(x_149.x, x_149.y, x_149.z) + -(x_153));
    let x_156 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
    let x_158 : vec4<f32> = u_xlat4;
    let x_162 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_163 : vec3<f32> = (vec3<f32>(x_158.x, x_158.y, x_158.z) * x_162);
    let x_164 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_164.x, x_163.x, x_163.y, x_163.z);
    let x_168 : f32 = u_xlat4.y;
    u_xlat41 = ((x_168 * 0.25f) + 0.75f);
    let x_176 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat42 = ((x_176 * 0.5f) + 0.75f);
    let x_180 : f32 = u_xlat41;
    let x_181 : f32 = u_xlat42;
    u_xlat4.x = max(x_180, x_181);
    let x_192 : vec4<f32> = u_xlat4;
    let x_194 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_192.x, x_192.z, x_192.w));
    u_xlat4 = x_194;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_201 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat41 = dot(x_201, x_204);
  let x_206 : f32 = u_xlat41;
  u_xlat41 = clamp(x_206, 0.0f, 1.0f);
  let x_211 : f32 = x_18.x_Glossiness;
  u_xlat42 = (-(x_211) + 1.0f);
  let x_214 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = vs_TEXCOORD0;
  u_xlat4.x = dot(-(vec3<f32>(x_214.x, x_214.y, x_214.z)), x_218);
  let x_222 : f32 = u_xlat4.x;
  let x_224 : f32 = u_xlat4.x;
  u_xlat4.x = (x_222 + x_224);
  let x_227 : vec3<f32> = vs_TEXCOORD0;
  let x_228 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((x_227 * -(vec3<f32>(x_228.x, x_228.x, x_228.x))) + -(vec3<f32>(x_232.x, x_232.y, x_232.z)));
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : f32 = u_xlat41;
  let x_243 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : bool = u_xlatb40;
  if (x_246) {
    let x_250 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb40 = (x_250 == 1.0f);
    let x_253 : vec3<f32> = vs_TEXCOORD1;
    let x_256 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_258 : vec3<f32> = (vec3<f32>(x_253.y, x_253.y, x_253.y) * vec3<f32>(x_256.x, x_256.y, x_256.z));
    let x_259 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_262 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_264 : vec3<f32> = vs_TEXCOORD1;
    let x_267 : vec4<f32> = u_xlat6;
    let x_269 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
    let x_270 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_273 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_275 : vec3<f32> = vs_TEXCOORD1;
    let x_278 : vec4<f32> = u_xlat6;
    let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.z, x_275.z, x_275.z)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
    let x_281 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_283 : vec4<f32> = u_xlat6;
    let x_286 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_291 : bool = u_xlatb40;
    if (x_291) {
      let x_295 : vec4<f32> = u_xlat6;
      x_292 = vec3<f32>(x_295.x, x_295.y, x_295.z);
    } else {
      let x_298 : vec3<f32> = vs_TEXCOORD1;
      x_292 = x_298;
    }
    let x_299 : vec3<f32> = x_292;
    let x_300 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat6;
    let x_305 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + -(x_305));
    let x_308 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : vec4<f32> = u_xlat6;
    let x_313 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) * x_313);
    let x_315 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_315.x, x_314.x, x_314.y, x_314.z);
    let x_319 : f32 = u_xlat6.y;
    u_xlat40 = (x_319 * 0.25f);
    let x_322 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat41 = (x_322 * 0.5f);
    let x_326 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat43 = ((-(x_326) * 0.5f) + 0.25f);
    let x_330 : f32 = u_xlat40;
    let x_331 : f32 = u_xlat41;
    u_xlat40 = max(x_330, x_331);
    let x_333 : f32 = u_xlat43;
    let x_334 : f32 = u_xlat40;
    u_xlat6.x = min(x_333, x_334);
    let x_341 : vec4<f32> = u_xlat6;
    let x_343 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_341.x, x_341.z, x_341.w));
    u_xlat7 = x_343;
    let x_345 : vec4<f32> = u_xlat6;
    let x_348 : vec3<f32> = (vec3<f32>(x_345.x, x_345.z, x_345.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_349 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_354 : vec4<f32> = u_xlat8;
    let x_356 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_354.x, x_354.y, x_354.z));
    u_xlat8 = x_356;
    let x_357 : vec4<f32> = u_xlat6;
    let x_360 : vec3<f32> = (vec3<f32>(x_357.x, x_357.z, x_357.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_361 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_366 : vec4<f32> = u_xlat6;
    let x_368 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_366.x, x_366.y, x_366.z));
    u_xlat6 = x_368;
    let x_370 : vec3<f32> = vs_TEXCOORD0;
    let x_371 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
    u_xlat9.w = 1.0f;
    let x_374 : vec4<f32> = u_xlat7;
    let x_375 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_374, x_375);
    let x_378 : vec4<f32> = u_xlat8;
    let x_379 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_378, x_379);
    let x_382 : vec4<f32> = u_xlat6;
    let x_383 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_382, x_383);
  } else {
    let x_387 : vec3<f32> = vs_TEXCOORD0;
    let x_388 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    u_xlat6.w = 1.0f;
    let x_392 : vec4<f32> = x_18.unity_SHAr;
    let x_393 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_392, x_393);
    let x_397 : vec4<f32> = x_18.unity_SHAg;
    let x_398 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_397, x_398);
    let x_403 : vec4<f32> = x_18.unity_SHAb;
    let x_404 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_403, x_404);
  }
  let x_407 : vec4<f32> = u_xlat7;
  let x_410 : vec3<f32> = vs_TEXCOORD4;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) + x_410);
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat6;
  let x_417 : vec3<f32> = max(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_422 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb40 = (0.0f < x_422);
  let x_424 : bool = u_xlatb40;
  if (x_424) {
    let x_427 : vec4<f32> = u_xlat4;
    let x_429 : vec4<f32> = u_xlat4;
    u_xlat40 = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_432);
    let x_434 : f32 = u_xlat40;
    let x_436 : vec4<f32> = u_xlat4;
    let x_438 : vec3<f32> = (vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_436.x, x_436.y, x_436.z));
    let x_439 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_441 : vec3<f32> = vs_TEXCOORD1;
    let x_445 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_447 : vec3<f32> = (-(x_441) + vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_450 : vec4<f32> = u_xlat8;
    let x_452 : vec4<f32> = u_xlat7;
    let x_454 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) / vec3<f32>(x_452.x, x_452.y, x_452.z));
    let x_455 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
    let x_457 : vec3<f32> = vs_TEXCOORD1;
    let x_461 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_463 : vec3<f32> = (-(x_457) + vec3<f32>(x_461.x, x_461.y, x_461.z));
    let x_464 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
    let x_466 : vec4<f32> = u_xlat9;
    let x_468 : vec4<f32> = u_xlat7;
    let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) / vec3<f32>(x_468.x, x_468.y, x_468.z));
    let x_471 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_477 : vec4<f32> = u_xlat7;
    let x_480 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_477.x, x_477.y, x_477.z, x_477.x));
    u_xlatb10 = vec3<bool>(x_480.x, x_480.y, x_480.z);
    let x_483 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_483;
    let x_485 : bool = u_xlatb10.x;
    if (x_485) {
      let x_490 : f32 = u_xlat8.x;
      x_486 = x_490;
    } else {
      let x_493 : f32 = u_xlat9.x;
      x_486 = x_493;
    }
    let x_494 : f32 = x_486;
    hlslcc_movcTemp.x = x_494;
    let x_497 : bool = u_xlatb10.y;
    if (x_497) {
      let x_502 : f32 = u_xlat8.y;
      x_498 = x_502;
    } else {
      let x_505 : f32 = u_xlat9.y;
      x_498 = x_505;
    }
    let x_506 : f32 = x_498;
    hlslcc_movcTemp.y = x_506;
    let x_509 : bool = u_xlatb10.z;
    if (x_509) {
      let x_514 : f32 = u_xlat8.z;
      x_510 = x_514;
    } else {
      let x_517 : f32 = u_xlat9.z;
      x_510 = x_517;
    }
    let x_518 : f32 = x_510;
    hlslcc_movcTemp.z = x_518;
    let x_520 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_520;
    let x_522 : f32 = u_xlat8.y;
    let x_524 : f32 = u_xlat8.x;
    u_xlat40 = min(x_522, x_524);
    let x_527 : f32 = u_xlat8.z;
    let x_528 : f32 = u_xlat40;
    u_xlat40 = min(x_527, x_528);
    let x_530 : vec3<f32> = vs_TEXCOORD1;
    let x_532 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_535 : vec3<f32> = (x_530 + -(vec3<f32>(x_532.x, x_532.y, x_532.z)));
    let x_536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat7;
    let x_540 : f32 = u_xlat40;
    let x_543 : vec4<f32> = u_xlat8;
    let x_545 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(x_540, x_540, x_540)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
    let x_546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  } else {
    let x_549 : vec4<f32> = u_xlat4;
    let x_550 : vec3<f32> = vec3<f32>(x_549.x, x_549.y, x_549.z);
    let x_551 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  }
  let x_553 : f32 = u_xlat42;
  u_xlat40 = ((-(x_553) * 0.699999988f) + 1.700000048f);
  let x_559 : f32 = u_xlat40;
  let x_560 : f32 = u_xlat42;
  u_xlat40 = (x_559 * x_560);
  let x_562 : f32 = u_xlat40;
  u_xlat40 = (x_562 * 6.0f);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : f32 = u_xlat40;
  let x_576 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_573.x, x_573.y, x_573.z), x_575);
  u_xlat7 = x_576;
  let x_578 : f32 = u_xlat7.w;
  u_xlat41 = (x_578 + -1.0f);
  let x_583 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_584 : f32 = u_xlat41;
  u_xlat41 = ((x_583 * x_584) + 1.0f);
  let x_587 : f32 = u_xlat41;
  u_xlat41 = log2(x_587);
  let x_589 : f32 = u_xlat41;
  let x_591 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_589 * x_591);
  let x_593 : f32 = u_xlat41;
  u_xlat41 = exp2(x_593);
  let x_595 : f32 = u_xlat41;
  let x_597 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_595 * x_597);
  let x_599 : vec4<f32> = u_xlat7;
  let x_601 : f32 = u_xlat41;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601, x_601, x_601));
  let x_604 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_608 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb43 = (x_608 < 0.999989986f);
  let x_611 : bool = u_xlatb43;
  if (x_611) {
    let x_616 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb43 = (0.0f < x_616);
    let x_618 : bool = u_xlatb43;
    if (x_618) {
      let x_621 : vec4<f32> = u_xlat4;
      let x_623 : vec4<f32> = u_xlat4;
      u_xlat43 = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), vec3<f32>(x_623.x, x_623.y, x_623.z));
      let x_626 : f32 = u_xlat43;
      u_xlat43 = inverseSqrt(x_626);
      let x_628 : f32 = u_xlat43;
      let x_630 : vec4<f32> = u_xlat4;
      let x_632 : vec3<f32> = (vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_630.x, x_630.y, x_630.z));
      let x_633 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
      let x_636 : vec3<f32> = vs_TEXCOORD1;
      let x_640 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_636) + vec3<f32>(x_640.x, x_640.y, x_640.z));
      let x_643 : vec3<f32> = u_xlat10;
      let x_644 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_643 / vec3<f32>(x_644.x, x_644.y, x_644.z));
      let x_648 : vec3<f32> = vs_TEXCOORD1;
      let x_652 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_648) + vec3<f32>(x_652.x, x_652.y, x_652.z));
      let x_655 : vec3<f32> = u_xlat11;
      let x_656 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_655 / vec3<f32>(x_656.x, x_656.y, x_656.z));
      let x_660 : vec4<f32> = u_xlat9;
      let x_662 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.x));
      u_xlatb12 = vec3<bool>(x_662.x, x_662.y, x_662.z);
      let x_665 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_665;
      let x_667 : bool = u_xlatb12.x;
      if (x_667) {
        let x_672 : f32 = u_xlat10.x;
        x_668 = x_672;
      } else {
        let x_675 : f32 = u_xlat11.x;
        x_668 = x_675;
      }
      let x_676 : f32 = x_668;
      hlslcc_movcTemp_1.x = x_676;
      let x_679 : bool = u_xlatb12.y;
      if (x_679) {
        let x_684 : f32 = u_xlat10.y;
        x_680 = x_684;
      } else {
        let x_687 : f32 = u_xlat11.y;
        x_680 = x_687;
      }
      let x_688 : f32 = x_680;
      hlslcc_movcTemp_1.y = x_688;
      let x_691 : bool = u_xlatb12.z;
      if (x_691) {
        let x_696 : f32 = u_xlat10.z;
        x_692 = x_696;
      } else {
        let x_699 : f32 = u_xlat11.z;
        x_692 = x_699;
      }
      let x_700 : f32 = x_692;
      hlslcc_movcTemp_1.z = x_700;
      let x_702 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_702;
      let x_704 : f32 = u_xlat10.y;
      let x_706 : f32 = u_xlat10.x;
      u_xlat43 = min(x_704, x_706);
      let x_709 : f32 = u_xlat10.z;
      let x_710 : f32 = u_xlat43;
      u_xlat43 = min(x_709, x_710);
      let x_712 : vec3<f32> = vs_TEXCOORD1;
      let x_714 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_712 + -(vec3<f32>(x_714.x, x_714.y, x_714.z)));
      let x_718 : vec4<f32> = u_xlat9;
      let x_720 : f32 = u_xlat43;
      let x_723 : vec3<f32> = u_xlat10;
      let x_724 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_720, x_720, x_720)) + x_723);
      let x_725 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    }
    let x_731 : vec4<f32> = u_xlat4;
    let x_733 : f32 = u_xlat40;
    let x_734 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_731.x, x_731.y, x_731.z), x_733);
    u_xlat4 = x_734;
    let x_736 : f32 = u_xlat4.w;
    u_xlat40 = (x_736 + -1.0f);
    let x_740 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_741 : f32 = u_xlat40;
    u_xlat40 = ((x_740 * x_741) + 1.0f);
    let x_744 : f32 = u_xlat40;
    u_xlat40 = log2(x_744);
    let x_746 : f32 = u_xlat40;
    let x_748 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat40 = (x_746 * x_748);
    let x_750 : f32 = u_xlat40;
    u_xlat40 = exp2(x_750);
    let x_752 : f32 = u_xlat40;
    let x_754 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat40 = (x_752 * x_754);
    let x_756 : vec4<f32> = u_xlat4;
    let x_758 : f32 = u_xlat40;
    let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758, x_758, x_758));
    let x_761 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_763 : f32 = u_xlat41;
    let x_765 : vec4<f32> = u_xlat7;
    let x_768 : vec4<f32> = u_xlat4;
    let x_771 : vec3<f32> = ((vec3<f32>(x_763, x_763, x_763) * vec3<f32>(x_765.x, x_765.y, x_765.z)) + -(vec3<f32>(x_768.x, x_768.y, x_768.z)));
    let x_772 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
    let x_775 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_777 : vec4<f32> = u_xlat7;
    let x_780 : vec4<f32> = u_xlat4;
    let x_782 : vec3<f32> = ((vec3<f32>(x_775.w, x_775.w, x_775.w) * vec3<f32>(x_777.x, x_777.y, x_777.z)) + vec3<f32>(x_780.x, x_780.y, x_780.z));
    let x_783 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  }
  let x_785 : vec3<f32> = vs_TEXCOORD0;
  let x_786 : vec3<f32> = vs_TEXCOORD0;
  u_xlat40 = dot(x_785, x_786);
  let x_788 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_788);
  let x_790 : f32 = u_xlat40;
  let x_792 : vec3<f32> = vs_TEXCOORD0;
  let x_793 : vec3<f32> = (vec3<f32>(x_790, x_790, x_790) * x_792);
  let x_794 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat2;
  let x_797 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_796 * vec3<f32>(x_797.x, x_797.y, x_797.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_805 : f32 = x_18.x_Metallic;
  let x_807 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_805, x_805, x_805) * x_807) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_813 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_813) * 0.959999979f) + 0.959999979f);
  let x_818 : f32 = u_xlat40;
  let x_820 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_818, x_818, x_818) * x_820);
  let x_822 : vec4<f32> = u_xlat0;
  let x_824 : f32 = u_xlat39;
  let x_828 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_830 : vec3<f32> = ((vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(x_824, x_824, x_824)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat0;
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat39;
  u_xlat39 = max(x_838, 0.001f);
  let x_841 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_841);
  let x_843 : f32 = u_xlat39;
  let x_845 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = (vec3<f32>(x_843, x_843, x_843) * vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_852 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat4;
  let x_858 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_863 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_863, 0.0f, 1.0f);
  let x_867 : vec4<f32> = u_xlat4;
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(vec3<f32>(x_867.x, x_867.y, x_867.z), vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : f32 = u_xlat14;
  u_xlat14 = clamp(x_872, 0.0f, 1.0f);
  let x_875 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_875.x, x_875.y, x_875.z), vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_882 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_882, 0.0f, 1.0f);
  let x_887 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat0.x;
  u_xlat13.x = (x_887 * x_889);
  let x_892 : vec3<f32> = u_xlat13;
  let x_894 : f32 = u_xlat42;
  u_xlat13.x = dot(vec2<f32>(x_892.x, x_892.x), vec2<f32>(x_894, x_894));
  let x_899 : f32 = u_xlat13.x;
  u_xlat13.x = (x_899 + -0.5f);
  let x_905 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_905) + 1.0f);
  let x_909 : f32 = u_xlat26;
  let x_910 : f32 = u_xlat26;
  u_xlat27 = (x_909 * x_910);
  let x_912 : f32 = u_xlat27;
  let x_913 : f32 = u_xlat27;
  u_xlat27 = (x_912 * x_913);
  let x_915 : f32 = u_xlat26;
  let x_916 : f32 = u_xlat27;
  u_xlat26 = (x_915 * x_916);
  let x_919 : f32 = u_xlat13.x;
  let x_920 : f32 = u_xlat26;
  u_xlat26 = ((x_919 * x_920) + 1.0f);
  let x_923 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_923)) + 1.0f);
  let x_927 : f32 = u_xlat27;
  let x_928 : f32 = u_xlat27;
  u_xlat41 = (x_927 * x_928);
  let x_930 : f32 = u_xlat41;
  let x_931 : f32 = u_xlat41;
  u_xlat41 = (x_930 * x_931);
  let x_933 : f32 = u_xlat27;
  let x_934 : f32 = u_xlat41;
  u_xlat27 = (x_933 * x_934);
  let x_937 : f32 = u_xlat13.x;
  let x_938 : f32 = u_xlat27;
  u_xlat13.x = ((x_937 * x_938) + 1.0f);
  let x_943 : f32 = u_xlat13.x;
  let x_944 : f32 = u_xlat26;
  u_xlat13.x = (x_943 * x_944);
  let x_947 : f32 = u_xlat42;
  let x_948 : f32 = u_xlat42;
  u_xlat26 = (x_947 * x_948);
  let x_950 : f32 = u_xlat26;
  u_xlat26 = max(x_950, 0.002f);
  let x_953 : f32 = u_xlat26;
  u_xlat41 = (-(x_953) + 1.0f);
  let x_956 : f32 = u_xlat39;
  let x_958 : f32 = u_xlat41;
  let x_960 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_956) * x_958) + x_960);
  let x_963 : f32 = u_xlat1.x;
  let x_964 : f32 = u_xlat41;
  let x_966 : f32 = u_xlat26;
  u_xlat41 = ((x_963 * x_964) + x_966);
  let x_968 : f32 = u_xlat39;
  let x_970 : f32 = u_xlat41;
  u_xlat39 = (abs(x_968) * x_970);
  let x_973 : f32 = u_xlat1.x;
  let x_974 : f32 = u_xlat42;
  let x_976 : f32 = u_xlat39;
  u_xlat39 = ((x_973 * x_974) + x_976);
  let x_978 : f32 = u_xlat39;
  u_xlat39 = (x_978 + 0.00001f);
  let x_981 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_981);
  let x_983 : f32 = u_xlat26;
  let x_984 : f32 = u_xlat26;
  u_xlat41 = (x_983 * x_984);
  let x_986 : f32 = u_xlat14;
  let x_987 : f32 = u_xlat41;
  let x_989 : f32 = u_xlat14;
  u_xlat42 = ((x_986 * x_987) + -(x_989));
  let x_992 : f32 = u_xlat42;
  let x_993 : f32 = u_xlat14;
  u_xlat14 = ((x_992 * x_993) + 1.0f);
  let x_996 : f32 = u_xlat41;
  u_xlat41 = (x_996 * 0.318309873f);
  let x_999 : f32 = u_xlat14;
  let x_1000 : f32 = u_xlat14;
  u_xlat14 = ((x_999 * x_1000) + 0.0000001f);
  let x_1004 : f32 = u_xlat41;
  let x_1005 : f32 = u_xlat14;
  u_xlat14 = (x_1004 / x_1005);
  let x_1007 : f32 = u_xlat39;
  let x_1008 : f32 = u_xlat14;
  u_xlat13.z = (x_1007 * x_1008);
  let x_1011 : vec4<f32> = u_xlat1;
  let x_1013 : vec3<f32> = u_xlat13;
  let x_1015 : vec2<f32> = (vec2<f32>(x_1011.x, x_1011.x) * vec2<f32>(x_1013.x, x_1013.z));
  let x_1016 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1015.x, x_1016.y, x_1015.y);
  let x_1019 : f32 = u_xlat13.z;
  u_xlat39 = (x_1019 * 3.141592741f);
  let x_1022 : f32 = u_xlat39;
  u_xlat39 = max(x_1022, 0.0f);
  let x_1024 : f32 = u_xlat26;
  let x_1025 : f32 = u_xlat26;
  u_xlat26 = ((x_1024 * x_1025) + 1.0f);
  let x_1028 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1028);
  let x_1030 : vec3<f32> = u_xlat2;
  let x_1031 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1030, x_1031);
  let x_1036 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1036 == 0.0f));
  let x_1038 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1038);
  let x_1041 : f32 = u_xlat39;
  let x_1043 : f32 = u_xlat1.x;
  u_xlat39 = (x_1041 * x_1043);
  let x_1045 : f32 = u_xlat40;
  let x_1048 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1045) + x_1048);
  let x_1052 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1052 + 1.0f);
  let x_1056 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1056, 0.0f, 1.0f);
  let x_1059 : vec3<f32> = u_xlat5;
  let x_1060 : vec3<f32> = u_xlat13;
  let x_1063 : vec4<f32> = u_xlat6;
  let x_1065 : vec3<f32> = ((x_1059 * vec3<f32>(x_1060.x, x_1060.x, x_1060.x)) + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec3<f32> = u_xlat5;
  let x_1069 : f32 = u_xlat39;
  u_xlat5 = (x_1068 * vec3<f32>(x_1069, x_1069, x_1069));
  let x_1073 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1073) + 1.0f);
  let x_1078 : f32 = u_xlat0.x;
  let x_1080 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1078 * x_1080);
  let x_1084 : f32 = u_xlat13.x;
  let x_1086 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1084 * x_1086);
  let x_1090 : f32 = u_xlat0.x;
  let x_1092 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1090 * x_1092);
  let x_1095 : vec3<f32> = u_xlat2;
  let x_1098 : vec3<f32> = (-(x_1095) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1099 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec4<f32> = u_xlat6;
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1106 : vec3<f32> = u_xlat2;
  let x_1107 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103.x, x_1103.x, x_1103.x)) + x_1106);
  let x_1108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1107.z);
  let x_1110 : vec4<f32> = u_xlat0;
  let x_1112 : vec3<f32> = u_xlat5;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.w) * x_1112);
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1113.z);
  let x_1116 : vec3<f32> = u_xlat3;
  let x_1117 : vec4<f32> = u_xlat4;
  let x_1120 : vec4<f32> = u_xlat0;
  let x_1122 : vec3<f32> = ((x_1116 * vec3<f32>(x_1117.x, x_1117.y, x_1117.z)) + vec3<f32>(x_1120.x, x_1120.y, x_1120.w));
  let x_1123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1122.z);
  let x_1125 : vec4<f32> = u_xlat8;
  let x_1127 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1125.x, x_1125.y, x_1125.z) * vec3<f32>(x_1127, x_1127, x_1127));
  let x_1130 : vec3<f32> = u_xlat2;
  let x_1132 : vec4<f32> = u_xlat1;
  let x_1134 : vec3<f32> = (-(x_1130) + vec3<f32>(x_1132.x, x_1132.x, x_1132.x));
  let x_1135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1134.z);
  let x_1137 : f32 = u_xlat27;
  let x_1139 : vec4<f32> = u_xlat1;
  let x_1142 : vec3<f32> = u_xlat2;
  let x_1143 : vec3<f32> = ((vec3<f32>(x_1137, x_1137, x_1137) * vec3<f32>(x_1139.x, x_1139.y, x_1139.w)) + x_1142);
  let x_1144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1148 : vec3<f32> = u_xlat3;
  let x_1149 : vec4<f32> = u_xlat1;
  let x_1152 : vec4<f32> = u_xlat0;
  let x_1154 : vec3<f32> = ((x_1148 * vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + vec3<f32>(x_1152.x, x_1152.y, x_1152.w));
  let x_1155 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

