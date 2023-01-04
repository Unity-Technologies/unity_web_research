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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat39 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb40 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb43 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_140 : vec3<f32>;
  var x_293 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_489 : f32;
  var x_501 : f32;
  var x_513 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_671 : f32;
  var x_683 : f32;
  var x_695 : f32;
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
      let x_143 : vec4<f32> = u_xlat4;
      x_140 = vec3<f32>(x_143.x, x_143.y, x_143.z);
    } else {
      let x_146 : vec3<f32> = vs_TEXCOORD1;
      x_140 = x_146;
    }
    let x_147 : vec3<f32> = x_140;
    let x_148 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
    let x_150 : vec4<f32> = u_xlat4;
    let x_154 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_156 : vec3<f32> = (vec3<f32>(x_150.x, x_150.y, x_150.z) + -(x_154));
    let x_157 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
    let x_159 : vec4<f32> = u_xlat4;
    let x_163 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_164 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) * x_163);
    let x_165 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_165.x, x_164.x, x_164.y, x_164.z);
    let x_169 : f32 = u_xlat4.y;
    u_xlat41 = ((x_169 * 0.25f) + 0.75f);
    let x_177 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat42 = ((x_177 * 0.5f) + 0.75f);
    let x_181 : f32 = u_xlat41;
    let x_182 : f32 = u_xlat42;
    u_xlat4.x = max(x_181, x_182);
    let x_193 : vec4<f32> = u_xlat4;
    let x_195 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_193.x, x_193.z, x_193.w));
    u_xlat4 = x_195;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_202 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat41 = dot(x_202, x_205);
  let x_207 : f32 = u_xlat41;
  u_xlat41 = clamp(x_207, 0.0f, 1.0f);
  let x_212 : f32 = x_18.x_Glossiness;
  u_xlat42 = (-(x_212) + 1.0f);
  let x_215 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = vs_TEXCOORD0;
  u_xlat4.x = dot(-(vec3<f32>(x_215.x, x_215.y, x_215.z)), x_219);
  let x_223 : f32 = u_xlat4.x;
  let x_225 : f32 = u_xlat4.x;
  u_xlat4.x = (x_223 + x_225);
  let x_228 : vec3<f32> = vs_TEXCOORD0;
  let x_229 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = ((x_228 * -(vec3<f32>(x_229.x, x_229.x, x_229.x))) + -(vec3<f32>(x_233.x, x_233.y, x_233.z)));
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : f32 = u_xlat41;
  let x_244 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : bool = u_xlatb40;
  if (x_247) {
    let x_251 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb40 = (x_251 == 1.0f);
    let x_254 : vec3<f32> = vs_TEXCOORD1;
    let x_257 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_259 : vec3<f32> = (vec3<f32>(x_254.y, x_254.y, x_254.y) * vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_263 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_265 : vec3<f32> = vs_TEXCOORD1;
    let x_268 : vec4<f32> = u_xlat6;
    let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.x, x_265.x, x_265.x)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
    let x_271 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_274 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_276 : vec3<f32> = vs_TEXCOORD1;
    let x_279 : vec4<f32> = u_xlat6;
    let x_281 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.z, x_276.z, x_276.z)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
    let x_282 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat6;
    let x_287 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_292 : bool = u_xlatb40;
    if (x_292) {
      let x_296 : vec4<f32> = u_xlat6;
      x_293 = vec3<f32>(x_296.x, x_296.y, x_296.z);
    } else {
      let x_299 : vec3<f32> = vs_TEXCOORD1;
      x_293 = x_299;
    }
    let x_300 : vec3<f32> = x_293;
    let x_301 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat6;
    let x_306 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_308 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(x_306));
    let x_309 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : vec4<f32> = u_xlat6;
    let x_314 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * x_314);
    let x_316 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_316.x, x_315.x, x_315.y, x_315.z);
    let x_320 : f32 = u_xlat6.y;
    u_xlat40 = (x_320 * 0.25f);
    let x_323 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat41 = (x_323 * 0.5f);
    let x_327 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat43 = ((-(x_327) * 0.5f) + 0.25f);
    let x_331 : f32 = u_xlat40;
    let x_332 : f32 = u_xlat41;
    u_xlat40 = max(x_331, x_332);
    let x_334 : f32 = u_xlat43;
    let x_335 : f32 = u_xlat40;
    u_xlat6.x = min(x_334, x_335);
    let x_342 : vec4<f32> = u_xlat6;
    let x_344 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_342.x, x_342.z, x_342.w));
    u_xlat7 = x_344;
    let x_346 : vec4<f32> = u_xlat6;
    let x_349 : vec3<f32> = (vec3<f32>(x_346.x, x_346.z, x_346.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_350 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_355 : vec4<f32> = u_xlat8;
    let x_357 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_355.x, x_355.y, x_355.z));
    u_xlat8 = x_357;
    let x_358 : vec4<f32> = u_xlat6;
    let x_361 : vec3<f32> = (vec3<f32>(x_358.x, x_358.z, x_358.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_362 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
    let x_367 : vec4<f32> = u_xlat6;
    let x_369 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_367.x, x_367.y, x_367.z));
    u_xlat6 = x_369;
    let x_371 : vec3<f32> = vs_TEXCOORD0;
    let x_372 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    u_xlat9.w = 1.0f;
    let x_375 : vec4<f32> = u_xlat7;
    let x_376 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_375, x_376);
    let x_379 : vec4<f32> = u_xlat8;
    let x_380 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_379, x_380);
    let x_383 : vec4<f32> = u_xlat6;
    let x_384 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_383, x_384);
  } else {
    let x_388 : vec3<f32> = vs_TEXCOORD0;
    let x_389 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    u_xlat6.w = 1.0f;
    let x_393 : vec4<f32> = x_18.unity_SHAr;
    let x_394 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_393, x_394);
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
    let x_485 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_485;
    let x_487 : bool = u_xlatb10.x;
    if (x_487) {
      let x_493 : f32 = u_xlat8.x;
      x_489 = x_493;
    } else {
      let x_496 : f32 = u_xlat9.x;
      x_489 = x_496;
    }
    let x_497 : f32 = x_489;
    hlslcc_movcTemp.x = x_497;
    let x_500 : bool = u_xlatb10.y;
    if (x_500) {
      let x_505 : f32 = u_xlat8.y;
      x_501 = x_505;
    } else {
      let x_508 : f32 = u_xlat9.y;
      x_501 = x_508;
    }
    let x_509 : f32 = x_501;
    hlslcc_movcTemp.y = x_509;
    let x_512 : bool = u_xlatb10.z;
    if (x_512) {
      let x_517 : f32 = u_xlat8.z;
      x_513 = x_517;
    } else {
      let x_520 : f32 = u_xlat9.z;
      x_513 = x_520;
    }
    let x_521 : f32 = x_513;
    hlslcc_movcTemp.z = x_521;
    let x_523 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_523;
    let x_525 : f32 = u_xlat8.y;
    let x_527 : f32 = u_xlat8.x;
    u_xlat40 = min(x_525, x_527);
    let x_530 : f32 = u_xlat8.z;
    let x_531 : f32 = u_xlat40;
    u_xlat40 = min(x_530, x_531);
    let x_533 : vec3<f32> = vs_TEXCOORD1;
    let x_535 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_538 : vec3<f32> = (x_533 + -(vec3<f32>(x_535.x, x_535.y, x_535.z)));
    let x_539 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat7;
    let x_543 : f32 = u_xlat40;
    let x_546 : vec4<f32> = u_xlat8;
    let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(x_543, x_543, x_543)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  } else {
    let x_552 : vec4<f32> = u_xlat4;
    let x_553 : vec3<f32> = vec3<f32>(x_552.x, x_552.y, x_552.z);
    let x_554 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  }
  let x_556 : f32 = u_xlat42;
  u_xlat40 = ((-(x_556) * 0.699999988f) + 1.700000048f);
  let x_562 : f32 = u_xlat40;
  let x_563 : f32 = u_xlat42;
  u_xlat40 = (x_562 * x_563);
  let x_565 : f32 = u_xlat40;
  u_xlat40 = (x_565 * 6.0f);
  let x_576 : vec4<f32> = u_xlat7;
  let x_578 : f32 = u_xlat40;
  let x_579 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_576.x, x_576.y, x_576.z), x_578);
  u_xlat7 = x_579;
  let x_581 : f32 = u_xlat7.w;
  u_xlat41 = (x_581 + -1.0f);
  let x_586 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_587 : f32 = u_xlat41;
  u_xlat41 = ((x_586 * x_587) + 1.0f);
  let x_590 : f32 = u_xlat41;
  u_xlat41 = log2(x_590);
  let x_592 : f32 = u_xlat41;
  let x_594 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_592 * x_594);
  let x_596 : f32 = u_xlat41;
  u_xlat41 = exp2(x_596);
  let x_598 : f32 = u_xlat41;
  let x_600 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_598 * x_600);
  let x_602 : vec4<f32> = u_xlat7;
  let x_604 : f32 = u_xlat41;
  let x_606 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604, x_604, x_604));
  let x_607 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_611 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb43 = (x_611 < 0.999989986f);
  let x_614 : bool = u_xlatb43;
  if (x_614) {
    let x_619 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb43 = (0.0f < x_619);
    let x_621 : bool = u_xlatb43;
    if (x_621) {
      let x_624 : vec4<f32> = u_xlat4;
      let x_626 : vec4<f32> = u_xlat4;
      u_xlat43 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(x_626.x, x_626.y, x_626.z));
      let x_629 : f32 = u_xlat43;
      u_xlat43 = inverseSqrt(x_629);
      let x_631 : f32 = u_xlat43;
      let x_633 : vec4<f32> = u_xlat4;
      let x_635 : vec3<f32> = (vec3<f32>(x_631, x_631, x_631) * vec3<f32>(x_633.x, x_633.y, x_633.z));
      let x_636 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
      let x_639 : vec3<f32> = vs_TEXCOORD1;
      let x_643 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_639) + vec3<f32>(x_643.x, x_643.y, x_643.z));
      let x_646 : vec3<f32> = u_xlat10;
      let x_647 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_646 / vec3<f32>(x_647.x, x_647.y, x_647.z));
      let x_651 : vec3<f32> = vs_TEXCOORD1;
      let x_655 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_651) + vec3<f32>(x_655.x, x_655.y, x_655.z));
      let x_658 : vec3<f32> = u_xlat11;
      let x_659 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_658 / vec3<f32>(x_659.x, x_659.y, x_659.z));
      let x_663 : vec4<f32> = u_xlat9;
      let x_665 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_663.x, x_663.y, x_663.z, x_663.x));
      u_xlatb12 = vec3<bool>(x_665.x, x_665.y, x_665.z);
      let x_668 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_668;
      let x_670 : bool = u_xlatb12.x;
      if (x_670) {
        let x_675 : f32 = u_xlat10.x;
        x_671 = x_675;
      } else {
        let x_678 : f32 = u_xlat11.x;
        x_671 = x_678;
      }
      let x_679 : f32 = x_671;
      hlslcc_movcTemp_1.x = x_679;
      let x_682 : bool = u_xlatb12.y;
      if (x_682) {
        let x_687 : f32 = u_xlat10.y;
        x_683 = x_687;
      } else {
        let x_690 : f32 = u_xlat11.y;
        x_683 = x_690;
      }
      let x_691 : f32 = x_683;
      hlslcc_movcTemp_1.y = x_691;
      let x_694 : bool = u_xlatb12.z;
      if (x_694) {
        let x_699 : f32 = u_xlat10.z;
        x_695 = x_699;
      } else {
        let x_702 : f32 = u_xlat11.z;
        x_695 = x_702;
      }
      let x_703 : f32 = x_695;
      hlslcc_movcTemp_1.z = x_703;
      let x_705 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_705;
      let x_707 : f32 = u_xlat10.y;
      let x_709 : f32 = u_xlat10.x;
      u_xlat43 = min(x_707, x_709);
      let x_712 : f32 = u_xlat10.z;
      let x_713 : f32 = u_xlat43;
      u_xlat43 = min(x_712, x_713);
      let x_715 : vec3<f32> = vs_TEXCOORD1;
      let x_717 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_715 + -(vec3<f32>(x_717.x, x_717.y, x_717.z)));
      let x_721 : vec4<f32> = u_xlat9;
      let x_723 : f32 = u_xlat43;
      let x_726 : vec3<f32> = u_xlat10;
      let x_727 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723, x_723, x_723)) + x_726);
      let x_728 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
    }
    let x_734 : vec4<f32> = u_xlat4;
    let x_736 : f32 = u_xlat40;
    let x_737 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_734.x, x_734.y, x_734.z), x_736);
    u_xlat4 = x_737;
    let x_739 : f32 = u_xlat4.w;
    u_xlat40 = (x_739 + -1.0f);
    let x_743 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_744 : f32 = u_xlat40;
    u_xlat40 = ((x_743 * x_744) + 1.0f);
    let x_747 : f32 = u_xlat40;
    u_xlat40 = log2(x_747);
    let x_749 : f32 = u_xlat40;
    let x_751 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat40 = (x_749 * x_751);
    let x_753 : f32 = u_xlat40;
    u_xlat40 = exp2(x_753);
    let x_755 : f32 = u_xlat40;
    let x_757 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat40 = (x_755 * x_757);
    let x_759 : vec4<f32> = u_xlat4;
    let x_761 : f32 = u_xlat40;
    let x_763 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(x_761, x_761, x_761));
    let x_764 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
    let x_766 : f32 = u_xlat41;
    let x_768 : vec4<f32> = u_xlat7;
    let x_771 : vec4<f32> = u_xlat4;
    let x_774 : vec3<f32> = ((vec3<f32>(x_766, x_766, x_766) * vec3<f32>(x_768.x, x_768.y, x_768.z)) + -(vec3<f32>(x_771.x, x_771.y, x_771.z)));
    let x_775 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
    let x_778 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_780 : vec4<f32> = u_xlat7;
    let x_783 : vec4<f32> = u_xlat4;
    let x_785 : vec3<f32> = ((vec3<f32>(x_778.w, x_778.w, x_778.w) * vec3<f32>(x_780.x, x_780.y, x_780.z)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
    let x_786 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  }
  let x_788 : vec3<f32> = vs_TEXCOORD0;
  let x_789 : vec3<f32> = vs_TEXCOORD0;
  u_xlat40 = dot(x_788, x_789);
  let x_791 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_791);
  let x_793 : f32 = u_xlat40;
  let x_795 : vec3<f32> = vs_TEXCOORD0;
  let x_796 : vec3<f32> = (vec3<f32>(x_793, x_793, x_793) * x_795);
  let x_797 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec3<f32> = u_xlat2;
  let x_800 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_799 * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_808 : f32 = x_18.x_Metallic;
  let x_810 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_808, x_808, x_808) * x_810) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_816 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_816) * 0.959999979f) + 0.959999979f);
  let x_821 : f32 = u_xlat40;
  let x_823 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_821, x_821, x_821) * x_823);
  let x_825 : vec4<f32> = u_xlat0;
  let x_827 : f32 = u_xlat39;
  let x_831 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_833 : vec3<f32> = ((vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(x_827, x_827, x_827)) + vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_836.x, x_836.y, x_836.z), vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : f32 = u_xlat39;
  u_xlat39 = max(x_841, 0.001f);
  let x_844 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_844);
  let x_846 : f32 = u_xlat39;
  let x_848 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = (vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat4;
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_853.x, x_853.y, x_853.z), vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat4;
  let x_861 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_858.x, x_858.y, x_858.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_866 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_866, 0.0f, 1.0f);
  let x_870 : vec4<f32> = u_xlat4;
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(vec3<f32>(x_870.x, x_870.y, x_870.z), vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : f32 = u_xlat14;
  u_xlat14 = clamp(x_875, 0.0f, 1.0f);
  let x_878 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_880 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_885 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_885, 0.0f, 1.0f);
  let x_890 : f32 = u_xlat0.x;
  let x_892 : f32 = u_xlat0.x;
  u_xlat13.x = (x_890 * x_892);
  let x_895 : vec3<f32> = u_xlat13;
  let x_897 : f32 = u_xlat42;
  u_xlat13.x = dot(vec2<f32>(x_895.x, x_895.x), vec2<f32>(x_897, x_897));
  let x_902 : f32 = u_xlat13.x;
  u_xlat13.x = (x_902 + -0.5f);
  let x_908 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_908) + 1.0f);
  let x_912 : f32 = u_xlat26;
  let x_913 : f32 = u_xlat26;
  u_xlat27 = (x_912 * x_913);
  let x_915 : f32 = u_xlat27;
  let x_916 : f32 = u_xlat27;
  u_xlat27 = (x_915 * x_916);
  let x_918 : f32 = u_xlat26;
  let x_919 : f32 = u_xlat27;
  u_xlat26 = (x_918 * x_919);
  let x_922 : f32 = u_xlat13.x;
  let x_923 : f32 = u_xlat26;
  u_xlat26 = ((x_922 * x_923) + 1.0f);
  let x_926 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_926)) + 1.0f);
  let x_930 : f32 = u_xlat27;
  let x_931 : f32 = u_xlat27;
  u_xlat41 = (x_930 * x_931);
  let x_933 : f32 = u_xlat41;
  let x_934 : f32 = u_xlat41;
  u_xlat41 = (x_933 * x_934);
  let x_936 : f32 = u_xlat27;
  let x_937 : f32 = u_xlat41;
  u_xlat27 = (x_936 * x_937);
  let x_940 : f32 = u_xlat13.x;
  let x_941 : f32 = u_xlat27;
  u_xlat13.x = ((x_940 * x_941) + 1.0f);
  let x_946 : f32 = u_xlat13.x;
  let x_947 : f32 = u_xlat26;
  u_xlat13.x = (x_946 * x_947);
  let x_950 : f32 = u_xlat42;
  let x_951 : f32 = u_xlat42;
  u_xlat26 = (x_950 * x_951);
  let x_953 : f32 = u_xlat26;
  u_xlat26 = max(x_953, 0.002f);
  let x_956 : f32 = u_xlat26;
  u_xlat41 = (-(x_956) + 1.0f);
  let x_959 : f32 = u_xlat39;
  let x_961 : f32 = u_xlat41;
  let x_963 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_959) * x_961) + x_963);
  let x_966 : f32 = u_xlat1.x;
  let x_967 : f32 = u_xlat41;
  let x_969 : f32 = u_xlat26;
  u_xlat41 = ((x_966 * x_967) + x_969);
  let x_971 : f32 = u_xlat39;
  let x_973 : f32 = u_xlat41;
  u_xlat39 = (abs(x_971) * x_973);
  let x_976 : f32 = u_xlat1.x;
  let x_977 : f32 = u_xlat42;
  let x_979 : f32 = u_xlat39;
  u_xlat39 = ((x_976 * x_977) + x_979);
  let x_981 : f32 = u_xlat39;
  u_xlat39 = (x_981 + 0.00001f);
  let x_984 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_984);
  let x_986 : f32 = u_xlat26;
  let x_987 : f32 = u_xlat26;
  u_xlat41 = (x_986 * x_987);
  let x_989 : f32 = u_xlat14;
  let x_990 : f32 = u_xlat41;
  let x_992 : f32 = u_xlat14;
  u_xlat42 = ((x_989 * x_990) + -(x_992));
  let x_995 : f32 = u_xlat42;
  let x_996 : f32 = u_xlat14;
  u_xlat14 = ((x_995 * x_996) + 1.0f);
  let x_999 : f32 = u_xlat41;
  u_xlat41 = (x_999 * 0.318309873f);
  let x_1002 : f32 = u_xlat14;
  let x_1003 : f32 = u_xlat14;
  u_xlat14 = ((x_1002 * x_1003) + 0.0000001f);
  let x_1007 : f32 = u_xlat41;
  let x_1008 : f32 = u_xlat14;
  u_xlat14 = (x_1007 / x_1008);
  let x_1010 : f32 = u_xlat39;
  let x_1011 : f32 = u_xlat14;
  u_xlat13.z = (x_1010 * x_1011);
  let x_1014 : vec4<f32> = u_xlat1;
  let x_1016 : vec3<f32> = u_xlat13;
  let x_1018 : vec2<f32> = (vec2<f32>(x_1014.x, x_1014.x) * vec2<f32>(x_1016.x, x_1016.z));
  let x_1019 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1018.x, x_1019.y, x_1018.y);
  let x_1022 : f32 = u_xlat13.z;
  u_xlat39 = (x_1022 * 3.141592741f);
  let x_1025 : f32 = u_xlat39;
  u_xlat39 = max(x_1025, 0.0f);
  let x_1027 : f32 = u_xlat26;
  let x_1028 : f32 = u_xlat26;
  u_xlat26 = ((x_1027 * x_1028) + 1.0f);
  let x_1031 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1031);
  let x_1033 : vec3<f32> = u_xlat2;
  let x_1034 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1033, x_1034);
  let x_1039 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1039 == 0.0f));
  let x_1041 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1041);
  let x_1044 : f32 = u_xlat39;
  let x_1046 : f32 = u_xlat1.x;
  u_xlat39 = (x_1044 * x_1046);
  let x_1048 : f32 = u_xlat40;
  let x_1051 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1048) + x_1051);
  let x_1055 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1055 + 1.0f);
  let x_1059 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1059, 0.0f, 1.0f);
  let x_1062 : vec3<f32> = u_xlat5;
  let x_1063 : vec3<f32> = u_xlat13;
  let x_1066 : vec4<f32> = u_xlat6;
  let x_1068 : vec3<f32> = ((x_1062 * vec3<f32>(x_1063.x, x_1063.x, x_1063.x)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec3<f32> = u_xlat5;
  let x_1072 : f32 = u_xlat39;
  u_xlat5 = (x_1071 * vec3<f32>(x_1072, x_1072, x_1072));
  let x_1076 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1076) + 1.0f);
  let x_1081 : f32 = u_xlat0.x;
  let x_1083 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1081 * x_1083);
  let x_1087 : f32 = u_xlat13.x;
  let x_1089 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1087 * x_1089);
  let x_1093 : f32 = u_xlat0.x;
  let x_1095 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1093 * x_1095);
  let x_1098 : vec3<f32> = u_xlat2;
  let x_1101 : vec3<f32> = (-(x_1098) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1102 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1106 : vec4<f32> = u_xlat0;
  let x_1109 : vec3<f32> = u_xlat2;
  let x_1110 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1106.x, x_1106.x, x_1106.x)) + x_1109);
  let x_1111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1110.z);
  let x_1113 : vec4<f32> = u_xlat0;
  let x_1115 : vec3<f32> = u_xlat5;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1113.x, x_1113.y, x_1113.w) * x_1115);
  let x_1117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1116.z);
  let x_1119 : vec3<f32> = u_xlat3;
  let x_1120 : vec4<f32> = u_xlat4;
  let x_1123 : vec4<f32> = u_xlat0;
  let x_1125 : vec3<f32> = ((x_1119 * vec3<f32>(x_1120.x, x_1120.y, x_1120.z)) + vec3<f32>(x_1123.x, x_1123.y, x_1123.w));
  let x_1126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1125.z);
  let x_1128 : vec4<f32> = u_xlat8;
  let x_1130 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1128.x, x_1128.y, x_1128.z) * vec3<f32>(x_1130, x_1130, x_1130));
  let x_1133 : vec3<f32> = u_xlat2;
  let x_1135 : vec4<f32> = u_xlat1;
  let x_1137 : vec3<f32> = (-(x_1133) + vec3<f32>(x_1135.x, x_1135.x, x_1135.x));
  let x_1138 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1137.z);
  let x_1140 : f32 = u_xlat27;
  let x_1142 : vec4<f32> = u_xlat1;
  let x_1145 : vec3<f32> = u_xlat2;
  let x_1146 : vec3<f32> = ((vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1142.x, x_1142.y, x_1142.w)) + x_1145);
  let x_1147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1151 : vec3<f32> = u_xlat3;
  let x_1152 : vec4<f32> = u_xlat1;
  let x_1155 : vec4<f32> = u_xlat0;
  let x_1157 : vec3<f32> = ((x_1151 * vec3<f32>(x_1152.x, x_1152.y, x_1152.z)) + vec3<f32>(x_1155.x, x_1155.y, x_1155.w));
  let x_1158 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}
