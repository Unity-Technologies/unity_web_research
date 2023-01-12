struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb41 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var x_251 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_446 : f32;
  var x_458 : f32;
  var x_470 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_631 : f32;
  var x_643 : f32;
  var x_655 : f32;
  var u_xlat28 : f32;
  var u_xlat16 : f32;
  var u_xlat29 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat39 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat39;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_92 : f32 = u_xlat2.z;
  let x_95 : f32 = u_xlat2.x;
  u_xlat2.x = (x_92 * x_95);
  let x_98 : vec3<f32> = u_xlat2;
  let x_105 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_105.x, x_105.y, x_106.z);
  let x_108 : vec3<f32> = u_xlat2;
  let x_112 : f32 = x_33.x_BumpScale;
  let x_114 : vec2<f32> = (vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112, x_112));
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_114.x, x_114.y, x_115.z);
  let x_118 : vec3<f32> = u_xlat2;
  let x_120 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_123 : f32 = u_xlat40;
  u_xlat40 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat40;
  u_xlat40 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat40;
  u_xlat40 = sqrt(x_129);
  let x_132 : vec3<f32> = u_xlat2;
  let x_135 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = vs_TEXCOORD2;
  let x_141 : vec3<f32> = u_xlat2;
  let x_144 : vec3<f32> = u_xlat15;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = vs_TEXCOORD4;
  let x_149 : f32 = u_xlat40;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149, x_149, x_149)) + x_152);
  let x_154 : vec3<f32> = u_xlat2;
  let x_155 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(x_154, x_155);
  let x_157 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_157);
  let x_159 : f32 = u_xlat40;
  let x_161 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_159, x_159, x_159) * x_161);
  let x_164 : vec4<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_169);
  let x_173 : f32 = u_xlat40;
  let x_175 : vec4<f32> = vs_TEXCOORD1;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_185 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_185 == 1.0f);
  let x_187 : bool = u_xlatb41;
  if (x_187) {
    let x_192 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_192 == 1.0f);
    let x_195 : vec4<f32> = vs_TEXCOORD3;
    let x_200 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_202 : vec3<f32> = (vec3<f32>(x_195.w, x_195.w, x_195.w) * vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_207 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_209 : vec4<f32> = vs_TEXCOORD2;
    let x_212 : vec4<f32> = u_xlat4;
    let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.w, x_209.w, x_209.w)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_219 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_221 : vec4<f32> = vs_TEXCOORD4;
    let x_224 : vec4<f32> = u_xlat4;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat4;
    let x_233 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_235 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_242 : f32 = vs_TEXCOORD2.w;
    u_xlat18.x = x_242;
    let x_245 : f32 = vs_TEXCOORD3.w;
    u_xlat18.y = x_245;
    let x_248 : f32 = vs_TEXCOORD4.w;
    u_xlat18.z = x_248;
    let x_250 : bool = u_xlatb41;
    if (x_250) {
      let x_254 : vec4<f32> = u_xlat4;
      x_251 = vec3<f32>(x_254.x, x_254.y, x_254.z);
    } else {
      let x_257 : vec3<f32> = u_xlat18;
      x_251 = x_257;
    }
    let x_258 : vec3<f32> = x_251;
    let x_259 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat4;
    let x_266 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_268 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + -(x_266));
    let x_269 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat4;
    let x_275 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * x_275);
    let x_277 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
    let x_281 : f32 = u_xlat4.y;
    u_xlat41 = ((x_281 * 0.25f) + 0.75f);
    let x_288 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat42 = ((x_288 * 0.5f) + 0.75f);
    let x_292 : f32 = u_xlat41;
    let x_293 : f32 = u_xlat42;
    u_xlat4.x = max(x_292, x_293);
    let x_304 : vec4<f32> = u_xlat4;
    let x_306 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_304.x, x_304.z, x_304.w));
    u_xlat4 = x_306;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat41 = dot(x_312, x_314);
  let x_316 : f32 = u_xlat41;
  u_xlat41 = clamp(x_316, 0.0f, 1.0f);
  let x_324 : vec4<f32> = vs_TEXCOORD0;
  let x_326 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_324.x, x_324.y));
  u_xlat42 = x_326.y;
  let x_330 : f32 = x_33.x_OcclusionStrength;
  u_xlat4.x = (-(x_330) + 1.0f);
  let x_334 : f32 = u_xlat42;
  let x_336 : f32 = x_33.x_OcclusionStrength;
  let x_339 : f32 = u_xlat4.x;
  u_xlat42 = ((x_334 * x_336) + x_339);
  let x_343 : f32 = x_33.x_Glossiness;
  u_xlat4.x = (-(x_343) + 1.0f);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), x_350);
  let x_354 : f32 = u_xlat17.x;
  let x_356 : f32 = u_xlat17.x;
  u_xlat17.x = (x_354 + x_356);
  let x_359 : vec3<f32> = u_xlat2;
  let x_360 : vec3<f32> = u_xlat17;
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat17 = ((x_359 * -(vec3<f32>(x_360.x, x_360.x, x_360.x))) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : f32 = u_xlat41;
  let x_372 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_377 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_377);
  let x_379 : bool = u_xlatb41;
  if (x_379) {
    let x_382 : vec3<f32> = u_xlat17;
    let x_383 : vec3<f32> = u_xlat17;
    u_xlat41 = dot(x_382, x_383);
    let x_385 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_385);
    let x_388 : f32 = u_xlat41;
    let x_390 : vec3<f32> = u_xlat17;
    let x_391 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * x_390);
    let x_392 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_396 : f32 = vs_TEXCOORD2.w;
    u_xlat7.x = x_396;
    let x_399 : f32 = vs_TEXCOORD3.w;
    u_xlat7.y = x_399;
    let x_402 : f32 = vs_TEXCOORD4.w;
    u_xlat7.z = x_402;
    let x_405 : vec3<f32> = u_xlat7;
    let x_409 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_411 : vec3<f32> = (-(x_405) + vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_412 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_414 : vec4<f32> = u_xlat8;
    let x_416 : vec4<f32> = u_xlat6;
    let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) / vec3<f32>(x_416.x, x_416.y, x_416.z));
    let x_419 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_422 : vec3<f32> = u_xlat7;
    let x_426 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_422) + vec3<f32>(x_426.x, x_426.y, x_426.z));
    let x_429 : vec3<f32> = u_xlat9;
    let x_430 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_429 / vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_437 : vec4<f32> = u_xlat6;
    let x_440 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_437.x, x_437.y, x_437.z, x_437.x));
    u_xlatb10 = vec3<bool>(x_440.x, x_440.y, x_440.z);
    let x_443 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_443;
    let x_445 : bool = u_xlatb10.x;
    if (x_445) {
      let x_450 : f32 = u_xlat8.x;
      x_446 = x_450;
    } else {
      let x_453 : f32 = u_xlat9.x;
      x_446 = x_453;
    }
    let x_454 : f32 = x_446;
    hlslcc_movcTemp.x = x_454;
    let x_457 : bool = u_xlatb10.y;
    if (x_457) {
      let x_462 : f32 = u_xlat8.y;
      x_458 = x_462;
    } else {
      let x_465 : f32 = u_xlat9.y;
      x_458 = x_465;
    }
    let x_466 : f32 = x_458;
    hlslcc_movcTemp.y = x_466;
    let x_469 : bool = u_xlatb10.z;
    if (x_469) {
      let x_474 : f32 = u_xlat8.z;
      x_470 = x_474;
    } else {
      let x_477 : f32 = u_xlat9.z;
      x_470 = x_477;
    }
    let x_478 : f32 = x_470;
    hlslcc_movcTemp.z = x_478;
    let x_480 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_480;
    let x_482 : f32 = u_xlat8.y;
    let x_484 : f32 = u_xlat8.x;
    u_xlat41 = min(x_482, x_484);
    let x_487 : f32 = u_xlat8.z;
    let x_488 : f32 = u_xlat41;
    u_xlat41 = min(x_487, x_488);
    let x_490 : vec3<f32> = u_xlat7;
    let x_492 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_490 + -(vec3<f32>(x_492.x, x_492.y, x_492.z)));
    let x_496 : vec4<f32> = u_xlat6;
    let x_498 : f32 = u_xlat41;
    let x_501 : vec3<f32> = u_xlat7;
    let x_502 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498, x_498, x_498)) + x_501);
    let x_503 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  } else {
    let x_506 : vec3<f32> = u_xlat17;
    let x_507 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  }
  let x_510 : f32 = u_xlat4.x;
  u_xlat41 = ((-(x_510) * 0.699999988f) + 1.700000048f);
  let x_516 : f32 = u_xlat41;
  let x_518 : f32 = u_xlat4.x;
  u_xlat41 = (x_516 * x_518);
  let x_520 : f32 = u_xlat41;
  u_xlat41 = (x_520 * 6.0f);
  let x_531 : vec4<f32> = u_xlat6;
  let x_533 : f32 = u_xlat41;
  let x_534 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_531.x, x_531.y, x_531.z), x_533);
  u_xlat6 = x_534;
  let x_537 : f32 = u_xlat6.w;
  u_xlat44 = (x_537 + -1.0f);
  let x_541 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_542 : f32 = u_xlat44;
  u_xlat44 = ((x_541 * x_542) + 1.0f);
  let x_545 : f32 = u_xlat44;
  u_xlat44 = log2(x_545);
  let x_547 : f32 = u_xlat44;
  let x_549 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_547 * x_549);
  let x_551 : f32 = u_xlat44;
  u_xlat44 = exp2(x_551);
  let x_553 : f32 = u_xlat44;
  let x_555 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_553 * x_555);
  let x_557 : vec4<f32> = u_xlat6;
  let x_559 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_559, x_559, x_559));
  let x_564 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_564 < 0.999989986f);
  let x_567 : bool = u_xlatb45;
  if (x_567) {
    let x_572 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_572);
    let x_574 : bool = u_xlatb45;
    if (x_574) {
      let x_578 : vec3<f32> = u_xlat17;
      let x_579 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_578, x_579);
      let x_581 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_581);
      let x_583 : vec3<f32> = u_xlat17;
      let x_584 : f32 = u_xlat45;
      let x_586 : vec3<f32> = (x_583 * vec3<f32>(x_584, x_584, x_584));
      let x_587 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
      let x_590 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_590;
      let x_593 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_593;
      let x_596 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_596;
      let x_599 : vec3<f32> = u_xlat9;
      let x_603 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_599) + vec3<f32>(x_603.x, x_603.y, x_603.z));
      let x_606 : vec3<f32> = u_xlat10;
      let x_607 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_606 / vec3<f32>(x_607.x, x_607.y, x_607.z));
      let x_611 : vec3<f32> = u_xlat9;
      let x_615 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_611) + vec3<f32>(x_615.x, x_615.y, x_615.z));
      let x_618 : vec3<f32> = u_xlat11;
      let x_619 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_618 / vec3<f32>(x_619.x, x_619.y, x_619.z));
      let x_623 : vec4<f32> = u_xlat8;
      let x_625 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_623.x, x_623.y, x_623.z, x_623.x));
      u_xlatb12 = vec3<bool>(x_625.x, x_625.y, x_625.z);
      let x_628 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_628;
      let x_630 : bool = u_xlatb12.x;
      if (x_630) {
        let x_635 : f32 = u_xlat10.x;
        x_631 = x_635;
      } else {
        let x_638 : f32 = u_xlat11.x;
        x_631 = x_638;
      }
      let x_639 : f32 = x_631;
      hlslcc_movcTemp_1.x = x_639;
      let x_642 : bool = u_xlatb12.y;
      if (x_642) {
        let x_647 : f32 = u_xlat10.y;
        x_643 = x_647;
      } else {
        let x_650 : f32 = u_xlat11.y;
        x_643 = x_650;
      }
      let x_651 : f32 = x_643;
      hlslcc_movcTemp_1.y = x_651;
      let x_654 : bool = u_xlatb12.z;
      if (x_654) {
        let x_659 : f32 = u_xlat10.z;
        x_655 = x_659;
      } else {
        let x_662 : f32 = u_xlat11.z;
        x_655 = x_662;
      }
      let x_663 : f32 = x_655;
      hlslcc_movcTemp_1.z = x_663;
      let x_665 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_665;
      let x_667 : f32 = u_xlat10.y;
      let x_669 : f32 = u_xlat10.x;
      u_xlat45 = min(x_667, x_669);
      let x_672 : f32 = u_xlat10.z;
      let x_673 : f32 = u_xlat45;
      u_xlat45 = min(x_672, x_673);
      let x_675 : vec3<f32> = u_xlat9;
      let x_677 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_675 + -(vec3<f32>(x_677.x, x_677.y, x_677.z)));
      let x_681 : vec4<f32> = u_xlat8;
      let x_683 : f32 = u_xlat45;
      let x_686 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683, x_683, x_683)) + x_686);
    }
    let x_692 : vec3<f32> = u_xlat17;
    let x_693 : f32 = u_xlat41;
    let x_694 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_692, x_693);
    u_xlat8 = x_694;
    let x_696 : f32 = u_xlat8.w;
    u_xlat41 = (x_696 + -1.0f);
    let x_700 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_701 : f32 = u_xlat41;
    u_xlat41 = ((x_700 * x_701) + 1.0f);
    let x_704 : f32 = u_xlat41;
    u_xlat41 = log2(x_704);
    let x_706 : f32 = u_xlat41;
    let x_708 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_706 * x_708);
    let x_710 : f32 = u_xlat41;
    u_xlat41 = exp2(x_710);
    let x_712 : f32 = u_xlat41;
    let x_714 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_712 * x_714);
    let x_716 : vec4<f32> = u_xlat8;
    let x_718 : f32 = u_xlat41;
    u_xlat17 = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718, x_718, x_718));
    let x_721 : f32 = u_xlat44;
    let x_723 : vec4<f32> = u_xlat6;
    let x_726 : vec3<f32> = u_xlat17;
    let x_728 : vec3<f32> = ((vec3<f32>(x_721, x_721, x_721) * vec3<f32>(x_723.x, x_723.y, x_723.z)) + -(x_726));
    let x_729 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
    let x_732 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_734 : vec4<f32> = u_xlat6;
    let x_737 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_732.w, x_732.w, x_732.w) * vec3<f32>(x_734.x, x_734.y, x_734.z)) + x_737);
  }
  let x_739 : f32 = u_xlat42;
  let x_741 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_739, x_739, x_739) * x_741);
  let x_743 : vec4<f32> = vs_TEXCOORD1;
  let x_746 : f32 = u_xlat40;
  let x_750 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_752 : vec3<f32> = ((-(vec3<f32>(x_743.x, x_743.y, x_743.z)) * vec3<f32>(x_746, x_746, x_746)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat6;
  let x_757 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_755.x, x_755.y, x_755.z), vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : f32 = u_xlat40;
  u_xlat40 = max(x_760, 0.001f);
  let x_763 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_763);
  let x_765 : f32 = u_xlat40;
  let x_767 : vec4<f32> = u_xlat6;
  let x_769 : vec3<f32> = (vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec3<f32> = u_xlat2;
  let x_773 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_772, -(vec3<f32>(x_773.x, x_773.y, x_773.z)));
  let x_777 : vec3<f32> = u_xlat2;
  let x_779 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_777, vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : f32 = u_xlat41;
  u_xlat41 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : vec3<f32> = u_xlat2;
  let x_785 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_784, vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_790 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_790, 0.0f, 1.0f);
  let x_794 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_794.x, x_794.y, x_794.z), vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_801 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_801, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat15.x;
  let x_808 : f32 = u_xlat15.x;
  u_xlat28 = (x_806 * x_808);
  let x_810 : f32 = u_xlat28;
  let x_812 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_810, x_810), vec2<f32>(x_812.x, x_812.x));
  let x_815 : f32 = u_xlat28;
  u_xlat28 = (x_815 + -0.5f);
  let x_818 : f32 = u_xlat41;
  u_xlat3.x = (-(x_818) + 1.0f);
  let x_824 : f32 = u_xlat3.x;
  let x_826 : f32 = u_xlat3.x;
  u_xlat16 = (x_824 * x_826);
  let x_828 : f32 = u_xlat16;
  let x_829 : f32 = u_xlat16;
  u_xlat16 = (x_828 * x_829);
  let x_832 : f32 = u_xlat3.x;
  let x_833 : f32 = u_xlat16;
  u_xlat3.x = (x_832 * x_833);
  let x_836 : f32 = u_xlat28;
  let x_838 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_836 * x_838) + 1.0f);
  let x_842 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_842)) + 1.0f);
  let x_847 : f32 = u_xlat16;
  let x_848 : f32 = u_xlat16;
  u_xlat29 = (x_847 * x_848);
  let x_850 : f32 = u_xlat29;
  let x_851 : f32 = u_xlat29;
  u_xlat29 = (x_850 * x_851);
  let x_853 : f32 = u_xlat16;
  let x_854 : f32 = u_xlat29;
  u_xlat16 = (x_853 * x_854);
  let x_856 : f32 = u_xlat28;
  let x_857 : f32 = u_xlat16;
  u_xlat28 = ((x_856 * x_857) + 1.0f);
  let x_860 : f32 = u_xlat28;
  let x_862 : f32 = u_xlat3.x;
  u_xlat28 = (x_860 * x_862);
  let x_864 : f32 = u_xlat41;
  let x_865 : f32 = u_xlat28;
  u_xlat28 = (x_864 * x_865);
  let x_868 : f32 = u_xlat4.x;
  let x_870 : f32 = u_xlat4.x;
  u_xlat3.x = (x_868 * x_870);
  let x_874 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_874, 0.002f);
  let x_879 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_879) + 1.0f);
  let x_882 : f32 = u_xlat40;
  let x_884 : f32 = u_xlat29;
  let x_887 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_882) * x_884) + x_887);
  let x_889 : f32 = u_xlat41;
  let x_890 : f32 = u_xlat29;
  let x_893 : f32 = u_xlat3.x;
  u_xlat29 = ((x_889 * x_890) + x_893);
  let x_895 : f32 = u_xlat40;
  let x_897 : f32 = u_xlat29;
  u_xlat40 = (abs(x_895) * x_897);
  let x_899 : f32 = u_xlat41;
  let x_900 : f32 = u_xlat42;
  let x_902 : f32 = u_xlat40;
  u_xlat40 = ((x_899 * x_900) + x_902);
  let x_904 : f32 = u_xlat40;
  u_xlat40 = (x_904 + 0.00001f);
  let x_907 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_907);
  let x_910 : f32 = u_xlat3.x;
  let x_912 : f32 = u_xlat3.x;
  u_xlat29 = (x_910 * x_912);
  let x_915 : f32 = u_xlat2.x;
  let x_916 : f32 = u_xlat29;
  let x_919 : f32 = u_xlat2.x;
  u_xlat42 = ((x_915 * x_916) + -(x_919));
  let x_922 : f32 = u_xlat42;
  let x_924 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_922 * x_924) + 1.0f);
  let x_928 : f32 = u_xlat29;
  u_xlat29 = (x_928 * 0.318309873f);
  let x_932 : f32 = u_xlat2.x;
  let x_934 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_932 * x_934) + 0.0000001f);
  let x_939 : f32 = u_xlat29;
  let x_941 : f32 = u_xlat2.x;
  u_xlat2.x = (x_939 / x_941);
  let x_944 : f32 = u_xlat40;
  let x_946 : f32 = u_xlat2.x;
  u_xlat40 = (x_944 * x_946);
  let x_948 : f32 = u_xlat41;
  let x_949 : f32 = u_xlat40;
  u_xlat40 = (x_948 * x_949);
  let x_951 : f32 = u_xlat40;
  u_xlat40 = (x_951 * 3.141592741f);
  let x_954 : f32 = u_xlat40;
  u_xlat40 = max(x_954, 0.0f);
  let x_957 : f32 = u_xlat3.x;
  let x_959 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_957 * x_959) + 1.0f);
  let x_964 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_964);
  let x_967 : vec3<f32> = u_xlat0;
  let x_968 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_967, x_968);
  let x_970 : f32 = u_xlat41;
  u_xlatb41 = !((x_970 == 0.0f));
  let x_972 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_972);
  let x_974 : f32 = u_xlat40;
  let x_975 : f32 = u_xlat41;
  u_xlat40 = (x_974 * x_975);
  let x_977 : f32 = u_xlat39;
  let x_980 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_977) + x_980);
  let x_982 : f32 = u_xlat39;
  u_xlat39 = (x_982 + 1.0f);
  let x_984 : f32 = u_xlat39;
  u_xlat39 = clamp(x_984, 0.0f, 1.0f);
  let x_986 : f32 = u_xlat28;
  let x_988 : vec3<f32> = u_xlat5;
  let x_989 : vec3<f32> = (vec3<f32>(x_986, x_986, x_986) * x_988);
  let x_990 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_989.x, x_990.y, x_989.y, x_989.z);
  let x_992 : vec3<f32> = u_xlat5;
  let x_993 : f32 = u_xlat40;
  u_xlat5 = (x_992 * vec3<f32>(x_993, x_993, x_993));
  let x_997 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_997) + 1.0f);
  let x_1000 : f32 = u_xlat40;
  let x_1001 : f32 = u_xlat40;
  u_xlat15.x = (x_1000 * x_1001);
  let x_1005 : f32 = u_xlat15.x;
  let x_1007 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1005 * x_1007);
  let x_1010 : f32 = u_xlat40;
  let x_1012 : f32 = u_xlat15.x;
  u_xlat40 = (x_1010 * x_1012);
  let x_1014 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1014) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1018 : vec3<f32> = u_xlat15;
  let x_1019 : f32 = u_xlat40;
  let x_1022 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1018 * vec3<f32>(x_1019, x_1019, x_1019)) + x_1022);
  let x_1024 : vec3<f32> = u_xlat15;
  let x_1025 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_1024 * x_1025);
  let x_1027 : vec3<f32> = u_xlat1;
  let x_1028 : vec4<f32> = u_xlat3;
  let x_1031 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1027 * vec3<f32>(x_1028.x, x_1028.z, x_1028.w)) + x_1031);
  let x_1033 : vec3<f32> = u_xlat17;
  let x_1034 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1033 * vec3<f32>(x_1034.x, x_1034.x, x_1034.x));
  let x_1037 : vec3<f32> = u_xlat0;
  let x_1039 : f32 = u_xlat39;
  let x_1041 : vec3<f32> = (-(x_1037) + vec3<f32>(x_1039, x_1039, x_1039));
  let x_1042 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1041.x, x_1042.y, x_1041.y, x_1041.z);
  let x_1044 : f32 = u_xlat16;
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1049 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1044, x_1044, x_1044) * vec3<f32>(x_1046.x, x_1046.z, x_1046.w)) + x_1049);
  let x_1051 : vec3<f32> = u_xlat2;
  let x_1052 : vec3<f32> = u_xlat0;
  let x_1054 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_1051 * x_1052) + x_1054);
  let x_1057 : f32 = vs_TEXCOORD1.w;
  let x_1059 : f32 = x_33.x_ProjectionParams.y;
  u_xlat39 = (x_1057 / x_1059);
  let x_1061 : f32 = u_xlat39;
  u_xlat39 = (-(x_1061) + 1.0f);
  let x_1064 : f32 = u_xlat39;
  let x_1066 : f32 = x_33.x_ProjectionParams.z;
  u_xlat39 = (x_1064 * x_1066);
  let x_1068 : f32 = u_xlat39;
  u_xlat39 = max(x_1068, 0.0f);
  let x_1070 : f32 = u_xlat39;
  let x_1073 : f32 = x_33.unity_FogParams.x;
  u_xlat39 = (x_1070 * x_1073);
  let x_1075 : f32 = u_xlat39;
  let x_1076 : f32 = u_xlat39;
  u_xlat39 = (x_1075 * -(x_1076));
  let x_1079 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1079);
  let x_1081 : vec3<f32> = u_xlat0;
  let x_1083 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1081 + -(vec3<f32>(x_1083.x, x_1083.y, x_1083.z)));
  let x_1089 : f32 = u_xlat39;
  let x_1091 : vec3<f32> = u_xlat0;
  let x_1094 : vec4<f32> = x_33.unity_FogColor;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1089, x_1089, x_1089) * x_1091) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

