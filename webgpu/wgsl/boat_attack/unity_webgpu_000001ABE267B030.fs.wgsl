struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_406 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_659 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_119 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat8 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat24;
  let x_99 : f32 = u_xlat16;
  u_xlat16 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat16;
  u_xlat16 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat8;
  let x_106 : f32 = u_xlat16;
  u_xlat8 = (x_105 / x_106);
  let x_108 : f32 = u_xlat8;
  u_xlat8 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat8;
  u_xlat8 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb16;
  if (x_118) {
    let x_122 : f32 = u_xlat8;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_146 : vec3<f32> = vs_TEXCOORD3;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_146, x_147);
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_151);
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec3<f32> = vs_TEXCOORD3;
  let x_158 : vec3<f32> = (vec3<f32>(x_155.x, x_155.x, x_155.x) * x_157);
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_173 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres0;
  let x_176 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres1;
  let x_187 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres2;
  let x_198 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_203 : vec4<f32> = vs_TEXCOORD2;
  let x_206 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_203.x, x_203.y, x_203.z) + -(vec3<f32>(x_206.x, x_206.y, x_206.z)));
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec4<f32> = u_xlat5;
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec3<f32> = u_xlat6;
  let x_231 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_230, x_231);
  let x_237 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = x_170.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_237 < x_240);
  let x_243 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_247);
  let x_251 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_255);
  let x_259 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_259);
  let x_265 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_265);
  let x_269 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_269);
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat4;
  let x_276 : vec3<f32> = (vec3<f32>(x_272.x, x_272.y, x_272.z) + vec3<f32>(x_274.y, x_274.z, x_274.w));
  let x_277 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = max(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_282.x, x_282.y, x_282.z);
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_285, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_293 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_293) + 4.0f);
  let x_300 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_300);
  let x_304 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_304) << bitcast<u32>(2i));
  let x_307 : vec4<f32> = vs_TEXCOORD2;
  let x_309 : i32 = u_xlati0;
  let x_312 : i32 = u_xlati0;
  let x_316 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_309 + 1i) / 4i)][((x_312 + 1i) % 4i)];
  let x_318 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : i32 = u_xlati0;
  let x_323 : i32 = u_xlati0;
  let x_326 : vec4<f32> = x_170.x_MainLightWorldToShadow[(x_321 / 4i)][(x_323 % 4i)];
  let x_328 : vec4<f32> = vs_TEXCOORD2;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.x, x_328.x)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : i32 = u_xlati0;
  let x_339 : i32 = u_xlati0;
  let x_343 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_336 + 2i) / 4i)][((x_339 + 2i) % 4i)];
  let x_345 : vec4<f32> = vs_TEXCOORD2;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.z, x_345.z, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : i32 = u_xlati0;
  let x_358 : i32 = u_xlati0;
  let x_362 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_355 + 3i) / 4i)][((x_358 + 3i) % 4i)];
  let x_364 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = hlslcc_FragCoord.w;
  let x_370 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_368 * x_370);
  let x_374 : f32 = u_xlat0.x;
  let x_377 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_374 / x_377);
  let x_381 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_381) + 1.0f);
  let x_386 : f32 = u_xlat0.x;
  let x_388 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_386 * x_388);
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_392, 0.0f);
  let x_396 : f32 = u_xlat0.x;
  let x_399 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_396 * x_399);
  u_xlat2.w = 1.0f;
  let x_409 : vec4<f32> = x_406.unity_SHAr;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_409, x_410);
  let x_415 : vec4<f32> = x_406.unity_SHAg;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_415, x_416);
  let x_421 : vec4<f32> = x_406.unity_SHAb;
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_421, x_422);
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_425.y, x_425.z, x_425.z, x_425.x) * vec4<f32>(x_427.x, x_427.y, x_427.z, x_427.z));
  let x_432 : vec4<f32> = x_406.unity_SHBr;
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_432, x_433);
  let x_438 : vec4<f32> = x_406.unity_SHBg;
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_438, x_439);
  let x_444 : vec4<f32> = x_406.unity_SHBb;
  let x_445 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_444, x_445);
  let x_449 : f32 = u_xlat2.y;
  let x_451 : f32 = u_xlat2.y;
  u_xlat24 = (x_449 * x_451);
  let x_454 : f32 = u_xlat2.x;
  let x_456 : f32 = u_xlat2.x;
  let x_458 : f32 = u_xlat24;
  u_xlat24 = ((x_454 * x_456) + -(x_458));
  let x_463 : vec4<f32> = x_406.unity_SHC;
  let x_465 : f32 = u_xlat24;
  let x_468 : vec3<f32> = u_xlat6;
  let x_469 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465, x_465, x_465)) + x_468);
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat4;
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec3<f32> = max(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : vec4<f32> = u_xlat3;
  let x_486 : vec2<f32> = vec2<f32>(x_485.x, x_485.y);
  let x_488 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_486.x, x_486.y, x_488);
  let x_500 : vec3<f32> = txVec0;
  let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_500.xy, x_500.z);
  u_xlat24 = x_502;
  let x_506 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat24;
  let x_511 : f32 = x_170.x_MainLightShadowParams.x;
  let x_513 : f32 = u_xlat25;
  u_xlat24 = ((x_509 * x_511) + x_513);
  let x_517 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_517);
  let x_521 : f32 = u_xlat3.z;
  u_xlatb26 = (x_521 >= 1.0f);
  let x_523 : bool = u_xlatb25;
  let x_524 : bool = u_xlatb26;
  u_xlatb25 = (x_523 | x_524);
  let x_526 : bool = u_xlatb25;
  let x_527 : f32 = u_xlat24;
  u_xlat24 = select(x_527, 1.0f, x_526);
  let x_529 : vec4<f32> = vs_TEXCOORD2;
  let x_533 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_535 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) + -(x_533));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat3;
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : f32 = u_xlat25;
  let x_545 : f32 = x_170.x_MainLightShadowParams.z;
  let x_548 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat25 = ((x_543 * x_545) + x_548);
  let x_550 : f32 = u_xlat25;
  u_xlat25 = clamp(x_550, 0.0f, 1.0f);
  let x_553 : f32 = u_xlat24;
  u_xlat26 = (-(x_553) + 1.0f);
  let x_556 : f32 = u_xlat25;
  let x_557 : f32 = u_xlat26;
  let x_559 : f32 = u_xlat24;
  u_xlat24 = ((x_556 * x_557) + x_559);
  let x_561 : f32 = u_xlat24;
  let x_563 : f32 = x_406.unity_LightData.z;
  u_xlat24 = (x_561 * x_563);
  let x_565 : f32 = u_xlat24;
  let x_568 : vec4<f32> = x_43.x_MainLightColor;
  let x_570 : vec3<f32> = (vec3<f32>(x_565, x_565, x_565) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat2;
  let x_576 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : f32 = u_xlat24;
  u_xlat24 = clamp(x_579, 0.0f, 1.0f);
  let x_581 : f32 = u_xlat24;
  let x_583 : vec4<f32> = u_xlat3;
  let x_585 : vec3<f32> = (vec3<f32>(x_581, x_581, x_581) * vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat1;
  let x_590 : vec4<f32> = u_xlat3;
  let x_592 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_598 : f32 = x_406.unity_LightData.y;
  u_xlat24 = min(x_596, x_598);
  let x_601 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_601));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_613 : u32 = u_xlatu_loop_1;
    let x_614 : u32 = u_xlatu24;
    if ((x_613 < x_614)) {
    } else {
      break;
    }
    let x_617 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_617 >> 2u);
    let x_620 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_620 & 3u));
    let x_623 : u32 = u_xlatu26;
    let x_626 : vec4<f32> = x_406.unity_LightIndices[bitcast<i32>(x_623)];
    let x_636 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_641 : vec4<u32> = indexable[x_636];
    u_xlat26 = dot(x_626, bitcast<vec4<f32>>(x_641));
    let x_645 : f32 = u_xlat26;
    u_xlati26 = i32(x_645);
    let x_647 : vec4<f32> = vs_TEXCOORD2;
    let x_660 : i32 = u_xlati26;
    let x_662 : vec4<f32> = x_659.x_AdditionalLightsPosition[x_660];
    let x_665 : i32 = u_xlati26;
    let x_667 : vec4<f32> = x_659.x_AdditionalLightsPosition[x_665];
    u_xlat6 = ((-(vec3<f32>(x_647.x, x_647.y, x_647.z)) * vec3<f32>(x_662.w, x_662.w, x_662.w)) + vec3<f32>(x_667.x, x_667.y, x_667.z));
    let x_671 : vec3<f32> = u_xlat6;
    let x_672 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_671, x_672);
    let x_674 : f32 = u_xlat27;
    u_xlat27 = max(x_674, 6.10351562e-05f);
    let x_678 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_678);
    let x_680 : f32 = u_xlat28;
    let x_682 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_680, x_680, x_680) * x_682);
    let x_684 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_684);
    let x_686 : f32 = u_xlat27;
    let x_687 : i32 = u_xlati26;
    let x_689 : f32 = x_659.x_AdditionalLightsAttenuation[x_687].x;
    u_xlat27 = (x_686 * x_689);
    let x_691 : f32 = u_xlat27;
    let x_693 : f32 = u_xlat27;
    u_xlat27 = ((-(x_691) * x_693) + 1.0f);
    let x_696 : f32 = u_xlat27;
    u_xlat27 = max(x_696, 0.0f);
    let x_698 : f32 = u_xlat27;
    let x_699 : f32 = u_xlat27;
    u_xlat27 = (x_698 * x_699);
    let x_701 : f32 = u_xlat27;
    let x_702 : f32 = u_xlat28;
    u_xlat27 = (x_701 * x_702);
    let x_704 : i32 = u_xlati26;
    let x_706 : vec4<f32> = x_659.x_AdditionalLightsSpotDir[x_704];
    let x_708 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_706.x, x_706.y, x_706.z), x_708);
    let x_710 : f32 = u_xlat28;
    let x_711 : i32 = u_xlati26;
    let x_713 : f32 = x_659.x_AdditionalLightsAttenuation[x_711].z;
    let x_715 : i32 = u_xlati26;
    let x_717 : f32 = x_659.x_AdditionalLightsAttenuation[x_715].w;
    u_xlat28 = ((x_710 * x_713) + x_717);
    let x_719 : f32 = u_xlat28;
    u_xlat28 = clamp(x_719, 0.0f, 1.0f);
    let x_721 : f32 = u_xlat28;
    let x_722 : f32 = u_xlat28;
    u_xlat28 = (x_721 * x_722);
    let x_724 : f32 = u_xlat27;
    let x_725 : f32 = u_xlat28;
    u_xlat27 = (x_724 * x_725);
    let x_728 : f32 = u_xlat27;
    let x_730 : i32 = u_xlati26;
    let x_732 : vec4<f32> = x_659.x_AdditionalLightsColor[x_730];
    u_xlat7 = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_732.x, x_732.y, x_732.z));
    let x_735 : vec4<f32> = u_xlat2;
    let x_737 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), x_737);
    let x_739 : f32 = u_xlat26;
    u_xlat26 = clamp(x_739, 0.0f, 1.0f);
    let x_741 : f32 = u_xlat26;
    let x_743 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_741, x_741, x_741) * x_743);
    let x_745 : vec3<f32> = u_xlat6;
    let x_746 : vec4<f32> = u_xlat1;
    let x_749 : vec4<f32> = u_xlat5;
    let x_751 : vec3<f32> = ((x_745 * vec3<f32>(x_746.x, x_746.y, x_746.z)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
    let x_752 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);

    continuing {
      let x_754 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_754 + bitcast<u32>(1i));
    }
  }
  let x_756 : vec4<f32> = u_xlat4;
  let x_758 : vec4<f32> = u_xlat1;
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758.x, x_758.y, x_758.z)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat5;
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec3<f32> = (vec3<f32>(x_766.x, x_766.y, x_766.z) + vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_774 : f32 = u_xlat0.x;
  let x_776 : f32 = u_xlat0.x;
  u_xlat0.x = (x_774 * -(x_776));
  let x_781 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_781);
  let x_784 : vec4<f32> = u_xlat1;
  let x_787 : vec4<f32> = x_43.unity_FogColor;
  let x_790 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) + -(vec3<f32>(x_787.x, x_787.y, x_787.z)));
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_797 : vec4<f32> = u_xlat1;
  let x_801 : vec4<f32> = x_43.unity_FogColor;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * vec3<f32>(x_797.x, x_797.y, x_797.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : bool = u_xlatb16;
  let x_807 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_807, x_806);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

