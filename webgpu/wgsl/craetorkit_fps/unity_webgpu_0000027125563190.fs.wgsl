struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var x_278 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb39 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_485 : f32;
  var x_497 : f32;
  var x_509 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_664 : f32;
  var x_676 : f32;
  var x_688 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat39 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat39;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = vs_TEXCOORD4;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_98);
  let x_101 : vec3<f32> = u_xlat2;
  let x_103 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_101.x, x_101.x, x_101.x) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  let x_110 : vec4<f32> = vs_TEXCOORD1;
  u_xlat41 = dot(vec3<f32>(x_108.x, x_108.y, x_108.z), vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_113);
  let x_116 : f32 = u_xlat41;
  let x_118 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_116, x_116, x_116) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec3<f32> = (vec3<f32>(x_121.w, x_121.w, x_121.w) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : f32 = u_xlat39;
  u_xlat42 = (-(x_129) + 1.0f);
  let x_137 : f32 = u_xlat1.w;
  let x_138 : f32 = u_xlat39;
  let x_140 : f32 = u_xlat42;
  SV_Target0.w = ((x_137 * x_138) + x_140);
  let x_148 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_148;
  let x_152 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_152;
  let x_156 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_156;
  let x_160 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_166 : vec3<f32> = (-(x_160) + x_165);
  let x_167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_172 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_172;
  let x_176 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_176;
  let x_180 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_180;
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec3<f32> = u_xlat6;
  u_xlat39 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), x_184);
  let x_186 : vec3<f32> = u_xlat4;
  let x_189 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = u_xlat5;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : f32 = u_xlat40;
  u_xlat40 = sqrt(x_201);
  let x_203 : f32 = u_xlat39;
  let x_205 : f32 = u_xlat40;
  u_xlat40 = (-(x_203) + x_205);
  let x_208 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_209 : f32 = u_xlat40;
  let x_211 : f32 = u_xlat39;
  u_xlat39 = ((x_208 * x_209) + x_211);
  let x_213 : f32 = u_xlat39;
  let x_216 : f32 = x_32.x_LightShadowData.z;
  let x_219 : f32 = x_32.x_LightShadowData.w;
  u_xlat39 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat39;
  u_xlat39 = clamp(x_221, 0.0f, 1.0f);
  let x_229 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb40 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb40;
  if (x_231) {
    let x_235 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb40 = (x_235 == 1.0f);
    let x_237 : vec4<f32> = vs_TEXCOORD3;
    let x_241 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_243 : vec3<f32> = (vec3<f32>(x_237.w, x_237.w, x_237.w) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_247 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_249 : vec4<f32> = vs_TEXCOORD2;
    let x_252 : vec4<f32> = u_xlat5;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.w, x_249.w, x_249.w)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_258 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_260 : vec4<f32> = vs_TEXCOORD4;
    let x_263 : vec4<f32> = u_xlat5;
    let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.w, x_260.w, x_260.w)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat5;
    let x_272 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_274 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : bool = u_xlatb40;
    if (x_277) {
      let x_281 : vec4<f32> = u_xlat5;
      x_278 = vec3<f32>(x_281.x, x_281.y, x_281.z);
    } else {
      let x_284 : vec3<f32> = u_xlat4;
      x_278 = x_284;
    }
    let x_285 : vec3<f32> = x_278;
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat5;
    let x_292 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_294 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_292));
    let x_295 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_297 : vec4<f32> = u_xlat5;
    let x_301 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * x_301);
    let x_303 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_303.x, x_302.x, x_302.y, x_302.z);
    let x_306 : f32 = u_xlat5.y;
    u_xlat40 = ((x_306 * 0.25f) + 0.75f);
    let x_313 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_313 * 0.5f) + 0.75f);
    let x_317 : f32 = u_xlat40;
    let x_318 : f32 = u_xlat43;
    u_xlat5.x = max(x_317, x_318);
    let x_329 : vec4<f32> = u_xlat5;
    let x_331 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_329.x, x_329.z, x_329.w));
    u_xlat5 = x_331;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_337 : vec4<f32> = u_xlat5;
  let x_339 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat40 = dot(x_337, x_339);
  let x_341 : f32 = u_xlat40;
  u_xlat40 = clamp(x_341, 0.0f, 1.0f);
  let x_344 : vec4<f32> = vs_TEXCOORD7;
  let x_346 : vec4<f32> = vs_TEXCOORD7;
  let x_348 : vec2<f32> = (vec2<f32>(x_344.x, x_344.y) / vec2<f32>(x_346.w, x_346.w));
  let x_349 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_348.x, x_348.y, x_349.z, x_349.w);
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_356.x, x_356.y));
  u_xlat43 = x_358.x;
  let x_360 : f32 = u_xlat40;
  let x_361 : f32 = u_xlat43;
  u_xlat40 = (x_360 + -(x_361));
  let x_364 : f32 = u_xlat39;
  let x_365 : f32 = u_xlat40;
  let x_367 : f32 = u_xlat43;
  u_xlat39 = ((x_364 * x_365) + x_367);
  let x_374 : vec4<f32> = vs_TEXCOORD0;
  let x_376 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_374.x, x_374.y));
  u_xlat40 = x_376.y;
  let x_380 : f32 = x_32.x_OcclusionStrength;
  u_xlat43 = (-(x_380) + 1.0f);
  let x_383 : f32 = u_xlat40;
  let x_385 : f32 = x_32.x_OcclusionStrength;
  let x_387 : f32 = u_xlat43;
  u_xlat40 = ((x_383 * x_385) + x_387);
  let x_391 : f32 = x_32.x_Glossiness;
  u_xlat43 = (-(x_391) + 1.0f);
  let x_394 : vec3<f32> = u_xlat3;
  let x_395 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(x_394, x_395);
  let x_399 : f32 = u_xlat5.x;
  let x_401 : f32 = u_xlat5.x;
  u_xlat5.x = (x_399 + x_401);
  let x_404 : vec3<f32> = u_xlat2;
  let x_405 : vec4<f32> = u_xlat5;
  let x_409 : vec3<f32> = u_xlat3;
  let x_410 : vec3<f32> = ((x_404 * -(vec3<f32>(x_405.x, x_405.x, x_405.x))) + x_409);
  let x_411 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : f32 = u_xlat39;
  let x_417 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_413, x_413, x_413) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_423 : f32 = x_32.unity_SpecCube0_ProbePosition.w;
  u_xlatb39 = (0.0f < x_423);
  let x_425 : bool = u_xlatb39;
  if (x_425) {
    let x_428 : vec4<f32> = u_xlat5;
    let x_430 : vec4<f32> = u_xlat5;
    u_xlat39 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_433);
    let x_436 : f32 = u_xlat39;
    let x_438 : vec4<f32> = u_xlat5;
    let x_440 : vec3<f32> = (vec3<f32>(x_436, x_436, x_436) * vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_441 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_444 : vec3<f32> = u_xlat4;
    let x_448 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_444) + vec3<f32>(x_448.x, x_448.y, x_448.z));
    let x_451 : vec3<f32> = u_xlat8;
    let x_452 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_451 / vec3<f32>(x_452.x, x_452.y, x_452.z));
    let x_456 : vec3<f32> = u_xlat4;
    let x_460 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_462 : vec3<f32> = (-(x_456) + vec3<f32>(x_460.x, x_460.y, x_460.z));
    let x_463 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
    let x_465 : vec4<f32> = u_xlat9;
    let x_467 : vec4<f32> = u_xlat7;
    let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) / vec3<f32>(x_467.x, x_467.y, x_467.z));
    let x_470 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_476 : vec4<f32> = u_xlat7;
    let x_479 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_476.x, x_476.y, x_476.z, x_476.x));
    u_xlatb10 = vec3<bool>(x_479.x, x_479.y, x_479.z);
    let x_482 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_482;
    let x_484 : bool = u_xlatb10.x;
    if (x_484) {
      let x_489 : f32 = u_xlat8.x;
      x_485 = x_489;
    } else {
      let x_492 : f32 = u_xlat9.x;
      x_485 = x_492;
    }
    let x_493 : f32 = x_485;
    hlslcc_movcTemp.x = x_493;
    let x_496 : bool = u_xlatb10.y;
    if (x_496) {
      let x_501 : f32 = u_xlat8.y;
      x_497 = x_501;
    } else {
      let x_504 : f32 = u_xlat9.y;
      x_497 = x_504;
    }
    let x_505 : f32 = x_497;
    hlslcc_movcTemp.y = x_505;
    let x_508 : bool = u_xlatb10.z;
    if (x_508) {
      let x_513 : f32 = u_xlat8.z;
      x_509 = x_513;
    } else {
      let x_516 : f32 = u_xlat9.z;
      x_509 = x_516;
    }
    let x_517 : f32 = x_509;
    hlslcc_movcTemp.z = x_517;
    let x_519 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_519;
    let x_521 : f32 = u_xlat8.y;
    let x_523 : f32 = u_xlat8.x;
    u_xlat39 = min(x_521, x_523);
    let x_526 : f32 = u_xlat8.z;
    let x_527 : f32 = u_xlat39;
    u_xlat39 = min(x_526, x_527);
    let x_529 : vec3<f32> = u_xlat4;
    let x_531 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_529 + -(vec3<f32>(x_531.x, x_531.y, x_531.z)));
    let x_535 : vec4<f32> = u_xlat7;
    let x_537 : f32 = u_xlat39;
    let x_540 : vec3<f32> = u_xlat8;
    let x_541 : vec3<f32> = ((vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(x_537, x_537, x_537)) + x_540);
    let x_542 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  } else {
    let x_545 : vec4<f32> = u_xlat5;
    let x_546 : vec3<f32> = vec3<f32>(x_545.x, x_545.y, x_545.z);
    let x_547 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  }
  let x_549 : f32 = u_xlat43;
  u_xlat39 = ((-(x_549) * 0.699999988f) + 1.700000048f);
  let x_555 : f32 = u_xlat39;
  let x_556 : f32 = u_xlat43;
  u_xlat39 = (x_555 * x_556);
  let x_558 : f32 = u_xlat39;
  u_xlat39 = (x_558 * 6.0f);
  let x_569 : vec4<f32> = u_xlat7;
  let x_571 : f32 = u_xlat39;
  let x_572 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_569.x, x_569.y, x_569.z), x_571);
  u_xlat7 = x_572;
  let x_575 : f32 = u_xlat7.w;
  u_xlat44 = (x_575 + -1.0f);
  let x_580 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_581 : f32 = u_xlat44;
  u_xlat44 = ((x_580 * x_581) + 1.0f);
  let x_584 : f32 = u_xlat44;
  u_xlat44 = log2(x_584);
  let x_586 : f32 = u_xlat44;
  let x_588 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_586 * x_588);
  let x_590 : f32 = u_xlat44;
  u_xlat44 = exp2(x_590);
  let x_592 : f32 = u_xlat44;
  let x_594 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_592 * x_594);
  let x_596 : vec4<f32> = u_xlat7;
  let x_598 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598, x_598, x_598));
  let x_603 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_603 < 0.999989986f);
  let x_606 : bool = u_xlatb45;
  if (x_606) {
    let x_611 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_611);
    let x_613 : bool = u_xlatb45;
    if (x_613) {
      let x_617 : vec4<f32> = u_xlat5;
      let x_619 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_617.x, x_617.y, x_617.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
      let x_622 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_622);
      let x_624 : vec4<f32> = u_xlat5;
      let x_626 : f32 = u_xlat45;
      let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_626, x_626, x_626));
      let x_629 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
      let x_632 : vec3<f32> = u_xlat4;
      let x_636 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_632) + vec3<f32>(x_636.x, x_636.y, x_636.z));
      let x_639 : vec3<f32> = u_xlat10;
      let x_640 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_639 / vec3<f32>(x_640.x, x_640.y, x_640.z));
      let x_644 : vec3<f32> = u_xlat4;
      let x_648 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_644) + vec3<f32>(x_648.x, x_648.y, x_648.z));
      let x_651 : vec3<f32> = u_xlat11;
      let x_652 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_651 / vec3<f32>(x_652.x, x_652.y, x_652.z));
      let x_656 : vec4<f32> = u_xlat9;
      let x_658 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_656.x, x_656.y, x_656.z, x_656.x));
      u_xlatb12 = vec3<bool>(x_658.x, x_658.y, x_658.z);
      let x_661 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_661;
      let x_663 : bool = u_xlatb12.x;
      if (x_663) {
        let x_668 : f32 = u_xlat10.x;
        x_664 = x_668;
      } else {
        let x_671 : f32 = u_xlat11.x;
        x_664 = x_671;
      }
      let x_672 : f32 = x_664;
      hlslcc_movcTemp_1.x = x_672;
      let x_675 : bool = u_xlatb12.y;
      if (x_675) {
        let x_680 : f32 = u_xlat10.y;
        x_676 = x_680;
      } else {
        let x_683 : f32 = u_xlat11.y;
        x_676 = x_683;
      }
      let x_684 : f32 = x_676;
      hlslcc_movcTemp_1.y = x_684;
      let x_687 : bool = u_xlatb12.z;
      if (x_687) {
        let x_692 : f32 = u_xlat10.z;
        x_688 = x_692;
      } else {
        let x_695 : f32 = u_xlat11.z;
        x_688 = x_695;
      }
      let x_696 : f32 = x_688;
      hlslcc_movcTemp_1.z = x_696;
      let x_698 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_698;
      let x_700 : f32 = u_xlat10.y;
      let x_702 : f32 = u_xlat10.x;
      u_xlat45 = min(x_700, x_702);
      let x_705 : f32 = u_xlat10.z;
      let x_706 : f32 = u_xlat45;
      u_xlat45 = min(x_705, x_706);
      let x_708 : vec3<f32> = u_xlat4;
      let x_710 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_708 + -(vec3<f32>(x_710.x, x_710.y, x_710.z)));
      let x_714 : vec4<f32> = u_xlat9;
      let x_716 : f32 = u_xlat45;
      let x_719 : vec3<f32> = u_xlat4;
      let x_720 : vec3<f32> = ((vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(x_716, x_716, x_716)) + x_719);
      let x_721 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    }
    let x_727 : vec4<f32> = u_xlat5;
    let x_729 : f32 = u_xlat39;
    let x_730 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
    u_xlat9 = x_730;
    let x_732 : f32 = u_xlat9.w;
    u_xlat39 = (x_732 + -1.0f);
    let x_736 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_737 : f32 = u_xlat39;
    u_xlat39 = ((x_736 * x_737) + 1.0f);
    let x_740 : f32 = u_xlat39;
    u_xlat39 = log2(x_740);
    let x_742 : f32 = u_xlat39;
    let x_744 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat39 = (x_742 * x_744);
    let x_746 : f32 = u_xlat39;
    u_xlat39 = exp2(x_746);
    let x_748 : f32 = u_xlat39;
    let x_750 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat39 = (x_748 * x_750);
    let x_752 : vec4<f32> = u_xlat9;
    let x_754 : f32 = u_xlat39;
    u_xlat4 = (vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754, x_754, x_754));
    let x_757 : f32 = u_xlat44;
    let x_759 : vec4<f32> = u_xlat7;
    let x_762 : vec3<f32> = u_xlat4;
    let x_764 : vec3<f32> = ((vec3<f32>(x_757, x_757, x_757) * vec3<f32>(x_759.x, x_759.y, x_759.z)) + -(x_762));
    let x_765 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
    let x_768 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_770 : vec4<f32> = u_xlat5;
    let x_773 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_768.w, x_768.w, x_768.w) * vec3<f32>(x_770.x, x_770.y, x_770.z)) + x_773);
  }
  let x_775 : f32 = u_xlat40;
  let x_777 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_775, x_775, x_775) * x_777);
  let x_779 : vec4<f32> = vs_TEXCOORD1;
  let x_782 : f32 = u_xlat41;
  let x_786 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_788 : vec3<f32> = ((-(vec3<f32>(x_779.x, x_779.y, x_779.z)) * vec3<f32>(x_782, x_782, x_782)) + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat5;
  let x_793 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_791.x, x_791.y, x_791.z), vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : f32 = u_xlat39;
  u_xlat39 = max(x_796, 0.001f);
  let x_799 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_799);
  let x_801 : f32 = u_xlat39;
  let x_803 : vec4<f32> = u_xlat5;
  let x_805 : vec3<f32> = (vec3<f32>(x_801, x_801, x_801) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec3<f32> = u_xlat2;
  let x_809 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_808, -(x_809));
  let x_812 : vec3<f32> = u_xlat2;
  let x_814 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat40 = dot(x_812, vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : f32 = u_xlat40;
  u_xlat40 = clamp(x_817, 0.0f, 1.0f);
  let x_819 : vec3<f32> = u_xlat2;
  let x_820 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_819, vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_825 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_825, 0.0f, 1.0f);
  let x_830 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_832 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_837 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_837, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat15.x;
  let x_844 : f32 = u_xlat15.x;
  u_xlat28 = (x_842 * x_844);
  let x_846 : f32 = u_xlat28;
  let x_848 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_846, x_846), vec2<f32>(x_848, x_848));
  let x_851 : f32 = u_xlat28;
  u_xlat28 = (x_851 + -0.5f);
  let x_854 : f32 = u_xlat40;
  u_xlat41 = (-(x_854) + 1.0f);
  let x_857 : f32 = u_xlat41;
  let x_858 : f32 = u_xlat41;
  u_xlat3.x = (x_857 * x_858);
  let x_862 : f32 = u_xlat3.x;
  let x_864 : f32 = u_xlat3.x;
  u_xlat3.x = (x_862 * x_864);
  let x_867 : f32 = u_xlat41;
  let x_869 : f32 = u_xlat3.x;
  u_xlat41 = (x_867 * x_869);
  let x_871 : f32 = u_xlat28;
  let x_872 : f32 = u_xlat41;
  u_xlat41 = ((x_871 * x_872) + 1.0f);
  let x_875 : f32 = u_xlat39;
  u_xlat3.x = (-(abs(x_875)) + 1.0f);
  let x_882 : f32 = u_xlat3.x;
  let x_884 : f32 = u_xlat3.x;
  u_xlat16.x = (x_882 * x_884);
  let x_888 : f32 = u_xlat16.x;
  let x_890 : f32 = u_xlat16.x;
  u_xlat16.x = (x_888 * x_890);
  let x_894 : f32 = u_xlat3.x;
  let x_896 : f32 = u_xlat16.x;
  u_xlat3.x = (x_894 * x_896);
  let x_899 : f32 = u_xlat28;
  let x_901 : f32 = u_xlat3.x;
  u_xlat28 = ((x_899 * x_901) + 1.0f);
  let x_904 : f32 = u_xlat28;
  let x_905 : f32 = u_xlat41;
  u_xlat28 = (x_904 * x_905);
  let x_907 : f32 = u_xlat40;
  let x_908 : f32 = u_xlat28;
  u_xlat28 = (x_907 * x_908);
  let x_910 : f32 = u_xlat43;
  let x_911 : f32 = u_xlat43;
  u_xlat41 = (x_910 * x_911);
  let x_913 : f32 = u_xlat41;
  u_xlat41 = max(x_913, 0.002f);
  let x_916 : f32 = u_xlat41;
  u_xlat16.x = (-(x_916) + 1.0f);
  let x_921 : f32 = u_xlat39;
  let x_924 : f32 = u_xlat16.x;
  let x_926 : f32 = u_xlat41;
  u_xlat29 = ((abs(x_921) * x_924) + x_926);
  let x_928 : f32 = u_xlat40;
  let x_930 : f32 = u_xlat16.x;
  let x_932 : f32 = u_xlat41;
  u_xlat16.x = ((x_928 * x_930) + x_932);
  let x_935 : f32 = u_xlat39;
  let x_938 : f32 = u_xlat16.x;
  u_xlat39 = (abs(x_935) * x_938);
  let x_940 : f32 = u_xlat40;
  let x_941 : f32 = u_xlat29;
  let x_943 : f32 = u_xlat39;
  u_xlat39 = ((x_940 * x_941) + x_943);
  let x_945 : f32 = u_xlat39;
  u_xlat39 = (x_945 + 0.00001f);
  let x_948 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_948);
  let x_950 : f32 = u_xlat41;
  let x_951 : f32 = u_xlat41;
  u_xlat16.x = (x_950 * x_951);
  let x_955 : f32 = u_xlat2.x;
  let x_957 : f32 = u_xlat16.x;
  let x_960 : f32 = u_xlat2.x;
  u_xlat29 = ((x_955 * x_957) + -(x_960));
  let x_963 : f32 = u_xlat29;
  let x_965 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_963 * x_965) + 1.0f);
  let x_970 : f32 = u_xlat16.x;
  u_xlat16.x = (x_970 * 0.318309873f);
  let x_975 : f32 = u_xlat2.x;
  let x_977 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_975 * x_977) + 0.0000001f);
  let x_983 : f32 = u_xlat16.x;
  let x_985 : f32 = u_xlat2.x;
  u_xlat2.x = (x_983 / x_985);
  let x_988 : f32 = u_xlat39;
  let x_990 : f32 = u_xlat2.x;
  u_xlat39 = (x_988 * x_990);
  let x_992 : f32 = u_xlat40;
  let x_993 : f32 = u_xlat39;
  u_xlat39 = (x_992 * x_993);
  let x_995 : f32 = u_xlat39;
  u_xlat39 = (x_995 * 3.141592741f);
  let x_998 : f32 = u_xlat39;
  u_xlat39 = max(x_998, 0.0f);
  let x_1000 : f32 = u_xlat41;
  let x_1001 : f32 = u_xlat41;
  u_xlat40 = ((x_1000 * x_1001) + 1.0f);
  let x_1004 : f32 = u_xlat40;
  u_xlat40 = (1.0f / x_1004);
  let x_1006 : vec4<f32> = u_xlat0;
  let x_1008 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_1006.x, x_1006.y, x_1006.z), vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1014 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1014 == 0.0f));
  let x_1016 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1016);
  let x_1019 : f32 = u_xlat39;
  let x_1021 : f32 = u_xlat2.x;
  u_xlat39 = (x_1019 * x_1021);
  let x_1023 : f32 = u_xlat42;
  let x_1025 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_1023 + x_1025);
  let x_1029 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1029, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat28;
  let x_1034 : vec3<f32> = u_xlat6;
  u_xlat16 = (vec3<f32>(x_1032, x_1032, x_1032) * x_1034);
  let x_1036 : vec3<f32> = u_xlat6;
  let x_1037 : f32 = u_xlat39;
  let x_1039 : vec3<f32> = (x_1036 * vec3<f32>(x_1037, x_1037, x_1037));
  let x_1040 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1043 : f32 = u_xlat15.x;
  u_xlat39 = (-(x_1043) + 1.0f);
  let x_1046 : f32 = u_xlat39;
  let x_1047 : f32 = u_xlat39;
  u_xlat15.x = (x_1046 * x_1047);
  let x_1051 : f32 = u_xlat15.x;
  let x_1053 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1051 * x_1053);
  let x_1056 : f32 = u_xlat39;
  let x_1058 : f32 = u_xlat15.x;
  u_xlat39 = (x_1056 * x_1058);
  let x_1060 : vec4<f32> = u_xlat0;
  u_xlat15 = (-(vec3<f32>(x_1060.x, x_1060.y, x_1060.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1065 : vec3<f32> = u_xlat15;
  let x_1066 : f32 = u_xlat39;
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat15 = ((x_1065 * vec3<f32>(x_1066, x_1066, x_1066)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec3<f32> = u_xlat15;
  let x_1073 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1072 * vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat1;
  let x_1078 : vec3<f32> = u_xlat16;
  let x_1080 : vec3<f32> = u_xlat15;
  let x_1081 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * x_1078) + x_1080);
  let x_1082 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec3<f32> = u_xlat4;
  let x_1085 : f32 = u_xlat40;
  u_xlat15 = (x_1084 * vec3<f32>(x_1085, x_1085, x_1085));
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1091 : vec3<f32> = u_xlat2;
  u_xlat16 = (-(vec3<f32>(x_1088.x, x_1088.y, x_1088.z)) + vec3<f32>(x_1091.x, x_1091.x, x_1091.x));
  let x_1094 : vec3<f32> = u_xlat3;
  let x_1096 : vec3<f32> = u_xlat16;
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1094.x, x_1094.x, x_1094.x) * x_1096) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec3<f32> = u_xlat15;
  let x_1104 : vec4<f32> = u_xlat0;
  let x_1107 : vec4<f32> = u_xlat1;
  let x_1109 : vec3<f32> = ((x_1103 * vec3<f32>(x_1104.x, x_1104.y, x_1104.z)) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1113 : f32 = vs_TEXCOORD1.w;
  let x_1115 : f32 = x_32.x_ProjectionParams.y;
  u_xlat39 = (x_1113 / x_1115);
  let x_1117 : f32 = u_xlat39;
  u_xlat39 = (-(x_1117) + 1.0f);
  let x_1120 : f32 = u_xlat39;
  let x_1122 : f32 = x_32.x_ProjectionParams.z;
  u_xlat39 = (x_1120 * x_1122);
  let x_1124 : f32 = u_xlat39;
  u_xlat39 = max(x_1124, 0.0f);
  let x_1126 : f32 = u_xlat39;
  let x_1129 : f32 = x_32.unity_FogParams.x;
  u_xlat39 = (x_1126 * x_1129);
  let x_1131 : f32 = u_xlat39;
  let x_1132 : f32 = u_xlat39;
  u_xlat39 = (x_1131 * -(x_1132));
  let x_1135 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1135);
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1141 : vec4<f32> = x_32.unity_FogColor;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1137.x, x_1137.y, x_1137.z) + -(vec3<f32>(x_1141.x, x_1141.y, x_1141.z)));
  let x_1145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : f32 = u_xlat39;
  let x_1149 : vec4<f32> = u_xlat0;
  let x_1153 : vec4<f32> = x_32.unity_FogColor;
  let x_1155 : vec3<f32> = ((vec3<f32>(x_1147, x_1147, x_1147) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

