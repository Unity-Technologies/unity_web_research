struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(7) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3<f32>;
  var x_262 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD2;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat22;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_65 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_65 + -1.0f);
  let x_68 : f32 = u_xlat22;
  u_xlat22 = (x_68 * -9.999998093f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = clamp(x_71, 0.0f, 1.0f);
  let x_76 : f32 = u_xlat22;
  let x_82 : vec2<f32> = vs_TEXCOORD0;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_76, x_76)) + x_82);
  let x_84 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_96 : vec3<f32> = u_xlat4;
  let x_98 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_96.x, x_96.y));
  u_xlat22 = x_98.x;
  let x_106 : vec2<f32> = vs_TEXCOORD0;
  let x_107 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_106);
  u_xlat23 = x_107.z;
  let x_110 : f32 = u_xlat22;
  u_xlat22 = ((x_110 * -2.0f) + 1.0f);
  let x_114 : f32 = u_xlat23;
  let x_116 : f32 = u_xlat22;
  u_xlat22 = (-(x_114) + x_116);
  let x_121 : f32 = u_xlat22;
  u_xlatb22 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb22;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + x_145);
  let x_148 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec3<f32> = u_xlat4;
  let x_158 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat4 = (x_155 + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_165 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_165;
  let x_168 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_168;
  let x_172 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_172;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), x_176);
  let x_178 : vec3<f32> = vs_TEXCOORD2;
  let x_181 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_194);
  let x_197 : f32 = u_xlat22;
  let x_200 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_197) + x_200);
  let x_205 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat22;
  u_xlat22 = ((x_205 * x_207) + x_209);
  let x_211 : f32 = u_xlat22;
  let x_214 : f32 = x_18.x_LightShadowData.z;
  let x_217 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_211 * x_214) + x_217);
  let x_219 : f32 = u_xlat22;
  u_xlat22 = clamp(x_219, 0.0f, 1.0f);
  let x_224 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_224 == 1.0f);
  let x_226 : bool = u_xlatb2;
  if (x_226) {
    let x_230 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_230 == 1.0f);
    let x_233 : vec3<f32> = vs_TEXCOORD2;
    let x_237 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_241 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_243 : vec3<f32> = vs_TEXCOORD2;
    let x_246 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.x, x_243.x, x_243.x)) + x_246);
    let x_249 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_251 : vec3<f32> = vs_TEXCOORD2;
    let x_254 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.z, x_251.z, x_251.z)) + x_254);
    let x_256 : vec3<f32> = u_xlat9;
    let x_258 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_256 + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : bool = u_xlatb2;
    if (x_261) {
      let x_265 : vec3<f32> = u_xlat9;
      x_262 = x_265;
    } else {
      let x_267 : vec3<f32> = vs_TEXCOORD2;
      x_262 = x_267;
    }
    let x_268 : vec3<f32> = x_262;
    let x_269 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat2;
    let x_275 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat2;
    let x_284 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_289 : f32 = u_xlat2.y;
    u_xlat9.x = ((x_289 * 0.25f) + 0.75f);
    let x_297 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_297 * 0.5f) + 0.75f);
    let x_302 : f32 = u_xlat9.x;
    let x_303 : f32 = u_xlat24;
    u_xlat2.x = max(x_302, x_303);
    let x_314 : vec4<f32> = u_xlat2;
    let x_316 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_314.x, x_314.z, x_314.w));
    u_xlat2 = x_316;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_322 : vec4<f32> = u_xlat2;
  let x_325 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_322, x_325);
  let x_329 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_329, 0.0f, 1.0f);
  let x_332 : vec3<f32> = vs_TEXCOORD2;
  let x_334 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat9 = (x_332 + -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_339 : f32 = u_xlat9.y;
  let x_342 : f32 = u_xlat9.x;
  u_xlat24 = max(abs(x_339), abs(x_342));
  let x_346 : f32 = u_xlat9.z;
  let x_348 : f32 = u_xlat24;
  u_xlat24 = max(abs(x_346), x_348);
  let x_350 : f32 = u_xlat24;
  let x_353 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat24 = (x_350 + -(x_353));
  let x_356 : f32 = u_xlat24;
  u_xlat24 = max(x_356, 0.00001f);
  let x_359 : f32 = u_xlat24;
  let x_361 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat24 = (x_359 * x_361);
  let x_364 : f32 = x_18.x_LightProjectionParams.y;
  let x_365 : f32 = u_xlat24;
  u_xlat24 = (x_364 / x_365);
  let x_367 : f32 = u_xlat24;
  let x_369 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat24 = (x_367 + -(x_369));
  let x_372 : f32 = u_xlat24;
  u_xlat24 = (-(x_372) + 1.0f);
  let x_376 : vec3<f32> = u_xlat9;
  let x_377 : f32 = u_xlat24;
  txVec0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377);
  let x_390 : vec4<f32> = txVec0;
  let x_392 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_390.xyz, x_390.w);
  u_xlat9.x = x_392;
  let x_396 : f32 = x_18.x_LightShadowData.x;
  u_xlat16 = (-(x_396) + 1.0f);
  let x_400 : f32 = u_xlat9.x;
  let x_401 : f32 = u_xlat16;
  let x_404 : f32 = x_18.x_LightShadowData.x;
  u_xlat9.x = ((x_400 * x_401) + x_404);
  let x_408 : f32 = u_xlat9.x;
  let x_411 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_408) + x_411);
  let x_414 : f32 = u_xlat22;
  let x_416 : f32 = u_xlat2.x;
  let x_419 : f32 = u_xlat9.x;
  u_xlat22 = ((x_414 * x_416) + x_419);
  let x_421 : vec3<f32> = u_xlat4;
  let x_422 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(x_421, x_422);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_430.x, x_430.x));
  u_xlat2.x = x_432.x;
  let x_435 : f32 = u_xlat22;
  let x_437 : f32 = u_xlat2.x;
  u_xlat22 = (x_435 * x_437);
  let x_439 : f32 = u_xlat22;
  let x_443 : vec4<f32> = x_18.x_LightColor0;
  let x_445 : vec3<f32> = (vec3<f32>(x_439, x_439, x_439) * vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec3<f32> = vs_TEXCOORD1;
  let x_450 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_449, x_450);
  let x_452 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_452);
  let x_454 : f32 = u_xlat22;
  let x_456 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_454, x_454, x_454) * x_456);
  let x_460 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_460.x, x_460.y, x_460.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_467 : f32 = x_18.x_Metallic;
  let x_469 : f32 = x_18.x_Metallic;
  let x_471 : f32 = x_18.x_Metallic;
  let x_472 : vec3<f32> = vec3<f32>(x_467, x_469, x_471);
  let x_477 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * x_477) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_483 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_483) * 0.959999979f) + 0.959999979f);
  let x_489 : f32 = u_xlat22;
  let x_492 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_489, x_489, x_489) * vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_497 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_497) + 1.0f);
  let x_500 : vec3<f32> = u_xlat0;
  let x_501 : f32 = u_xlat21;
  let x_504 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_500 * vec3<f32>(x_501, x_501, x_501)) + x_504);
  let x_506 : vec3<f32> = u_xlat0;
  let x_507 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_506, x_507);
  let x_509 : f32 = u_xlat21;
  u_xlat21 = max(x_509, 0.001f);
  let x_512 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_512);
  let x_514 : f32 = u_xlat21;
  let x_516 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_514, x_514, x_514) * x_516);
  let x_518 : vec3<f32> = u_xlat4;
  let x_519 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_518, x_519);
  let x_521 : vec3<f32> = u_xlat4;
  let x_522 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(x_521, x_522);
  let x_524 : f32 = u_xlat23;
  u_xlat23 = clamp(x_524, 0.0f, 1.0f);
  let x_526 : vec3<f32> = u_xlat4;
  let x_527 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_526, x_527);
  let x_531 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_531, 0.0f, 1.0f);
  let x_534 : vec3<f32> = u_xlat1;
  let x_535 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_534, x_535);
  let x_539 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_539, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat0.x;
  let x_546 : f32 = u_xlat0.x;
  u_xlat7.x = (x_544 * x_546);
  let x_549 : vec3<f32> = u_xlat7;
  let x_551 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_549.x, x_549.x), vec2<f32>(x_551, x_551));
  let x_556 : f32 = u_xlat7.x;
  u_xlat7.x = (x_556 + -0.5f);
  let x_561 : f32 = u_xlat23;
  u_xlat14 = (-(x_561) + 1.0f);
  let x_564 : f32 = u_xlat14;
  let x_565 : f32 = u_xlat14;
  u_xlat1.x = (x_564 * x_565);
  let x_569 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = (x_569 * x_571);
  let x_574 : f32 = u_xlat14;
  let x_576 : f32 = u_xlat1.x;
  u_xlat14 = (x_574 * x_576);
  let x_579 : f32 = u_xlat7.x;
  let x_580 : f32 = u_xlat14;
  u_xlat14 = ((x_579 * x_580) + 1.0f);
  let x_583 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_583)) + 1.0f);
  let x_590 : f32 = u_xlat1.x;
  let x_592 : f32 = u_xlat1.x;
  u_xlat8 = (x_590 * x_592);
  let x_594 : f32 = u_xlat8;
  let x_595 : f32 = u_xlat8;
  u_xlat8 = (x_594 * x_595);
  let x_598 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat8;
  u_xlat1.x = (x_598 * x_599);
  let x_603 : f32 = u_xlat7.x;
  let x_605 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_603 * x_605) + 1.0f);
  let x_610 : f32 = u_xlat7.x;
  let x_611 : f32 = u_xlat14;
  u_xlat7.x = (x_610 * x_611);
  let x_614 : f32 = u_xlat22;
  let x_615 : f32 = u_xlat22;
  u_xlat14 = (x_614 * x_615);
  let x_617 : f32 = u_xlat14;
  u_xlat14 = max(x_617, 0.002f);
  let x_620 : f32 = u_xlat14;
  u_xlat1.x = (-(x_620) + 1.0f);
  let x_624 : f32 = u_xlat21;
  let x_627 : f32 = u_xlat1.x;
  let x_629 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_624) * x_627) + x_629);
  let x_631 : f32 = u_xlat23;
  let x_633 : f32 = u_xlat1.x;
  let x_635 : f32 = u_xlat14;
  u_xlat1.x = ((x_631 * x_633) + x_635);
  let x_638 : f32 = u_xlat21;
  let x_641 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_638) * x_641);
  let x_643 : f32 = u_xlat23;
  let x_644 : f32 = u_xlat8;
  let x_646 : f32 = u_xlat21;
  u_xlat21 = ((x_643 * x_644) + x_646);
  let x_648 : f32 = u_xlat21;
  u_xlat21 = (x_648 + 0.00001f);
  let x_650 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_650);
  let x_652 : f32 = u_xlat14;
  let x_653 : f32 = u_xlat14;
  u_xlat14 = (x_652 * x_653);
  let x_656 : f32 = u_xlat3.x;
  let x_657 : f32 = u_xlat14;
  let x_660 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_656 * x_657) + -(x_660));
  let x_665 : f32 = u_xlat1.x;
  let x_667 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_665 * x_667) + 1.0f);
  let x_671 : f32 = u_xlat14;
  u_xlat14 = (x_671 * 0.318309873f);
  let x_675 : f32 = u_xlat1.x;
  let x_677 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_675 * x_677) + 0.0000001f);
  let x_682 : f32 = u_xlat14;
  let x_684 : f32 = u_xlat1.x;
  u_xlat14 = (x_682 / x_684);
  let x_686 : f32 = u_xlat14;
  let x_687 : f32 = u_xlat21;
  u_xlat7.y = (x_686 * x_687);
  let x_690 : f32 = u_xlat23;
  let x_692 : vec3<f32> = u_xlat7;
  let x_694 : vec2<f32> = (vec2<f32>(x_690, x_690) * vec2<f32>(x_692.x, x_692.y));
  let x_695 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_694.x, x_694.y, x_695.z);
  let x_698 : f32 = u_xlat7.y;
  u_xlat14 = (x_698 * 3.141592741f);
  let x_701 : f32 = u_xlat14;
  u_xlat14 = max(x_701, 0.0f);
  let x_703 : vec3<f32> = u_xlat5;
  let x_704 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat21;
  u_xlatb21 = !((x_707 == 0.0f));
  let x_709 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_709);
  let x_711 : f32 = u_xlat21;
  let x_712 : f32 = u_xlat14;
  u_xlat14 = (x_711 * x_712);
  let x_714 : vec3<f32> = u_xlat7;
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_714.x, x_714.x, x_714.x) * vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat2;
  let x_721 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721, x_721, x_721));
  let x_725 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_725) + 1.0f);
  let x_730 : f32 = u_xlat0.x;
  let x_732 : f32 = u_xlat0.x;
  u_xlat22 = (x_730 * x_732);
  let x_734 : f32 = u_xlat22;
  let x_735 : f32 = u_xlat22;
  u_xlat22 = (x_734 * x_735);
  let x_738 : f32 = u_xlat0.x;
  let x_739 : f32 = u_xlat22;
  u_xlat0.x = (x_738 * x_739);
  let x_742 : vec3<f32> = u_xlat5;
  let x_745 : vec3<f32> = (-(x_742) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_746 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat2;
  let x_750 : vec3<f32> = u_xlat0;
  let x_753 : vec3<f32> = u_xlat5;
  let x_754 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750.x, x_750.x, x_750.x)) + x_753);
  let x_755 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec3<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_757 * vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec3<f32> = u_xlat6;
  let x_762 : vec3<f32> = u_xlat1;
  let x_764 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_761 * x_762) + x_764);
  let x_767 : f32 = vs_TEXCOORD6;
  let x_769 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_767 / x_769);
  let x_771 : f32 = u_xlat21;
  u_xlat21 = (-(x_771) + 1.0f);
  let x_774 : f32 = u_xlat21;
  let x_776 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_774 * x_776);
  let x_778 : f32 = u_xlat21;
  u_xlat21 = max(x_778, 0.0f);
  let x_780 : f32 = u_xlat21;
  let x_783 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_780 * x_783);
  let x_785 : f32 = u_xlat21;
  let x_786 : f32 = u_xlat21;
  u_xlat21 = (x_785 * -(x_786));
  let x_789 : f32 = u_xlat21;
  u_xlat21 = exp2(x_789);
  let x_793 : vec3<f32> = u_xlat0;
  let x_794 : f32 = u_xlat21;
  let x_796 : vec3<f32> = (x_793 * vec3<f32>(x_794, x_794, x_794));
  let x_797 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

