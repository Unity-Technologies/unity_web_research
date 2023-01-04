struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_171 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_409 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1945 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat19 : f32;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_119 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlat58 : f32;
  var u_xlatb59 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat59 : f32;
  var u_xlatb60 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat60 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat22 : f32;
  var u_xlatu57 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu60 : u32;
  var u_xlati61 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati60 : i32;
  var u_xlat62 : f32;
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
  u_xlat19 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat38 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat57 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat57;
  let x_99 : f32 = u_xlat38;
  u_xlat38 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat38;
  u_xlat38 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat19;
  let x_106 : f32 = u_xlat38;
  u_xlat19 = (x_105 / x_106);
  let x_108 : f32 = u_xlat19;
  u_xlat19 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat19;
  u_xlat19 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb38;
  if (x_118) {
    let x_122 : f32 = u_xlat19;
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
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_174 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres0;
  let x_177 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres1;
  let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres2;
  let x_198 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = vs_TEXCOORD2;
  let x_205 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres3;
  let x_208 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) + -(vec3<f32>(x_205.x, x_205.y, x_205.z)));
  let x_209 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec4<f32> = u_xlat5;
  let x_226 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_231 : vec4<f32> = u_xlat6;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_240 : vec4<f32> = u_xlat3;
  let x_243 : vec4<f32> = x_171.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_240 < x_243);
  let x_246 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_246);
  let x_250 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_258);
  let x_262 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_262);
  let x_268 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_268);
  let x_272 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_272);
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat4;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + vec3<f32>(x_277.y, x_277.z, x_277.w));
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat3;
  let x_285 : vec3<f32> = max(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_288, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_296 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_296) + 4.0f);
  let x_303 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_303);
  let x_307 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_307) << bitcast<u32>(2i));
  let x_310 : vec4<f32> = vs_TEXCOORD2;
  let x_312 : i32 = u_xlati0;
  let x_315 : i32 = u_xlati0;
  let x_319 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_312 + 1i) / 4i)][((x_315 + 1i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.y, x_310.y, x_310.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : i32 = u_xlati0;
  let x_326 : i32 = u_xlati0;
  let x_329 : vec4<f32> = x_171.x_MainLightWorldToShadow[(x_324 / 4i)][(x_326 % 4i)];
  let x_331 : vec4<f32> = vs_TEXCOORD2;
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.x, x_331.x, x_331.x)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : i32 = u_xlati0;
  let x_342 : i32 = u_xlati0;
  let x_346 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_339 + 2i) / 4i)][((x_342 + 2i) % 4i)];
  let x_348 : vec4<f32> = vs_TEXCOORD2;
  let x_351 : vec4<f32> = u_xlat3;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.z, x_348.z, x_348.z)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat3;
  let x_358 : i32 = u_xlati0;
  let x_361 : i32 = u_xlati0;
  let x_365 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_358 + 3i) / 4i)][((x_361 + 3i) % 4i)];
  let x_367 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.z) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : f32 = hlslcc_FragCoord.w;
  let x_373 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_371 * x_373);
  let x_377 : f32 = u_xlat0.x;
  let x_380 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_377 / x_380);
  let x_384 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_384) + 1.0f);
  let x_389 : f32 = u_xlat0.x;
  let x_391 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_389 * x_391);
  let x_395 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_395, 0.0f);
  let x_399 : f32 = u_xlat0.x;
  let x_402 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_399 * x_402);
  u_xlat2.w = 1.0f;
  let x_412 : vec4<f32> = x_409.unity_SHAr;
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_412, x_413);
  let x_418 : vec4<f32> = x_409.unity_SHAg;
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_418, x_419);
  let x_424 : vec4<f32> = x_409.unity_SHAb;
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_424, x_425);
  let x_428 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_428.y, x_428.z, x_428.z, x_428.x) * vec4<f32>(x_430.x, x_430.y, x_430.z, x_430.z));
  let x_435 : vec4<f32> = x_409.unity_SHBr;
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_435, x_436);
  let x_441 : vec4<f32> = x_409.unity_SHBg;
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_441, x_442);
  let x_447 : vec4<f32> = x_409.unity_SHBb;
  let x_448 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_447, x_448);
  let x_452 : f32 = u_xlat2.y;
  let x_454 : f32 = u_xlat2.y;
  u_xlat57 = (x_452 * x_454);
  let x_457 : f32 = u_xlat2.x;
  let x_459 : f32 = u_xlat2.x;
  let x_461 : f32 = u_xlat57;
  u_xlat57 = ((x_457 * x_459) + -(x_461));
  let x_466 : vec4<f32> = x_409.unity_SHC;
  let x_468 : f32 = u_xlat57;
  let x_471 : vec4<f32> = u_xlat6;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_468, x_468, x_468)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat5;
  let x_480 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) + vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = max(vec3<f32>(x_483.x, x_483.y, x_483.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_490 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_491 : vec2<f32> = vec2<f32>(x_490.x, x_490.y);
  let x_495 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_491.x, x_491.y));
  let x_496 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat5;
  let x_500 : vec4<f32> = hlslcc_FragCoord;
  let x_502 : vec2<f32> = (vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_500.x, x_500.y));
  let x_503 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
  let x_506 : f32 = u_xlat5.y;
  let x_509 : f32 = x_43.x_ScaleBiasRt.x;
  let x_512 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat57 = ((x_506 * x_509) + x_512);
  let x_514 : f32 = u_xlat57;
  u_xlat5.z = (-(x_514) + 1.0f);
  let x_523 : vec4<f32> = u_xlat5;
  let x_526 : f32 = x_43.x_GlobalMipBias.x;
  let x_527 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_523.x, x_523.z), x_526);
  u_xlat57 = x_527.x;
  let x_530 : f32 = u_xlat57;
  u_xlat58 = (x_530 + -1.0f);
  let x_533 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_534 : f32 = u_xlat58;
  u_xlat58 = ((x_533 * x_534) + 1.0f);
  let x_537 : f32 = u_xlat57;
  u_xlat57 = min(x_537, 1.0f);
  let x_541 : f32 = x_171.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_541);
  let x_543 : bool = u_xlatb59;
  if (x_543) {
    let x_547 : f32 = x_171.x_MainLightShadowParams.y;
    u_xlatb59 = (x_547 == 1.0f);
    let x_549 : bool = u_xlatb59;
    if (x_549) {
      let x_552 : vec4<f32> = u_xlat3;
      let x_556 : vec4<f32> = x_171.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_552.x, x_552.y, x_552.x, x_552.y) + x_556);
      let x_560 : vec4<f32> = u_xlat5;
      let x_561 : vec2<f32> = vec2<f32>(x_560.x, x_560.y);
      let x_563 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_575 : vec3<f32> = txVec0;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_575.xy, x_575.z);
      u_xlat6.x = x_577;
      let x_580 : vec4<f32> = u_xlat5;
      let x_581 : vec2<f32> = vec2<f32>(x_580.z, x_580.w);
      let x_583 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec1;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_590.xy, x_590.z);
      u_xlat6.y = x_592;
      let x_594 : vec4<f32> = u_xlat3;
      let x_598 : vec4<f32> = x_171.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y) + x_598);
      let x_601 : vec4<f32> = u_xlat5;
      let x_602 : vec2<f32> = vec2<f32>(x_601.x, x_601.y);
      let x_604 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_602.x, x_602.y, x_604);
      let x_611 : vec3<f32> = txVec2;
      let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_611.xy, x_611.z);
      u_xlat6.z = x_613;
      let x_616 : vec4<f32> = u_xlat5;
      let x_617 : vec2<f32> = vec2<f32>(x_616.z, x_616.w);
      let x_619 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_617.x, x_617.y, x_619);
      let x_626 : vec3<f32> = txVec3;
      let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
      u_xlat6.w = x_628;
      let x_631 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_631, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_638 : f32 = x_171.x_MainLightShadowParams.y;
      u_xlatb60 = (x_638 == 2.0f);
      let x_640 : bool = u_xlatb60;
      if (x_640) {
        let x_643 : vec4<f32> = u_xlat3;
        let x_646 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_650 : vec2<f32> = ((vec2<f32>(x_643.x, x_643.y) * vec2<f32>(x_646.z, x_646.w)) + vec2<f32>(0.5f, 0.5f));
        let x_651 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec4<f32> = u_xlat5;
        let x_655 : vec2<f32> = floor(vec2<f32>(x_653.x, x_653.y));
        let x_656 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_660 : vec4<f32> = u_xlat3;
        let x_663 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_666 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_660.x, x_660.y) * vec2<f32>(x_663.z, x_663.w)) + -(vec2<f32>(x_666.x, x_666.y)));
        let x_670 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_670.x, x_670.x, x_670.y, x_670.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_675 : vec4<f32> = u_xlat6;
        let x_677 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_675.x, x_675.x, x_675.z, x_675.z) * vec4<f32>(x_677.x, x_677.x, x_677.z, x_677.z));
        let x_680 : vec4<f32> = u_xlat7;
        let x_684 : vec2<f32> = (vec2<f32>(x_680.y, x_680.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_684.x, x_685.y, x_684.y, x_685.w);
        let x_687 : vec4<f32> = u_xlat7;
        let x_690 : vec2<f32> = u_xlat43;
        let x_692 : vec2<f32> = ((vec2<f32>(x_687.x, x_687.z) * vec2<f32>(0.5f, 0.5f)) + -(x_690));
        let x_693 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_696 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_696) + vec2<f32>(1.0f, 1.0f));
        let x_700 : vec2<f32> = u_xlat43;
        let x_702 : vec2<f32> = min(x_700, vec2<f32>(0.0f, 0.0f));
        let x_703 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat8;
        let x_708 : vec4<f32> = u_xlat8;
        let x_711 : vec2<f32> = u_xlat45;
        let x_712 : vec2<f32> = ((-(vec2<f32>(x_705.x, x_705.y)) * vec2<f32>(x_708.x, x_708.y)) + x_711);
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_715 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_715, vec2<f32>(0.0f, 0.0f));
        let x_717 : vec2<f32> = u_xlat43;
        let x_719 : vec2<f32> = u_xlat43;
        let x_721 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_717) * x_719) + vec2<f32>(x_721.y, x_721.w));
        let x_724 : vec4<f32> = u_xlat8;
        let x_726 : vec2<f32> = (vec2<f32>(x_724.x, x_724.y) + vec2<f32>(1.0f, 1.0f));
        let x_727 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_729 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_729 + vec2<f32>(1.0f, 1.0f));
        let x_732 : vec4<f32> = u_xlat7;
        let x_736 : vec2<f32> = (vec2<f32>(x_732.x, x_732.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_737 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_739 : vec2<f32> = u_xlat45;
        let x_740 : vec2<f32> = (x_739 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_743 : vec4<f32> = u_xlat8;
        let x_745 : vec2<f32> = (vec2<f32>(x_743.x, x_743.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_746 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_749 : vec2<f32> = u_xlat43;
        let x_750 : vec2<f32> = (x_749 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_751 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_753.y, x_753.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_757 : f32 = u_xlat8.x;
        u_xlat9.z = x_757;
        let x_760 : f32 = u_xlat43.x;
        u_xlat9.w = x_760;
        let x_763 : f32 = u_xlat10.x;
        u_xlat7.z = x_763;
        let x_766 : f32 = u_xlat6.x;
        u_xlat7.w = x_766;
        let x_769 : vec4<f32> = u_xlat7;
        let x_771 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_769.z, x_769.w, x_769.x, x_769.z) + vec4<f32>(x_771.z, x_771.w, x_771.x, x_771.z));
        let x_775 : f32 = u_xlat9.y;
        u_xlat8.z = x_775;
        let x_778 : f32 = u_xlat43.y;
        u_xlat8.w = x_778;
        let x_781 : f32 = u_xlat7.y;
        u_xlat10.z = x_781;
        let x_784 : f32 = u_xlat6.z;
        u_xlat10.w = x_784;
        let x_786 : vec4<f32> = u_xlat8;
        let x_788 : vec4<f32> = u_xlat10;
        let x_790 : vec3<f32> = (vec3<f32>(x_786.z, x_786.y, x_786.w) + vec3<f32>(x_788.z, x_788.y, x_788.w));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
        let x_793 : vec4<f32> = u_xlat7;
        let x_795 : vec4<f32> = u_xlat11;
        let x_797 : vec3<f32> = (vec3<f32>(x_793.x, x_793.z, x_793.w) / vec3<f32>(x_795.z, x_795.w, x_795.y));
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat7;
        let x_806 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat10;
        let x_811 : vec4<f32> = u_xlat6;
        let x_813 : vec3<f32> = (vec3<f32>(x_809.z, x_809.y, x_809.w) / vec3<f32>(x_811.x, x_811.y, x_811.z));
        let x_814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat8;
        let x_818 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_819 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat7;
        let x_824 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_826 : vec3<f32> = (vec3<f32>(x_821.y, x_821.x, x_821.z) * vec3<f32>(x_824.x, x_824.x, x_824.x));
        let x_827 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat8;
        let x_832 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_834 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_832.y, x_832.y, x_832.y));
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_838 : f32 = u_xlat8.x;
        u_xlat7.w = x_838;
        let x_840 : vec4<f32> = u_xlat5;
        let x_843 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_846 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_840.x, x_840.y, x_840.x, x_840.y) * vec4<f32>(x_843.x, x_843.y, x_843.x, x_843.y)) + vec4<f32>(x_846.y, x_846.w, x_846.x, x_846.w));
        let x_849 : vec4<f32> = u_xlat5;
        let x_852 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_855 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.x, x_852.y)) + vec2<f32>(x_855.z, x_855.w));
        let x_859 : f32 = u_xlat7.y;
        u_xlat8.w = x_859;
        let x_861 : vec4<f32> = u_xlat8;
        let x_862 : vec2<f32> = vec2<f32>(x_861.y, x_861.z);
        let x_863 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_863.x, x_862.x, x_863.z, x_862.y);
        let x_865 : vec4<f32> = u_xlat5;
        let x_868 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_871 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y) * vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y)) + vec4<f32>(x_871.x, x_871.y, x_871.z, x_871.y));
        let x_874 : vec4<f32> = u_xlat5;
        let x_877 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_880 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y) * vec4<f32>(x_877.x, x_877.y, x_877.x, x_877.y)) + vec4<f32>(x_880.w, x_880.y, x_880.w, x_880.z));
        let x_883 : vec4<f32> = u_xlat5;
        let x_886 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y) * vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y)) + vec4<f32>(x_889.x, x_889.w, x_889.z, x_889.w));
        let x_893 : vec4<f32> = u_xlat6;
        let x_895 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_893.x, x_893.x, x_893.x, x_893.y) * vec4<f32>(x_895.z, x_895.w, x_895.y, x_895.z));
        let x_899 : vec4<f32> = u_xlat6;
        let x_901 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_899.y, x_899.y, x_899.z, x_899.z) * x_901);
        let x_905 : f32 = u_xlat6.z;
        let x_907 : f32 = u_xlat11.y;
        u_xlat60 = (x_905 * x_907);
        let x_910 : vec4<f32> = u_xlat9;
        let x_911 : vec2<f32> = vec2<f32>(x_910.x, x_910.y);
        let x_913 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_911.x, x_911.y, x_913);
        let x_921 : vec3<f32> = txVec4;
        let x_923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_921.xy, x_921.z);
        u_xlat61 = x_923;
        let x_925 : vec4<f32> = u_xlat9;
        let x_926 : vec2<f32> = vec2<f32>(x_925.z, x_925.w);
        let x_928 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_926.x, x_926.y, x_928);
        let x_935 : vec3<f32> = txVec5;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_935.xy, x_935.z);
        u_xlat5.x = x_937;
        let x_940 : f32 = u_xlat5.x;
        let x_942 : f32 = u_xlat12.y;
        u_xlat5.x = (x_940 * x_942);
        let x_946 : f32 = u_xlat12.x;
        let x_947 : f32 = u_xlat61;
        let x_950 : f32 = u_xlat5.x;
        u_xlat61 = ((x_946 * x_947) + x_950);
        let x_953 : vec2<f32> = u_xlat43;
        let x_955 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_962 : vec3<f32> = txVec6;
        let x_964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_962.xy, x_962.z);
        u_xlat5.x = x_964;
        let x_967 : f32 = u_xlat12.z;
        let x_969 : f32 = u_xlat5.x;
        let x_971 : f32 = u_xlat61;
        u_xlat61 = ((x_967 * x_969) + x_971);
        let x_974 : vec4<f32> = u_xlat8;
        let x_975 : vec2<f32> = vec2<f32>(x_974.x, x_974.y);
        let x_977 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec7;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat5.x = x_986;
        let x_989 : f32 = u_xlat12.w;
        let x_991 : f32 = u_xlat5.x;
        let x_993 : f32 = u_xlat61;
        u_xlat61 = ((x_989 * x_991) + x_993);
        let x_996 : vec4<f32> = u_xlat10;
        let x_997 : vec2<f32> = vec2<f32>(x_996.x, x_996.y);
        let x_999 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_997.x, x_997.y, x_999);
        let x_1006 : vec3<f32> = txVec8;
        let x_1008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1006.xy, x_1006.z);
        u_xlat5.x = x_1008;
        let x_1011 : f32 = u_xlat13.x;
        let x_1013 : f32 = u_xlat5.x;
        let x_1015 : f32 = u_xlat61;
        u_xlat61 = ((x_1011 * x_1013) + x_1015);
        let x_1018 : vec4<f32> = u_xlat10;
        let x_1019 : vec2<f32> = vec2<f32>(x_1018.z, x_1018.w);
        let x_1021 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1019.x, x_1019.y, x_1021);
        let x_1028 : vec3<f32> = txVec9;
        let x_1030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1028.xy, x_1028.z);
        u_xlat5.x = x_1030;
        let x_1033 : f32 = u_xlat13.y;
        let x_1035 : f32 = u_xlat5.x;
        let x_1037 : f32 = u_xlat61;
        u_xlat61 = ((x_1033 * x_1035) + x_1037);
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.z, x_1040.w);
        let x_1043 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec10;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1050.xy, x_1050.z);
        u_xlat5.x = x_1052;
        let x_1055 : f32 = u_xlat13.z;
        let x_1057 : f32 = u_xlat5.x;
        let x_1059 : f32 = u_xlat61;
        u_xlat61 = ((x_1055 * x_1057) + x_1059);
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.x, x_1062.y);
        let x_1065 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1063.x, x_1063.y, x_1065);
        let x_1072 : vec3<f32> = txVec11;
        let x_1074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1072.xy, x_1072.z);
        u_xlat5.x = x_1074;
        let x_1077 : f32 = u_xlat13.w;
        let x_1079 : f32 = u_xlat5.x;
        let x_1081 : f32 = u_xlat61;
        u_xlat61 = ((x_1077 * x_1079) + x_1081);
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.z, x_1084.w);
        let x_1087 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1094 : vec3<f32> = txVec12;
        let x_1096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1094.xy, x_1094.z);
        u_xlat5.x = x_1096;
        let x_1098 : f32 = u_xlat60;
        let x_1100 : f32 = u_xlat5.x;
        let x_1102 : f32 = u_xlat61;
        u_xlat59 = ((x_1098 * x_1100) + x_1102);
      } else {
        let x_1105 : vec4<f32> = u_xlat3;
        let x_1108 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(x_1108.z, x_1108.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1112 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat5;
        let x_1116 : vec2<f32> = floor(vec2<f32>(x_1114.x, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat3;
        let x_1122 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.z, x_1122.w)) + -(vec2<f32>(x_1125.x, x_1125.y)));
        let x_1129 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1129.x, x_1129.x, x_1129.y, x_1129.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1132 : vec4<f32> = u_xlat6;
        let x_1134 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1132.x, x_1132.x, x_1132.z, x_1132.z) * vec4<f32>(x_1134.x, x_1134.x, x_1134.z, x_1134.z));
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1141 : vec2<f32> = (vec2<f32>(x_1137.y, x_1137.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1147 : vec2<f32> = u_xlat43;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1147));
        let x_1150 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat43;
        let x_1154 : vec2<f32> = (-(x_1152) + vec2<f32>(1.0f, 1.0f));
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1157, vec2<f32>(0.0f, 0.0f));
        let x_1159 : vec2<f32> = u_xlat45;
        let x_1161 : vec2<f32> = u_xlat45;
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1165 : vec2<f32> = ((-(x_1159) * x_1161) + vec2<f32>(x_1163.x, x_1163.y));
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1168, vec2<f32>(0.0f, 0.0f));
        let x_1171 : vec2<f32> = u_xlat45;
        let x_1173 : vec2<f32> = u_xlat45;
        let x_1175 : vec4<f32> = u_xlat6;
        let x_1177 : vec2<f32> = ((-(x_1171) * x_1173) + vec2<f32>(x_1175.y, x_1175.w));
        let x_1178 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1177.x, x_1178.y, x_1177.y);
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) + vec2<f32>(2.0f, 2.0f));
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1186 : vec3<f32> = u_xlat25;
        let x_1188 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.z) + vec2<f32>(2.0f, 2.0f));
        let x_1189 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1189.x, x_1188.x, x_1189.z, x_1188.y);
        let x_1192 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1192 * 0.081632003f);
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1199 : vec3<f32> = (vec3<f32>(x_1196.z, x_1196.x, x_1196.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1200 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1206 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1209 : f32 = u_xlat10.y;
        u_xlat9.x = x_1209;
        let x_1211 : vec2<f32> = u_xlat43;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1211.x, x_1211.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1219.x, x_1218.x, x_1219.z, x_1218.y);
        let x_1221 : vec2<f32> = u_xlat43;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1226 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1225.x, x_1226.y, x_1225.y, x_1226.w);
        let x_1229 : f32 = u_xlat6.x;
        u_xlat7.y = x_1229;
        let x_1232 : f32 = u_xlat8.y;
        u_xlat7.w = x_1232;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1234 + x_1235);
        let x_1237 : vec2<f32> = u_xlat43;
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1237.y, x_1237.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1241.x, x_1240.x, x_1241.z, x_1240.y);
        let x_1243 : vec2<f32> = u_xlat43;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1243.y, x_1243.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1246.x, x_1247.y, x_1246.y, x_1247.w);
        let x_1250 : f32 = u_xlat6.y;
        u_xlat8.y = x_1250;
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1252 + x_1253);
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1255 / x_1256);
        let x_1258 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1258 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1265 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1264 / x_1265);
        let x_1267 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1267 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1269 : vec4<f32> = u_xlat7;
        let x_1272 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1269.w, x_1269.x, x_1269.y, x_1269.z) * vec4<f32>(x_1272.x, x_1272.x, x_1272.x, x_1272.x));
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1278 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1275.x, x_1275.w, x_1275.y, x_1275.z) * vec4<f32>(x_1278.y, x_1278.y, x_1278.y, x_1278.y));
        let x_1281 : vec4<f32> = u_xlat7;
        let x_1282 : vec3<f32> = vec3<f32>(x_1281.y, x_1281.z, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1282.x, x_1283.y, x_1282.y, x_1282.z);
        let x_1286 : f32 = u_xlat8.x;
        u_xlat10.y = x_1286;
        let x_1288 : vec4<f32> = u_xlat5;
        let x_1291 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat5;
        let x_1300 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.w, x_1303.y));
        let x_1307 : f32 = u_xlat10.y;
        u_xlat7.y = x_1307;
        let x_1310 : f32 = u_xlat8.z;
        u_xlat10.y = x_1310;
        let x_1312 : vec4<f32> = u_xlat5;
        let x_1315 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y) * vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y)) + vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.y));
        let x_1321 : vec4<f32> = u_xlat5;
        let x_1324 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat10;
        let x_1329 : vec2<f32> = ((vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.w, x_1327.y));
        let x_1330 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1333 : f32 = u_xlat10.y;
        u_xlat7.z = x_1333;
        let x_1336 : vec4<f32> = u_xlat5;
        let x_1339 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y) * vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y)) + vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.z));
        let x_1346 : f32 = u_xlat8.w;
        u_xlat10.y = x_1346;
        let x_1349 : vec4<f32> = u_xlat5;
        let x_1352 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) * vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y)) + vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1355.y));
        let x_1359 : vec4<f32> = u_xlat5;
        let x_1362 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1359.x, x_1359.y) * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1365.w, x_1365.y));
        let x_1369 : f32 = u_xlat10.y;
        u_xlat7.w = x_1369;
        let x_1372 : vec4<f32> = u_xlat5;
        let x_1375 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1378.x, x_1378.w));
        let x_1381 : vec4<f32> = u_xlat10;
        let x_1382 : vec3<f32> = vec3<f32>(x_1381.x, x_1381.z, x_1381.w);
        let x_1383 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1382.x, x_1383.y, x_1382.y, x_1382.z);
        let x_1385 : vec4<f32> = u_xlat5;
        let x_1388 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y) * vec4<f32>(x_1388.x, x_1388.y, x_1388.x, x_1388.y)) + vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1391.y));
        let x_1395 : vec4<f32> = u_xlat5;
        let x_1398 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1395.x, x_1395.y) * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1401.w, x_1401.y));
        let x_1405 : f32 = u_xlat7.x;
        u_xlat8.x = x_1405;
        let x_1407 : vec4<f32> = u_xlat5;
        let x_1410 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat8;
        let x_1415 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.y) * vec2<f32>(x_1410.x, x_1410.y)) + vec2<f32>(x_1413.x, x_1413.y));
        let x_1416 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1415.x, x_1415.y, x_1416.z, x_1416.w);
        let x_1419 : vec4<f32> = u_xlat6;
        let x_1421 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1419.x, x_1419.x, x_1419.x, x_1419.x) * x_1421);
        let x_1424 : vec4<f32> = u_xlat6;
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1424.y, x_1424.y, x_1424.y, x_1424.y) * x_1426);
        let x_1429 : vec4<f32> = u_xlat6;
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1429.z, x_1429.z, x_1429.z, x_1429.z) * x_1431);
        let x_1433 : vec4<f32> = u_xlat6;
        let x_1435 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1433.w, x_1433.w, x_1433.w, x_1433.w) * x_1435);
        let x_1438 : vec4<f32> = u_xlat11;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec13;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1448.xy, x_1448.z);
        u_xlat60 = x_1450;
        let x_1452 : vec4<f32> = u_xlat11;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.z, x_1452.w);
        let x_1455 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec14;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
        u_xlat61 = x_1464;
        let x_1465 : f32 = u_xlat61;
        let x_1467 : f32 = u_xlat16.y;
        u_xlat61 = (x_1465 * x_1467);
        let x_1470 : f32 = u_xlat16.x;
        let x_1471 : f32 = u_xlat60;
        let x_1473 : f32 = u_xlat61;
        u_xlat60 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec2<f32> = u_xlat43;
        let x_1478 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec15;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1485.xy, x_1485.z);
        u_xlat61 = x_1487;
        let x_1489 : f32 = u_xlat16.z;
        let x_1490 : f32 = u_xlat61;
        let x_1492 : f32 = u_xlat60;
        u_xlat60 = ((x_1489 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat14;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.x, x_1495.y);
        let x_1498 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec16;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat61 = x_1507;
        let x_1509 : f32 = u_xlat16.w;
        let x_1510 : f32 = u_xlat61;
        let x_1512 : f32 = u_xlat60;
        u_xlat60 = ((x_1509 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat12;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec17;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat61 = x_1527;
        let x_1529 : f32 = u_xlat17.x;
        let x_1530 : f32 = u_xlat61;
        let x_1532 : f32 = u_xlat60;
        u_xlat60 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat12;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.z, x_1535.w);
        let x_1538 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec18;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat61 = x_1547;
        let x_1549 : f32 = u_xlat17.y;
        let x_1550 : f32 = u_xlat61;
        let x_1552 : f32 = u_xlat60;
        u_xlat60 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat13;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
        let x_1558 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec19;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat61 = x_1567;
        let x_1569 : f32 = u_xlat17.z;
        let x_1570 : f32 = u_xlat61;
        let x_1572 : f32 = u_xlat60;
        u_xlat60 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat14;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec20;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat61 = x_1587;
        let x_1589 : f32 = u_xlat17.w;
        let x_1590 : f32 = u_xlat61;
        let x_1592 : f32 = u_xlat60;
        u_xlat60 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat15;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
        let x_1598 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec21;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1605.xy, x_1605.z);
        u_xlat61 = x_1607;
        let x_1609 : f32 = u_xlat18.x;
        let x_1610 : f32 = u_xlat61;
        let x_1612 : f32 = u_xlat60;
        u_xlat60 = ((x_1609 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat15;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.z, x_1615.w);
        let x_1618 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec22;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1625.xy, x_1625.z);
        u_xlat61 = x_1627;
        let x_1629 : f32 = u_xlat18.y;
        let x_1630 : f32 = u_xlat61;
        let x_1632 : f32 = u_xlat60;
        u_xlat60 = ((x_1629 * x_1630) + x_1632);
        let x_1635 : vec2<f32> = u_xlat26;
        let x_1637 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec23;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat61 = x_1646;
        let x_1648 : f32 = u_xlat18.z;
        let x_1649 : f32 = u_xlat61;
        let x_1651 : f32 = u_xlat60;
        u_xlat60 = ((x_1648 * x_1649) + x_1651);
        let x_1654 : vec2<f32> = u_xlat51;
        let x_1656 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec24;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat61 = x_1665;
        let x_1667 : f32 = u_xlat18.w;
        let x_1668 : f32 = u_xlat61;
        let x_1670 : f32 = u_xlat60;
        u_xlat60 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat10;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec25;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat61 = x_1685;
        let x_1687 : f32 = u_xlat6.x;
        let x_1688 : f32 = u_xlat61;
        let x_1690 : f32 = u_xlat60;
        u_xlat60 = ((x_1687 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat10;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.z, x_1693.w);
        let x_1696 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec26;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat61 = x_1705;
        let x_1707 : f32 = u_xlat6.y;
        let x_1708 : f32 = u_xlat61;
        let x_1710 : f32 = u_xlat60;
        u_xlat60 = ((x_1707 * x_1708) + x_1710);
        let x_1713 : vec2<f32> = u_xlat46;
        let x_1715 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec27;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat61 = x_1724;
        let x_1726 : f32 = u_xlat6.z;
        let x_1727 : f32 = u_xlat61;
        let x_1729 : f32 = u_xlat60;
        u_xlat60 = ((x_1726 * x_1727) + x_1729);
        let x_1732 : vec4<f32> = u_xlat5;
        let x_1733 : vec2<f32> = vec2<f32>(x_1732.x, x_1732.y);
        let x_1735 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec28;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1742.xy, x_1742.z);
        u_xlat61 = x_1744;
        let x_1746 : f32 = u_xlat6.w;
        let x_1747 : f32 = u_xlat61;
        let x_1749 : f32 = u_xlat60;
        u_xlat59 = ((x_1746 * x_1747) + x_1749);
      }
    }
  } else {
    let x_1753 : vec4<f32> = u_xlat3;
    let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
    let x_1756 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
    let x_1763 : vec3<f32> = txVec29;
    let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
    u_xlat59 = x_1765;
  }
  let x_1767 : f32 = x_171.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1767) + 1.0f);
  let x_1771 : f32 = u_xlat59;
  let x_1773 : f32 = x_171.x_MainLightShadowParams.x;
  let x_1776 : f32 = u_xlat3.x;
  u_xlat59 = ((x_1771 * x_1773) + x_1776);
  let x_1779 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1779);
  let x_1784 : f32 = u_xlat3.z;
  u_xlatb22 = (x_1784 >= 1.0f);
  let x_1786 : bool = u_xlatb22;
  let x_1788 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1786 | x_1788);
  let x_1792 : bool = u_xlatb3.x;
  let x_1793 : f32 = u_xlat59;
  u_xlat59 = select(x_1793, 1.0f, x_1792);
  let x_1795 : vec4<f32> = vs_TEXCOORD2;
  let x_1799 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1801 : vec3<f32> = (vec3<f32>(x_1795.x, x_1795.y, x_1795.z) + -(x_1799));
  let x_1802 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
  let x_1804 : vec4<f32> = u_xlat3;
  let x_1806 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1804.x, x_1804.y, x_1804.z), vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1811 : f32 = u_xlat3.x;
  let x_1813 : f32 = x_171.x_MainLightShadowParams.z;
  let x_1816 : f32 = x_171.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1811 * x_1813) + x_1816);
  let x_1820 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1820, 0.0f, 1.0f);
  let x_1824 : f32 = u_xlat59;
  u_xlat22 = (-(x_1824) + 1.0f);
  let x_1828 : f32 = u_xlat3.x;
  let x_1829 : f32 = u_xlat22;
  let x_1831 : f32 = u_xlat59;
  u_xlat59 = ((x_1828 * x_1829) + x_1831);
  let x_1833 : f32 = u_xlat58;
  let x_1836 : vec4<f32> = x_43.x_MainLightColor;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1833, x_1833, x_1833) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : f32 = u_xlat57;
  let x_1843 : vec4<f32> = u_xlat4;
  let x_1845 : vec3<f32> = (vec3<f32>(x_1841, x_1841, x_1841) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1848 : f32 = u_xlat59;
  let x_1850 : f32 = x_409.unity_LightData.z;
  u_xlat57 = (x_1848 * x_1850);
  let x_1852 : f32 = u_xlat57;
  let x_1854 : vec4<f32> = u_xlat3;
  let x_1856 : vec3<f32> = (vec3<f32>(x_1852, x_1852, x_1852) * vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
  let x_1857 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
  let x_1859 : vec4<f32> = u_xlat2;
  let x_1862 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat57 = dot(vec3<f32>(x_1859.x, x_1859.y, x_1859.z), vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
  let x_1865 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1865, 0.0f, 1.0f);
  let x_1867 : f32 = u_xlat57;
  let x_1869 : vec4<f32> = u_xlat3;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1867, x_1867, x_1867) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1872 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
  let x_1874 : vec4<f32> = u_xlat1;
  let x_1876 : vec4<f32> = u_xlat3;
  let x_1878 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.y, x_1874.z) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
  let x_1879 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
  let x_1882 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1884 : f32 = x_409.unity_LightData.y;
  u_xlat57 = min(x_1882, x_1884);
  let x_1887 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_1887));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1899 : u32 = u_xlatu_loop_1;
    let x_1900 : u32 = u_xlatu57;
    if ((x_1899 < x_1900)) {
    } else {
      break;
    }
    let x_1903 : u32 = u_xlatu_loop_1;
    u_xlatu60 = (x_1903 >> 2u);
    let x_1906 : u32 = u_xlatu_loop_1;
    u_xlati61 = bitcast<i32>((x_1906 & 3u));
    let x_1909 : u32 = u_xlatu60;
    let x_1912 : vec4<f32> = x_409.unity_LightIndices[bitcast<i32>(x_1909)];
    let x_1922 : i32 = u_xlati61;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1927 : vec4<u32> = indexable[x_1922];
    u_xlat60 = dot(x_1912, bitcast<vec4<f32>>(x_1927));
    let x_1931 : f32 = u_xlat60;
    u_xlati60 = i32(x_1931);
    let x_1933 : vec4<f32> = vs_TEXCOORD2;
    let x_1946 : i32 = u_xlati60;
    let x_1948 : vec4<f32> = x_1945.x_AdditionalLightsPosition[x_1946];
    let x_1951 : i32 = u_xlati60;
    let x_1953 : vec4<f32> = x_1945.x_AdditionalLightsPosition[x_1951];
    let x_1955 : vec3<f32> = ((-(vec3<f32>(x_1933.x, x_1933.y, x_1933.z)) * vec3<f32>(x_1948.w, x_1948.w, x_1948.w)) + vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
    let x_1956 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
    let x_1958 : vec4<f32> = u_xlat6;
    let x_1960 : vec4<f32> = u_xlat6;
    u_xlat61 = dot(vec3<f32>(x_1958.x, x_1958.y, x_1958.z), vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
    let x_1963 : f32 = u_xlat61;
    u_xlat61 = max(x_1963, 6.10351562e-05f);
    let x_1967 : f32 = u_xlat61;
    u_xlat62 = inverseSqrt(x_1967);
    let x_1969 : f32 = u_xlat62;
    let x_1971 : vec4<f32> = u_xlat6;
    let x_1973 : vec3<f32> = (vec3<f32>(x_1969, x_1969, x_1969) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
    let x_1974 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
    let x_1976 : f32 = u_xlat61;
    u_xlat62 = (1.0f / x_1976);
    let x_1978 : f32 = u_xlat61;
    let x_1979 : i32 = u_xlati60;
    let x_1981 : f32 = x_1945.x_AdditionalLightsAttenuation[x_1979].x;
    u_xlat61 = (x_1978 * x_1981);
    let x_1983 : f32 = u_xlat61;
    let x_1985 : f32 = u_xlat61;
    u_xlat61 = ((-(x_1983) * x_1985) + 1.0f);
    let x_1988 : f32 = u_xlat61;
    u_xlat61 = max(x_1988, 0.0f);
    let x_1990 : f32 = u_xlat61;
    let x_1991 : f32 = u_xlat61;
    u_xlat61 = (x_1990 * x_1991);
    let x_1993 : f32 = u_xlat61;
    let x_1994 : f32 = u_xlat62;
    u_xlat61 = (x_1993 * x_1994);
    let x_1996 : i32 = u_xlati60;
    let x_1998 : vec4<f32> = x_1945.x_AdditionalLightsSpotDir[x_1996];
    let x_2000 : vec4<f32> = u_xlat6;
    u_xlat62 = dot(vec3<f32>(x_1998.x, x_1998.y, x_1998.z), vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
    let x_2003 : f32 = u_xlat62;
    let x_2004 : i32 = u_xlati60;
    let x_2006 : f32 = x_1945.x_AdditionalLightsAttenuation[x_2004].z;
    let x_2008 : i32 = u_xlati60;
    let x_2010 : f32 = x_1945.x_AdditionalLightsAttenuation[x_2008].w;
    u_xlat62 = ((x_2003 * x_2006) + x_2010);
    let x_2012 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2012, 0.0f, 1.0f);
    let x_2014 : f32 = u_xlat62;
    let x_2015 : f32 = u_xlat62;
    u_xlat62 = (x_2014 * x_2015);
    let x_2017 : f32 = u_xlat61;
    let x_2018 : f32 = u_xlat62;
    u_xlat61 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat58;
    let x_2022 : i32 = u_xlati60;
    let x_2024 : vec4<f32> = x_1945.x_AdditionalLightsColor[x_2022];
    let x_2026 : vec3<f32> = (vec3<f32>(x_2020, x_2020, x_2020) * vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
    let x_2029 : f32 = u_xlat61;
    let x_2031 : vec4<f32> = u_xlat7;
    let x_2033 : vec3<f32> = (vec3<f32>(x_2029, x_2029, x_2029) * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
    let x_2036 : vec4<f32> = u_xlat2;
    let x_2038 : vec4<f32> = u_xlat6;
    u_xlat60 = dot(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2041, 0.0f, 1.0f);
    let x_2043 : f32 = u_xlat60;
    let x_2045 : vec4<f32> = u_xlat7;
    let x_2047 : vec3<f32> = (vec3<f32>(x_2043, x_2043, x_2043) * vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2048 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
    let x_2050 : vec4<f32> = u_xlat6;
    let x_2052 : vec4<f32> = u_xlat1;
    let x_2055 : vec4<f32> = u_xlat5;
    let x_2057 : vec3<f32> = ((vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * vec3<f32>(x_2052.x, x_2052.y, x_2052.z)) + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
    let x_2058 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);

    continuing {
      let x_2060 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2060 + bitcast<u32>(1i));
    }
  }
  let x_2062 : vec4<f32> = u_xlat4;
  let x_2064 : vec4<f32> = u_xlat1;
  let x_2067 : vec4<f32> = u_xlat3;
  let x_2069 : vec3<f32> = ((vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * vec3<f32>(x_2064.x, x_2064.y, x_2064.z)) + vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : vec4<f32> = u_xlat5;
  let x_2074 : vec4<f32> = u_xlat1;
  let x_2076 : vec3<f32> = (vec3<f32>(x_2072.x, x_2072.y, x_2072.z) + vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2080 : f32 = u_xlat0.x;
  let x_2082 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2080 * -(x_2082));
  let x_2087 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2087);
  let x_2090 : vec4<f32> = u_xlat1;
  let x_2094 : vec4<f32> = x_43.unity_FogColor;
  let x_2097 : vec3<f32> = (vec3<f32>(x_2090.x, x_2090.y, x_2090.z) + -(vec3<f32>(x_2094.x, x_2094.y, x_2094.z)));
  let x_2098 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2102 : vec4<f32> = u_xlat0;
  let x_2104 : vec4<f32> = u_xlat1;
  let x_2108 : vec4<f32> = x_43.unity_FogColor;
  let x_2110 : vec3<f32> = ((vec3<f32>(x_2102.x, x_2102.x, x_2102.x) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z)) + vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2111 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
  let x_2113 : bool = u_xlatb38;
  let x_2114 : f32 = u_xlat19;
  SV_Target0.w = select(1.0f, x_2114, x_2113);
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

