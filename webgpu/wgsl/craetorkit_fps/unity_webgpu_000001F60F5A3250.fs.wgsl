struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

var<private> vs_TEXCOORD4 : f32;

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
  var x_487 : f32;
  var x_499 : f32;
  var x_511 : f32;
  var u_xlatb43 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_669 : f32;
  var x_681 : f32;
  var x_693 : f32;
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
    let x_398 : vec4<f32> = x_18.unity_SHAg;
    let x_399 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_398, x_399);
    let x_404 : vec4<f32> = x_18.unity_SHAb;
    let x_405 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_404, x_405);
  }
  let x_408 : vec4<f32> = u_xlat7;
  let x_411 : vec3<f32> = vs_TEXCOORD3;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + x_411);
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  let x_418 : vec3<f32> = max(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_423 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb40 = (0.0f < x_423);
  let x_425 : bool = u_xlatb40;
  if (x_425) {
    let x_428 : vec4<f32> = u_xlat4;
    let x_430 : vec4<f32> = u_xlat4;
    u_xlat40 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_433);
    let x_435 : f32 = u_xlat40;
    let x_437 : vec4<f32> = u_xlat4;
    let x_439 : vec3<f32> = (vec3<f32>(x_435, x_435, x_435) * vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_442 : vec3<f32> = vs_TEXCOORD1;
    let x_446 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_448 : vec3<f32> = (-(x_442) + vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_451 : vec4<f32> = u_xlat8;
    let x_453 : vec4<f32> = u_xlat7;
    let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) / vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_456 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : vec3<f32> = vs_TEXCOORD1;
    let x_462 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_464 : vec3<f32> = (-(x_458) + vec3<f32>(x_462.x, x_462.y, x_462.z));
    let x_465 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_467 : vec4<f32> = u_xlat9;
    let x_469 : vec4<f32> = u_xlat7;
    let x_471 : vec3<f32> = (vec3<f32>(x_467.x, x_467.y, x_467.z) / vec3<f32>(x_469.x, x_469.y, x_469.z));
    let x_472 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
    let x_478 : vec4<f32> = u_xlat7;
    let x_481 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_478.x, x_478.y, x_478.z, x_478.x));
    u_xlatb10 = vec3<bool>(x_481.x, x_481.y, x_481.z);
    let x_484 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_484;
    let x_486 : bool = u_xlatb10.x;
    if (x_486) {
      let x_491 : f32 = u_xlat8.x;
      x_487 = x_491;
    } else {
      let x_494 : f32 = u_xlat9.x;
      x_487 = x_494;
    }
    let x_495 : f32 = x_487;
    hlslcc_movcTemp.x = x_495;
    let x_498 : bool = u_xlatb10.y;
    if (x_498) {
      let x_503 : f32 = u_xlat8.y;
      x_499 = x_503;
    } else {
      let x_506 : f32 = u_xlat9.y;
      x_499 = x_506;
    }
    let x_507 : f32 = x_499;
    hlslcc_movcTemp.y = x_507;
    let x_510 : bool = u_xlatb10.z;
    if (x_510) {
      let x_515 : f32 = u_xlat8.z;
      x_511 = x_515;
    } else {
      let x_518 : f32 = u_xlat9.z;
      x_511 = x_518;
    }
    let x_519 : f32 = x_511;
    hlslcc_movcTemp.z = x_519;
    let x_521 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_521;
    let x_523 : f32 = u_xlat8.y;
    let x_525 : f32 = u_xlat8.x;
    u_xlat40 = min(x_523, x_525);
    let x_528 : f32 = u_xlat8.z;
    let x_529 : f32 = u_xlat40;
    u_xlat40 = min(x_528, x_529);
    let x_531 : vec3<f32> = vs_TEXCOORD1;
    let x_533 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_536 : vec3<f32> = (x_531 + -(vec3<f32>(x_533.x, x_533.y, x_533.z)));
    let x_537 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat7;
    let x_541 : f32 = u_xlat40;
    let x_544 : vec4<f32> = u_xlat8;
    let x_546 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541, x_541, x_541)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_547 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  } else {
    let x_550 : vec4<f32> = u_xlat4;
    let x_551 : vec3<f32> = vec3<f32>(x_550.x, x_550.y, x_550.z);
    let x_552 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  }
  let x_554 : f32 = u_xlat42;
  u_xlat40 = ((-(x_554) * 0.699999988f) + 1.700000048f);
  let x_560 : f32 = u_xlat40;
  let x_561 : f32 = u_xlat42;
  u_xlat40 = (x_560 * x_561);
  let x_563 : f32 = u_xlat40;
  u_xlat40 = (x_563 * 6.0f);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : f32 = u_xlat40;
  let x_577 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_574.x, x_574.y, x_574.z), x_576);
  u_xlat7 = x_577;
  let x_579 : f32 = u_xlat7.w;
  u_xlat41 = (x_579 + -1.0f);
  let x_584 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_585 : f32 = u_xlat41;
  u_xlat41 = ((x_584 * x_585) + 1.0f);
  let x_588 : f32 = u_xlat41;
  u_xlat41 = log2(x_588);
  let x_590 : f32 = u_xlat41;
  let x_592 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_590 * x_592);
  let x_594 : f32 = u_xlat41;
  u_xlat41 = exp2(x_594);
  let x_596 : f32 = u_xlat41;
  let x_598 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_596 * x_598);
  let x_600 : vec4<f32> = u_xlat7;
  let x_602 : f32 = u_xlat41;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_602, x_602, x_602));
  let x_605 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_609 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb43 = (x_609 < 0.999989986f);
  let x_612 : bool = u_xlatb43;
  if (x_612) {
    let x_617 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb43 = (0.0f < x_617);
    let x_619 : bool = u_xlatb43;
    if (x_619) {
      let x_622 : vec4<f32> = u_xlat4;
      let x_624 : vec4<f32> = u_xlat4;
      u_xlat43 = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
      let x_627 : f32 = u_xlat43;
      u_xlat43 = inverseSqrt(x_627);
      let x_629 : f32 = u_xlat43;
      let x_631 : vec4<f32> = u_xlat4;
      let x_633 : vec3<f32> = (vec3<f32>(x_629, x_629, x_629) * vec3<f32>(x_631.x, x_631.y, x_631.z));
      let x_634 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
      let x_637 : vec3<f32> = vs_TEXCOORD1;
      let x_641 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_637) + vec3<f32>(x_641.x, x_641.y, x_641.z));
      let x_644 : vec3<f32> = u_xlat10;
      let x_645 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_644 / vec3<f32>(x_645.x, x_645.y, x_645.z));
      let x_649 : vec3<f32> = vs_TEXCOORD1;
      let x_653 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_649) + vec3<f32>(x_653.x, x_653.y, x_653.z));
      let x_656 : vec3<f32> = u_xlat11;
      let x_657 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_656 / vec3<f32>(x_657.x, x_657.y, x_657.z));
      let x_661 : vec4<f32> = u_xlat9;
      let x_663 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_661.x, x_661.y, x_661.z, x_661.x));
      u_xlatb12 = vec3<bool>(x_663.x, x_663.y, x_663.z);
      let x_666 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_666;
      let x_668 : bool = u_xlatb12.x;
      if (x_668) {
        let x_673 : f32 = u_xlat10.x;
        x_669 = x_673;
      } else {
        let x_676 : f32 = u_xlat11.x;
        x_669 = x_676;
      }
      let x_677 : f32 = x_669;
      hlslcc_movcTemp_1.x = x_677;
      let x_680 : bool = u_xlatb12.y;
      if (x_680) {
        let x_685 : f32 = u_xlat10.y;
        x_681 = x_685;
      } else {
        let x_688 : f32 = u_xlat11.y;
        x_681 = x_688;
      }
      let x_689 : f32 = x_681;
      hlslcc_movcTemp_1.y = x_689;
      let x_692 : bool = u_xlatb12.z;
      if (x_692) {
        let x_697 : f32 = u_xlat10.z;
        x_693 = x_697;
      } else {
        let x_700 : f32 = u_xlat11.z;
        x_693 = x_700;
      }
      let x_701 : f32 = x_693;
      hlslcc_movcTemp_1.z = x_701;
      let x_703 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_703;
      let x_705 : f32 = u_xlat10.y;
      let x_707 : f32 = u_xlat10.x;
      u_xlat43 = min(x_705, x_707);
      let x_710 : f32 = u_xlat10.z;
      let x_711 : f32 = u_xlat43;
      u_xlat43 = min(x_710, x_711);
      let x_713 : vec3<f32> = vs_TEXCOORD1;
      let x_715 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_713 + -(vec3<f32>(x_715.x, x_715.y, x_715.z)));
      let x_719 : vec4<f32> = u_xlat9;
      let x_721 : f32 = u_xlat43;
      let x_724 : vec3<f32> = u_xlat10;
      let x_725 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721, x_721, x_721)) + x_724);
      let x_726 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    }
    let x_732 : vec4<f32> = u_xlat4;
    let x_734 : f32 = u_xlat40;
    let x_735 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_732.x, x_732.y, x_732.z), x_734);
    u_xlat4 = x_735;
    let x_737 : f32 = u_xlat4.w;
    u_xlat40 = (x_737 + -1.0f);
    let x_741 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_742 : f32 = u_xlat40;
    u_xlat40 = ((x_741 * x_742) + 1.0f);
    let x_745 : f32 = u_xlat40;
    u_xlat40 = log2(x_745);
    let x_747 : f32 = u_xlat40;
    let x_749 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat40 = (x_747 * x_749);
    let x_751 : f32 = u_xlat40;
    u_xlat40 = exp2(x_751);
    let x_753 : f32 = u_xlat40;
    let x_755 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat40 = (x_753 * x_755);
    let x_757 : vec4<f32> = u_xlat4;
    let x_759 : f32 = u_xlat40;
    let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_759, x_759, x_759));
    let x_762 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
    let x_764 : f32 = u_xlat41;
    let x_766 : vec4<f32> = u_xlat7;
    let x_769 : vec4<f32> = u_xlat4;
    let x_772 : vec3<f32> = ((vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z)) + -(vec3<f32>(x_769.x, x_769.y, x_769.z)));
    let x_773 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
    let x_776 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_778 : vec4<f32> = u_xlat7;
    let x_781 : vec4<f32> = u_xlat4;
    let x_783 : vec3<f32> = ((vec3<f32>(x_776.w, x_776.w, x_776.w) * vec3<f32>(x_778.x, x_778.y, x_778.z)) + vec3<f32>(x_781.x, x_781.y, x_781.z));
    let x_784 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  }
  let x_786 : vec3<f32> = vs_TEXCOORD0;
  let x_787 : vec3<f32> = vs_TEXCOORD0;
  u_xlat40 = dot(x_786, x_787);
  let x_789 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_789);
  let x_791 : f32 = u_xlat40;
  let x_793 : vec3<f32> = vs_TEXCOORD0;
  let x_794 : vec3<f32> = (vec3<f32>(x_791, x_791, x_791) * x_793);
  let x_795 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec3<f32> = u_xlat2;
  let x_798 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_797 * vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_806 : f32 = x_18.x_Metallic;
  let x_808 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_806, x_806, x_806) * x_808) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_814 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_814) * 0.959999979f) + 0.959999979f);
  let x_819 : f32 = u_xlat40;
  let x_821 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_819, x_819, x_819) * x_821);
  let x_823 : vec4<f32> = u_xlat0;
  let x_825 : f32 = u_xlat39;
  let x_829 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_831 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(x_825, x_825, x_825)) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat0;
  let x_836 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat39;
  u_xlat39 = max(x_839, 0.001f);
  let x_842 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_842);
  let x_844 : f32 = u_xlat39;
  let x_846 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = (vec3<f32>(x_844, x_844, x_844) * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat4;
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat4;
  let x_859 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_856.x, x_856.y, x_856.z), vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_864 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_864, 0.0f, 1.0f);
  let x_868 : vec4<f32> = u_xlat4;
  let x_870 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(vec3<f32>(x_868.x, x_868.y, x_868.z), vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : f32 = u_xlat14;
  u_xlat14 = clamp(x_873, 0.0f, 1.0f);
  let x_876 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_876.x, x_876.y, x_876.z), vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_883 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_883, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat0.x;
  let x_890 : f32 = u_xlat0.x;
  u_xlat13.x = (x_888 * x_890);
  let x_893 : vec3<f32> = u_xlat13;
  let x_895 : f32 = u_xlat42;
  u_xlat13.x = dot(vec2<f32>(x_893.x, x_893.x), vec2<f32>(x_895, x_895));
  let x_900 : f32 = u_xlat13.x;
  u_xlat13.x = (x_900 + -0.5f);
  let x_906 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_906) + 1.0f);
  let x_910 : f32 = u_xlat26;
  let x_911 : f32 = u_xlat26;
  u_xlat27 = (x_910 * x_911);
  let x_913 : f32 = u_xlat27;
  let x_914 : f32 = u_xlat27;
  u_xlat27 = (x_913 * x_914);
  let x_916 : f32 = u_xlat26;
  let x_917 : f32 = u_xlat27;
  u_xlat26 = (x_916 * x_917);
  let x_920 : f32 = u_xlat13.x;
  let x_921 : f32 = u_xlat26;
  u_xlat26 = ((x_920 * x_921) + 1.0f);
  let x_924 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_924)) + 1.0f);
  let x_928 : f32 = u_xlat27;
  let x_929 : f32 = u_xlat27;
  u_xlat41 = (x_928 * x_929);
  let x_931 : f32 = u_xlat41;
  let x_932 : f32 = u_xlat41;
  u_xlat41 = (x_931 * x_932);
  let x_934 : f32 = u_xlat27;
  let x_935 : f32 = u_xlat41;
  u_xlat27 = (x_934 * x_935);
  let x_938 : f32 = u_xlat13.x;
  let x_939 : f32 = u_xlat27;
  u_xlat13.x = ((x_938 * x_939) + 1.0f);
  let x_944 : f32 = u_xlat13.x;
  let x_945 : f32 = u_xlat26;
  u_xlat13.x = (x_944 * x_945);
  let x_948 : f32 = u_xlat42;
  let x_949 : f32 = u_xlat42;
  u_xlat26 = (x_948 * x_949);
  let x_951 : f32 = u_xlat26;
  u_xlat26 = max(x_951, 0.002f);
  let x_954 : f32 = u_xlat26;
  u_xlat41 = (-(x_954) + 1.0f);
  let x_957 : f32 = u_xlat39;
  let x_959 : f32 = u_xlat41;
  let x_961 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_957) * x_959) + x_961);
  let x_964 : f32 = u_xlat1.x;
  let x_965 : f32 = u_xlat41;
  let x_967 : f32 = u_xlat26;
  u_xlat41 = ((x_964 * x_965) + x_967);
  let x_969 : f32 = u_xlat39;
  let x_971 : f32 = u_xlat41;
  u_xlat39 = (abs(x_969) * x_971);
  let x_974 : f32 = u_xlat1.x;
  let x_975 : f32 = u_xlat42;
  let x_977 : f32 = u_xlat39;
  u_xlat39 = ((x_974 * x_975) + x_977);
  let x_979 : f32 = u_xlat39;
  u_xlat39 = (x_979 + 0.00001f);
  let x_982 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_982);
  let x_984 : f32 = u_xlat26;
  let x_985 : f32 = u_xlat26;
  u_xlat41 = (x_984 * x_985);
  let x_987 : f32 = u_xlat14;
  let x_988 : f32 = u_xlat41;
  let x_990 : f32 = u_xlat14;
  u_xlat42 = ((x_987 * x_988) + -(x_990));
  let x_993 : f32 = u_xlat42;
  let x_994 : f32 = u_xlat14;
  u_xlat14 = ((x_993 * x_994) + 1.0f);
  let x_997 : f32 = u_xlat41;
  u_xlat41 = (x_997 * 0.318309873f);
  let x_1000 : f32 = u_xlat14;
  let x_1001 : f32 = u_xlat14;
  u_xlat14 = ((x_1000 * x_1001) + 0.0000001f);
  let x_1005 : f32 = u_xlat41;
  let x_1006 : f32 = u_xlat14;
  u_xlat14 = (x_1005 / x_1006);
  let x_1008 : f32 = u_xlat39;
  let x_1009 : f32 = u_xlat14;
  u_xlat13.z = (x_1008 * x_1009);
  let x_1012 : vec4<f32> = u_xlat1;
  let x_1014 : vec3<f32> = u_xlat13;
  let x_1016 : vec2<f32> = (vec2<f32>(x_1012.x, x_1012.x) * vec2<f32>(x_1014.x, x_1014.z));
  let x_1017 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1016.x, x_1017.y, x_1016.y);
  let x_1020 : f32 = u_xlat13.z;
  u_xlat39 = (x_1020 * 3.141592741f);
  let x_1023 : f32 = u_xlat39;
  u_xlat39 = max(x_1023, 0.0f);
  let x_1025 : f32 = u_xlat26;
  let x_1026 : f32 = u_xlat26;
  u_xlat26 = ((x_1025 * x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1029);
  let x_1031 : vec3<f32> = u_xlat2;
  let x_1032 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1031, x_1032);
  let x_1037 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1037 == 0.0f));
  let x_1039 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1039);
  let x_1042 : f32 = u_xlat39;
  let x_1044 : f32 = u_xlat1.x;
  u_xlat39 = (x_1042 * x_1044);
  let x_1046 : f32 = u_xlat40;
  let x_1049 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1046) + x_1049);
  let x_1053 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1053 + 1.0f);
  let x_1057 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1057, 0.0f, 1.0f);
  let x_1060 : vec3<f32> = u_xlat5;
  let x_1061 : vec3<f32> = u_xlat13;
  let x_1064 : vec4<f32> = u_xlat6;
  let x_1066 : vec3<f32> = ((x_1060 * vec3<f32>(x_1061.x, x_1061.x, x_1061.x)) + vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec3<f32> = u_xlat5;
  let x_1070 : f32 = u_xlat39;
  u_xlat5 = (x_1069 * vec3<f32>(x_1070, x_1070, x_1070));
  let x_1074 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1074) + 1.0f);
  let x_1079 : f32 = u_xlat0.x;
  let x_1081 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1079 * x_1081);
  let x_1085 : f32 = u_xlat13.x;
  let x_1087 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1085 * x_1087);
  let x_1091 : f32 = u_xlat0.x;
  let x_1093 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1091 * x_1093);
  let x_1096 : vec3<f32> = u_xlat2;
  let x_1099 : vec3<f32> = (-(x_1096) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1100 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat6;
  let x_1104 : vec4<f32> = u_xlat0;
  let x_1107 : vec3<f32> = u_xlat2;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1102.x, x_1102.y, x_1102.z) * vec3<f32>(x_1104.x, x_1104.x, x_1104.x)) + x_1107);
  let x_1109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1108.z);
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1113 : vec3<f32> = u_xlat5;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.w) * x_1113);
  let x_1115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1114.z);
  let x_1117 : vec3<f32> = u_xlat3;
  let x_1118 : vec4<f32> = u_xlat4;
  let x_1121 : vec4<f32> = u_xlat0;
  let x_1123 : vec3<f32> = ((x_1117 * vec3<f32>(x_1118.x, x_1118.y, x_1118.z)) + vec3<f32>(x_1121.x, x_1121.y, x_1121.w));
  let x_1124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1123.z);
  let x_1126 : vec4<f32> = u_xlat8;
  let x_1128 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1126.x, x_1126.y, x_1126.z) * vec3<f32>(x_1128, x_1128, x_1128));
  let x_1131 : vec3<f32> = u_xlat2;
  let x_1133 : vec4<f32> = u_xlat1;
  let x_1135 : vec3<f32> = (-(x_1131) + vec3<f32>(x_1133.x, x_1133.x, x_1133.x));
  let x_1136 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1135.z);
  let x_1138 : f32 = u_xlat27;
  let x_1140 : vec4<f32> = u_xlat1;
  let x_1143 : vec3<f32> = u_xlat2;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1138, x_1138, x_1138) * vec3<f32>(x_1140.x, x_1140.y, x_1140.w)) + x_1143);
  let x_1145 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec3<f32> = u_xlat3;
  let x_1148 : vec4<f32> = u_xlat1;
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1153 : vec3<f32> = ((x_1147 * vec3<f32>(x_1148.x, x_1148.y, x_1148.z)) + vec3<f32>(x_1151.x, x_1151.y, x_1151.w));
  let x_1154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1158 : f32 = vs_TEXCOORD4;
  let x_1160 : f32 = x_18.x_ProjectionParams.y;
  u_xlat39 = (x_1158 / x_1160);
  let x_1162 : f32 = u_xlat39;
  u_xlat39 = (-(x_1162) + 1.0f);
  let x_1165 : f32 = u_xlat39;
  let x_1167 : f32 = x_18.x_ProjectionParams.z;
  u_xlat39 = (x_1165 * x_1167);
  let x_1169 : f32 = u_xlat39;
  u_xlat39 = max(x_1169, 0.0f);
  let x_1171 : f32 = u_xlat39;
  let x_1174 : f32 = x_18.unity_FogParams.x;
  u_xlat39 = (x_1171 * x_1174);
  let x_1176 : f32 = u_xlat39;
  let x_1177 : f32 = u_xlat39;
  u_xlat39 = (x_1176 * -(x_1177));
  let x_1180 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1180);
  let x_1182 : vec4<f32> = u_xlat0;
  let x_1186 : vec4<f32> = x_18.unity_FogColor;
  let x_1189 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) + -(vec3<f32>(x_1186.x, x_1186.y, x_1186.z)));
  let x_1190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1194 : f32 = u_xlat39;
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1200 : vec4<f32> = x_18.unity_FogColor;
  let x_1202 : vec3<f32> = ((vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z)) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(5) vs_TEXCOORD3_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

