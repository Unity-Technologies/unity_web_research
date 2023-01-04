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
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_374 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1897 : AdditionalLights;

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
  var u_xlatb58 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlatb59 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat59 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat60 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
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
  var u_xlatu_loop_1 : u32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati59 : i32;
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
  u_xlat2.w = 1.0f;
  let x_377 : vec4<f32> = x_374.unity_SHAr;
  let x_378 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_377, x_378);
  let x_383 : vec4<f32> = x_374.unity_SHAg;
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_383, x_384);
  let x_389 : vec4<f32> = x_374.unity_SHAb;
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_389, x_390);
  let x_393 : vec4<f32> = u_xlat2;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_393.y, x_393.z, x_393.z, x_393.x) * vec4<f32>(x_395.x, x_395.y, x_395.z, x_395.z));
  let x_400 : vec4<f32> = x_374.unity_SHBr;
  let x_401 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_374.unity_SHBg;
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_406, x_407);
  let x_412 : vec4<f32> = x_374.unity_SHBb;
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_412, x_413);
  let x_417 : f32 = u_xlat2.y;
  let x_419 : f32 = u_xlat2.y;
  u_xlat0.x = (x_417 * x_419);
  let x_423 : f32 = u_xlat2.x;
  let x_425 : f32 = u_xlat2.x;
  let x_428 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_423 * x_425) + -(x_428));
  let x_434 : vec4<f32> = x_374.unity_SHC;
  let x_436 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat6;
  let x_441 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_436.x, x_436.x, x_436.x)) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat4;
  let x_446 : vec4<f32> = u_xlat5;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat4;
  let x_453 : vec3<f32> = max(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
  let x_463 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_459.x, x_459.y));
  let x_464 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_463.x, x_464.y, x_464.z, x_463.y);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = hlslcc_FragCoord;
  let x_470 : vec2<f32> = (vec2<f32>(x_466.x, x_466.w) * vec2<f32>(x_468.x, x_468.y));
  let x_471 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
  let x_474 : f32 = u_xlat5.y;
  let x_477 : f32 = x_43.x_ScaleBiasRt.x;
  let x_480 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_474 * x_477) + x_480);
  let x_484 : f32 = u_xlat0.x;
  u_xlat5.z = (-(x_484) + 1.0f);
  let x_493 : vec4<f32> = u_xlat5;
  let x_496 : f32 = x_43.x_GlobalMipBias.x;
  let x_497 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_493.x, x_493.z), x_496);
  u_xlat0.x = x_497.x;
  let x_501 : f32 = u_xlat0.x;
  u_xlat57 = (x_501 + -1.0f);
  let x_504 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_505 : f32 = u_xlat57;
  u_xlat57 = ((x_504 * x_505) + 1.0f);
  let x_509 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_509, 1.0f);
  let x_514 : f32 = x_171.x_MainLightShadowParams.y;
  u_xlatb58 = (0.0f < x_514);
  let x_516 : bool = u_xlatb58;
  if (x_516) {
    let x_520 : f32 = x_171.x_MainLightShadowParams.y;
    u_xlatb58 = (x_520 == 1.0f);
    let x_522 : bool = u_xlatb58;
    if (x_522) {
      let x_525 : vec4<f32> = u_xlat3;
      let x_529 : vec4<f32> = x_171.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_525.x, x_525.y, x_525.x, x_525.y) + x_529);
      let x_533 : vec4<f32> = u_xlat5;
      let x_534 : vec2<f32> = vec2<f32>(x_533.x, x_533.y);
      let x_536 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_534.x, x_534.y, x_536);
      let x_548 : vec3<f32> = txVec0;
      let x_550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_548.xy, x_548.z);
      u_xlat6.x = x_550;
      let x_553 : vec4<f32> = u_xlat5;
      let x_554 : vec2<f32> = vec2<f32>(x_553.z, x_553.w);
      let x_556 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_554.x, x_554.y, x_556);
      let x_563 : vec3<f32> = txVec1;
      let x_565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_563.xy, x_563.z);
      u_xlat6.y = x_565;
      let x_567 : vec4<f32> = u_xlat3;
      let x_571 : vec4<f32> = x_171.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) + x_571);
      let x_574 : vec4<f32> = u_xlat5;
      let x_575 : vec2<f32> = vec2<f32>(x_574.x, x_574.y);
      let x_577 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_575.x, x_575.y, x_577);
      let x_584 : vec3<f32> = txVec2;
      let x_586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_584.xy, x_584.z);
      u_xlat6.z = x_586;
      let x_589 : vec4<f32> = u_xlat5;
      let x_590 : vec2<f32> = vec2<f32>(x_589.z, x_589.w);
      let x_592 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_590.x, x_590.y, x_592);
      let x_599 : vec3<f32> = txVec3;
      let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_599.xy, x_599.z);
      u_xlat6.w = x_601;
      let x_604 : vec4<f32> = u_xlat6;
      u_xlat58 = dot(x_604, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_611 : f32 = x_171.x_MainLightShadowParams.y;
      u_xlatb59 = (x_611 == 2.0f);
      let x_613 : bool = u_xlatb59;
      if (x_613) {
        let x_616 : vec4<f32> = u_xlat3;
        let x_620 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_624 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_620.z, x_620.w)) + vec2<f32>(0.5f, 0.5f));
        let x_625 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat5;
        let x_629 : vec2<f32> = floor(vec2<f32>(x_627.x, x_627.y));
        let x_630 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_634 : vec4<f32> = u_xlat3;
        let x_637 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_634.x, x_634.y) * vec2<f32>(x_637.z, x_637.w)) + -(vec2<f32>(x_640.x, x_640.y)));
        let x_644 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_644.x, x_644.x, x_644.y, x_644.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_649 : vec4<f32> = u_xlat6;
        let x_651 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_649.x, x_649.x, x_649.z, x_649.z) * vec4<f32>(x_651.x, x_651.x, x_651.z, x_651.z));
        let x_654 : vec4<f32> = u_xlat7;
        let x_658 : vec2<f32> = (vec2<f32>(x_654.y, x_654.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_659 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_658.x, x_659.y, x_658.y, x_659.w);
        let x_661 : vec4<f32> = u_xlat7;
        let x_664 : vec2<f32> = u_xlat43;
        let x_666 : vec2<f32> = ((vec2<f32>(x_661.x, x_661.z) * vec2<f32>(0.5f, 0.5f)) + -(x_664));
        let x_667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_670 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_670) + vec2<f32>(1.0f, 1.0f));
        let x_674 : vec2<f32> = u_xlat43;
        let x_676 : vec2<f32> = min(x_674, vec2<f32>(0.0f, 0.0f));
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_679 : vec4<f32> = u_xlat8;
        let x_682 : vec4<f32> = u_xlat8;
        let x_685 : vec2<f32> = u_xlat45;
        let x_686 : vec2<f32> = ((-(vec2<f32>(x_679.x, x_679.y)) * vec2<f32>(x_682.x, x_682.y)) + x_685);
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_687.z, x_687.w);
        let x_689 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_689, vec2<f32>(0.0f, 0.0f));
        let x_691 : vec2<f32> = u_xlat43;
        let x_693 : vec2<f32> = u_xlat43;
        let x_695 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_691) * x_693) + vec2<f32>(x_695.y, x_695.w));
        let x_698 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = (vec2<f32>(x_698.x, x_698.y) + vec2<f32>(1.0f, 1.0f));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
        let x_703 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_703 + vec2<f32>(1.0f, 1.0f));
        let x_706 : vec4<f32> = u_xlat7;
        let x_710 : vec2<f32> = (vec2<f32>(x_706.x, x_706.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_711 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
        let x_713 : vec2<f32> = u_xlat45;
        let x_714 : vec2<f32> = (x_713 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_715 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat8;
        let x_719 : vec2<f32> = (vec2<f32>(x_717.x, x_717.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_720 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
        let x_723 : vec2<f32> = u_xlat43;
        let x_724 : vec2<f32> = (x_723 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_725 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_727.y, x_727.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_731 : f32 = u_xlat8.x;
        u_xlat9.z = x_731;
        let x_734 : f32 = u_xlat43.x;
        u_xlat9.w = x_734;
        let x_737 : f32 = u_xlat10.x;
        u_xlat7.z = x_737;
        let x_740 : f32 = u_xlat6.x;
        u_xlat7.w = x_740;
        let x_743 : vec4<f32> = u_xlat7;
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_743.z, x_743.w, x_743.x, x_743.z) + vec4<f32>(x_745.z, x_745.w, x_745.x, x_745.z));
        let x_749 : f32 = u_xlat9.y;
        u_xlat8.z = x_749;
        let x_752 : f32 = u_xlat43.y;
        u_xlat8.w = x_752;
        let x_755 : f32 = u_xlat7.y;
        u_xlat10.z = x_755;
        let x_758 : f32 = u_xlat6.z;
        u_xlat10.w = x_758;
        let x_760 : vec4<f32> = u_xlat8;
        let x_762 : vec4<f32> = u_xlat10;
        let x_764 : vec3<f32> = (vec3<f32>(x_760.z, x_760.y, x_760.w) + vec3<f32>(x_762.z, x_762.y, x_762.w));
        let x_765 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat7;
        let x_769 : vec4<f32> = u_xlat11;
        let x_771 : vec3<f32> = (vec3<f32>(x_767.x, x_767.z, x_767.w) / vec3<f32>(x_769.z, x_769.w, x_769.y));
        let x_772 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat7;
        let x_780 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat10;
        let x_785 : vec4<f32> = u_xlat6;
        let x_787 : vec3<f32> = (vec3<f32>(x_783.z, x_783.y, x_783.w) / vec3<f32>(x_785.x, x_785.y, x_785.z));
        let x_788 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_793 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_800 : vec3<f32> = (vec3<f32>(x_795.y, x_795.x, x_795.z) * vec3<f32>(x_798.x, x_798.x, x_798.x));
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat8;
        let x_806 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_808 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_806.y, x_806.y, x_806.y));
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_812 : f32 = u_xlat8.x;
        u_xlat7.w = x_812;
        let x_814 : vec4<f32> = u_xlat5;
        let x_817 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y) * vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y)) + vec4<f32>(x_820.y, x_820.w, x_820.x, x_820.w));
        let x_823 : vec4<f32> = u_xlat5;
        let x_826 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_826.x, x_826.y)) + vec2<f32>(x_829.z, x_829.w));
        let x_833 : f32 = u_xlat7.y;
        u_xlat8.w = x_833;
        let x_835 : vec4<f32> = u_xlat8;
        let x_836 : vec2<f32> = vec2<f32>(x_835.y, x_835.z);
        let x_837 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_837.x, x_836.x, x_837.z, x_836.y);
        let x_839 : vec4<f32> = u_xlat5;
        let x_842 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_845 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) * vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y)) + vec4<f32>(x_845.x, x_845.y, x_845.z, x_845.y));
        let x_848 : vec4<f32> = u_xlat5;
        let x_851 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_854 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y) * vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y)) + vec4<f32>(x_854.w, x_854.y, x_854.w, x_854.z));
        let x_857 : vec4<f32> = u_xlat5;
        let x_860 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_863 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y) * vec4<f32>(x_860.x, x_860.y, x_860.x, x_860.y)) + vec4<f32>(x_863.x, x_863.w, x_863.z, x_863.w));
        let x_867 : vec4<f32> = u_xlat6;
        let x_869 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_867.x, x_867.x, x_867.x, x_867.y) * vec4<f32>(x_869.z, x_869.w, x_869.y, x_869.z));
        let x_873 : vec4<f32> = u_xlat6;
        let x_875 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_873.y, x_873.y, x_873.z, x_873.z) * x_875);
        let x_879 : f32 = u_xlat6.z;
        let x_881 : f32 = u_xlat11.y;
        u_xlat59 = (x_879 * x_881);
        let x_884 : vec4<f32> = u_xlat9;
        let x_885 : vec2<f32> = vec2<f32>(x_884.x, x_884.y);
        let x_887 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_895 : vec3<f32> = txVec4;
        let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_895.xy, x_895.z);
        u_xlat60 = x_897;
        let x_899 : vec4<f32> = u_xlat9;
        let x_900 : vec2<f32> = vec2<f32>(x_899.z, x_899.w);
        let x_902 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_900.x, x_900.y, x_902);
        let x_910 : vec3<f32> = txVec5;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_910.xy, x_910.z);
        u_xlat61 = x_912;
        let x_913 : f32 = u_xlat61;
        let x_915 : f32 = u_xlat12.y;
        u_xlat61 = (x_913 * x_915);
        let x_918 : f32 = u_xlat12.x;
        let x_919 : f32 = u_xlat60;
        let x_921 : f32 = u_xlat61;
        u_xlat60 = ((x_918 * x_919) + x_921);
        let x_924 : vec2<f32> = u_xlat43;
        let x_926 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_933 : vec3<f32> = txVec6;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_933.xy, x_933.z);
        u_xlat61 = x_935;
        let x_937 : f32 = u_xlat12.z;
        let x_938 : f32 = u_xlat61;
        let x_940 : f32 = u_xlat60;
        u_xlat60 = ((x_937 * x_938) + x_940);
        let x_943 : vec4<f32> = u_xlat8;
        let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
        let x_946 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_953 : vec3<f32> = txVec7;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_953.xy, x_953.z);
        u_xlat61 = x_955;
        let x_957 : f32 = u_xlat12.w;
        let x_958 : f32 = u_xlat61;
        let x_960 : f32 = u_xlat60;
        u_xlat60 = ((x_957 * x_958) + x_960);
        let x_963 : vec4<f32> = u_xlat10;
        let x_964 : vec2<f32> = vec2<f32>(x_963.x, x_963.y);
        let x_966 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec8;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_973.xy, x_973.z);
        u_xlat61 = x_975;
        let x_977 : f32 = u_xlat13.x;
        let x_978 : f32 = u_xlat61;
        let x_980 : f32 = u_xlat60;
        u_xlat60 = ((x_977 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat10;
        let x_984 : vec2<f32> = vec2<f32>(x_983.z, x_983.w);
        let x_986 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec9;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_993.xy, x_993.z);
        u_xlat61 = x_995;
        let x_997 : f32 = u_xlat13.y;
        let x_998 : f32 = u_xlat61;
        let x_1000 : f32 = u_xlat60;
        u_xlat60 = ((x_997 * x_998) + x_1000);
        let x_1003 : vec4<f32> = u_xlat8;
        let x_1004 : vec2<f32> = vec2<f32>(x_1003.z, x_1003.w);
        let x_1006 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
        let x_1013 : vec3<f32> = txVec10;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1013.xy, x_1013.z);
        u_xlat61 = x_1015;
        let x_1017 : f32 = u_xlat13.z;
        let x_1018 : f32 = u_xlat61;
        let x_1020 : f32 = u_xlat60;
        u_xlat60 = ((x_1017 * x_1018) + x_1020);
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
        let x_1026 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1033 : vec3<f32> = txVec11;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1033.xy, x_1033.z);
        u_xlat61 = x_1035;
        let x_1037 : f32 = u_xlat13.w;
        let x_1038 : f32 = u_xlat61;
        let x_1040 : f32 = u_xlat60;
        u_xlat60 = ((x_1037 * x_1038) + x_1040);
        let x_1043 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
        let x_1046 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec12;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1053.xy, x_1053.z);
        u_xlat61 = x_1055;
        let x_1056 : f32 = u_xlat59;
        let x_1057 : f32 = u_xlat61;
        let x_1059 : f32 = u_xlat60;
        u_xlat58 = ((x_1056 * x_1057) + x_1059);
      } else {
        let x_1062 : vec4<f32> = u_xlat3;
        let x_1065 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1068 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1065.z, x_1065.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1069 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat5;
        let x_1073 : vec2<f32> = floor(vec2<f32>(x_1071.x, x_1071.y));
        let x_1074 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : vec4<f32> = u_xlat3;
        let x_1079 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1079.z, x_1079.w)) + -(vec2<f32>(x_1082.x, x_1082.y)));
        let x_1086 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.y, x_1086.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1089.x, x_1089.x, x_1089.z, x_1089.z) * vec4<f32>(x_1091.x, x_1091.x, x_1091.z, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1098 : vec2<f32> = (vec2<f32>(x_1094.y, x_1094.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1099.x, x_1098.x, x_1099.z, x_1098.y);
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = u_xlat43;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1104));
        let x_1107 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1107.w);
        let x_1109 : vec2<f32> = u_xlat43;
        let x_1111 : vec2<f32> = (-(x_1109) + vec2<f32>(1.0f, 1.0f));
        let x_1112 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1114, vec2<f32>(0.0f, 0.0f));
        let x_1116 : vec2<f32> = u_xlat45;
        let x_1118 : vec2<f32> = u_xlat45;
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1122 : vec2<f32> = ((-(x_1116) * x_1118) + vec2<f32>(x_1120.x, x_1120.y));
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1125 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1125, vec2<f32>(0.0f, 0.0f));
        let x_1128 : vec2<f32> = u_xlat45;
        let x_1130 : vec2<f32> = u_xlat45;
        let x_1132 : vec4<f32> = u_xlat6;
        let x_1134 : vec2<f32> = ((-(x_1128) * x_1130) + vec2<f32>(x_1132.y, x_1132.w));
        let x_1135 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1134.x, x_1135.y, x_1134.y);
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1137.x, x_1137.y) + vec2<f32>(2.0f, 2.0f));
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec3<f32> = u_xlat25;
        let x_1145 : vec2<f32> = (vec2<f32>(x_1143.x, x_1143.z) + vec2<f32>(2.0f, 2.0f));
        let x_1146 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1149 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1149 * 0.081632003f);
        let x_1153 : vec4<f32> = u_xlat6;
        let x_1156 : vec3<f32> = (vec3<f32>(x_1153.z, x_1153.x, x_1153.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1159.x, x_1159.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1163 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1166 : f32 = u_xlat10.y;
        u_xlat9.x = x_1166;
        let x_1168 : vec2<f32> = u_xlat43;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec2<f32> = u_xlat43;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1183.w);
        let x_1186 : f32 = u_xlat6.x;
        u_xlat7.y = x_1186;
        let x_1189 : f32 = u_xlat8.y;
        u_xlat7.w = x_1189;
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1191 + x_1192);
        let x_1194 : vec2<f32> = u_xlat43;
        let x_1197 : vec2<f32> = ((vec2<f32>(x_1194.y, x_1194.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1198.x, x_1197.x, x_1198.z, x_1197.y);
        let x_1200 : vec2<f32> = u_xlat43;
        let x_1203 : vec2<f32> = ((vec2<f32>(x_1200.y, x_1200.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1204.w);
        let x_1207 : f32 = u_xlat6.y;
        u_xlat8.y = x_1207;
        let x_1209 : vec4<f32> = u_xlat8;
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1209 + x_1210);
        let x_1212 : vec4<f32> = u_xlat7;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1212 / x_1213);
        let x_1215 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1215 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1222 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1221 / x_1222);
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1224 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1226 : vec4<f32> = u_xlat7;
        let x_1229 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1226.w, x_1226.x, x_1226.y, x_1226.z) * vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x));
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1235 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1232.x, x_1232.w, x_1232.y, x_1232.z) * vec4<f32>(x_1235.y, x_1235.y, x_1235.y, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1239 : vec3<f32> = vec3<f32>(x_1238.y, x_1238.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1239.x, x_1240.y, x_1239.y, x_1239.z);
        let x_1243 : f32 = u_xlat8.x;
        u_xlat10.y = x_1243;
        let x_1245 : vec4<f32> = u_xlat5;
        let x_1248 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat10.y;
        u_xlat7.y = x_1264;
        let x_1267 : f32 = u_xlat8.z;
        u_xlat10.y = x_1267;
        let x_1269 : vec4<f32> = u_xlat5;
        let x_1272 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat5;
        let x_1281 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1286 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.x, x_1281.y)) + vec2<f32>(x_1284.w, x_1284.y));
        let x_1287 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1286.x, x_1286.y, x_1287.z, x_1287.w);
        let x_1290 : f32 = u_xlat10.y;
        u_xlat7.z = x_1290;
        let x_1293 : vec4<f32> = u_xlat5;
        let x_1296 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y) * vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y)) + vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.z));
        let x_1303 : f32 = u_xlat8.w;
        u_xlat10.y = x_1303;
        let x_1306 : vec4<f32> = u_xlat5;
        let x_1309 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1312 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y) * vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y)) + vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1312.y));
        let x_1316 : vec4<f32> = u_xlat5;
        let x_1319 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.w, x_1322.y));
        let x_1326 : f32 = u_xlat10.y;
        u_xlat7.w = x_1326;
        let x_1329 : vec4<f32> = u_xlat5;
        let x_1332 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.x, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec3<f32> = vec3<f32>(x_1338.x, x_1338.z, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1339.z);
        let x_1342 : vec4<f32> = u_xlat5;
        let x_1345 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y) * vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y)) + vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1348.y));
        let x_1352 : vec4<f32> = u_xlat5;
        let x_1355 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1355.x, x_1355.y)) + vec2<f32>(x_1358.w, x_1358.y));
        let x_1362 : f32 = u_xlat7.x;
        u_xlat8.x = x_1362;
        let x_1364 : vec4<f32> = u_xlat5;
        let x_1367 : vec4<f32> = x_171.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.x, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : vec4<f32> = u_xlat6;
        let x_1378 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1376.x, x_1376.x, x_1376.x, x_1376.x) * x_1378);
        let x_1381 : vec4<f32> = u_xlat6;
        let x_1383 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1381.y, x_1381.y, x_1381.y, x_1381.y) * x_1383);
        let x_1386 : vec4<f32> = u_xlat6;
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1386.z, x_1386.z, x_1386.z, x_1386.z) * x_1388);
        let x_1390 : vec4<f32> = u_xlat6;
        let x_1392 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1390.w, x_1390.w, x_1390.w, x_1390.w) * x_1392);
        let x_1395 : vec4<f32> = u_xlat11;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec13;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat59 = x_1407;
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec14;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat60 = x_1421;
        let x_1422 : f32 = u_xlat60;
        let x_1424 : f32 = u_xlat16.y;
        u_xlat60 = (x_1422 * x_1424);
        let x_1427 : f32 = u_xlat16.x;
        let x_1428 : f32 = u_xlat59;
        let x_1430 : f32 = u_xlat60;
        u_xlat59 = ((x_1427 * x_1428) + x_1430);
        let x_1433 : vec2<f32> = u_xlat43;
        let x_1435 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec15;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat60 = x_1444;
        let x_1446 : f32 = u_xlat16.z;
        let x_1447 : f32 = u_xlat60;
        let x_1449 : f32 = u_xlat59;
        u_xlat59 = ((x_1446 * x_1447) + x_1449);
        let x_1452 : vec4<f32> = u_xlat14;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
        let x_1455 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec16;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
        u_xlat60 = x_1464;
        let x_1466 : f32 = u_xlat16.w;
        let x_1467 : f32 = u_xlat60;
        let x_1469 : f32 = u_xlat59;
        u_xlat59 = ((x_1466 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat12;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.x, x_1472.y);
        let x_1475 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec17;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat60 = x_1484;
        let x_1486 : f32 = u_xlat17.x;
        let x_1487 : f32 = u_xlat60;
        let x_1489 : f32 = u_xlat59;
        u_xlat59 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat12;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.z, x_1492.w);
        let x_1495 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec18;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1502.xy, x_1502.z);
        u_xlat60 = x_1504;
        let x_1506 : f32 = u_xlat17.y;
        let x_1507 : f32 = u_xlat60;
        let x_1509 : f32 = u_xlat59;
        u_xlat59 = ((x_1506 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat13;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
        let x_1515 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec19;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat60 = x_1524;
        let x_1526 : f32 = u_xlat17.z;
        let x_1527 : f32 = u_xlat60;
        let x_1529 : f32 = u_xlat59;
        u_xlat59 = ((x_1526 * x_1527) + x_1529);
        let x_1532 : vec4<f32> = u_xlat14;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec20;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat60 = x_1544;
        let x_1546 : f32 = u_xlat17.w;
        let x_1547 : f32 = u_xlat60;
        let x_1549 : f32 = u_xlat59;
        u_xlat59 = ((x_1546 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat15;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec21;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1562.xy, x_1562.z);
        u_xlat60 = x_1564;
        let x_1566 : f32 = u_xlat18.x;
        let x_1567 : f32 = u_xlat60;
        let x_1569 : f32 = u_xlat59;
        u_xlat59 = ((x_1566 * x_1567) + x_1569);
        let x_1572 : vec4<f32> = u_xlat15;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.z, x_1572.w);
        let x_1575 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec22;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1582.xy, x_1582.z);
        u_xlat60 = x_1584;
        let x_1586 : f32 = u_xlat18.y;
        let x_1587 : f32 = u_xlat60;
        let x_1589 : f32 = u_xlat59;
        u_xlat59 = ((x_1586 * x_1587) + x_1589);
        let x_1592 : vec2<f32> = u_xlat26;
        let x_1594 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec23;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1601.xy, x_1601.z);
        u_xlat60 = x_1603;
        let x_1605 : f32 = u_xlat18.z;
        let x_1606 : f32 = u_xlat60;
        let x_1608 : f32 = u_xlat59;
        u_xlat59 = ((x_1605 * x_1606) + x_1608);
        let x_1611 : vec2<f32> = u_xlat51;
        let x_1613 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec24;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1620.xy, x_1620.z);
        u_xlat60 = x_1622;
        let x_1624 : f32 = u_xlat18.w;
        let x_1625 : f32 = u_xlat60;
        let x_1627 : f32 = u_xlat59;
        u_xlat59 = ((x_1624 * x_1625) + x_1627);
        let x_1630 : vec4<f32> = u_xlat10;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec25;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1640.xy, x_1640.z);
        u_xlat60 = x_1642;
        let x_1644 : f32 = u_xlat6.x;
        let x_1645 : f32 = u_xlat60;
        let x_1647 : f32 = u_xlat59;
        u_xlat59 = ((x_1644 * x_1645) + x_1647);
        let x_1650 : vec4<f32> = u_xlat10;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec26;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1660.xy, x_1660.z);
        u_xlat60 = x_1662;
        let x_1664 : f32 = u_xlat6.y;
        let x_1665 : f32 = u_xlat60;
        let x_1667 : f32 = u_xlat59;
        u_xlat59 = ((x_1664 * x_1665) + x_1667);
        let x_1670 : vec2<f32> = u_xlat46;
        let x_1672 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec27;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1679.xy, x_1679.z);
        u_xlat60 = x_1681;
        let x_1683 : f32 = u_xlat6.z;
        let x_1684 : f32 = u_xlat60;
        let x_1686 : f32 = u_xlat59;
        u_xlat59 = ((x_1683 * x_1684) + x_1686);
        let x_1689 : vec4<f32> = u_xlat5;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
        let x_1692 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec28;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat60 = x_1701;
        let x_1703 : f32 = u_xlat6.w;
        let x_1704 : f32 = u_xlat60;
        let x_1706 : f32 = u_xlat59;
        u_xlat58 = ((x_1703 * x_1704) + x_1706);
      }
    }
  } else {
    let x_1710 : vec4<f32> = u_xlat3;
    let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
    let x_1713 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
    let x_1720 : vec3<f32> = txVec29;
    let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
    u_xlat58 = x_1722;
  }
  let x_1724 : f32 = x_171.x_MainLightShadowParams.x;
  u_xlat59 = (-(x_1724) + 1.0f);
  let x_1727 : f32 = u_xlat58;
  let x_1729 : f32 = x_171.x_MainLightShadowParams.x;
  let x_1731 : f32 = u_xlat59;
  u_xlat58 = ((x_1727 * x_1729) + x_1731);
  let x_1734 : f32 = u_xlat3.z;
  u_xlatb59 = (0.0f >= x_1734);
  let x_1737 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_1737 >= 1.0f);
  let x_1740 : bool = u_xlatb59;
  let x_1742 : bool = u_xlatb3.x;
  u_xlatb59 = (x_1740 | x_1742);
  let x_1744 : bool = u_xlatb59;
  let x_1745 : f32 = u_xlat58;
  u_xlat58 = select(x_1745, 1.0f, x_1744);
  let x_1747 : vec4<f32> = vs_TEXCOORD2;
  let x_1751 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1753 : vec3<f32> = (vec3<f32>(x_1747.x, x_1747.y, x_1747.z) + -(x_1751));
  let x_1754 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
  let x_1756 : vec4<f32> = u_xlat3;
  let x_1758 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(vec3<f32>(x_1756.x, x_1756.y, x_1756.z), vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : f32 = u_xlat59;
  let x_1763 : f32 = x_171.x_MainLightShadowParams.z;
  let x_1766 : f32 = x_171.x_MainLightShadowParams.w;
  u_xlat59 = ((x_1761 * x_1763) + x_1766);
  let x_1768 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1768, 0.0f, 1.0f);
  let x_1770 : f32 = u_xlat58;
  u_xlat3.x = (-(x_1770) + 1.0f);
  let x_1774 : f32 = u_xlat59;
  let x_1776 : f32 = u_xlat3.x;
  let x_1778 : f32 = u_xlat58;
  u_xlat58 = ((x_1774 * x_1776) + x_1778);
  let x_1780 : f32 = u_xlat57;
  let x_1783 : vec4<f32> = x_43.x_MainLightColor;
  let x_1785 : vec3<f32> = (vec3<f32>(x_1780, x_1780, x_1780) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1786 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
  let x_1788 : vec4<f32> = u_xlat0;
  let x_1790 : vec4<f32> = u_xlat4;
  let x_1792 : vec3<f32> = (vec3<f32>(x_1788.x, x_1788.x, x_1788.x) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
  let x_1795 : f32 = u_xlat58;
  let x_1797 : f32 = x_374.unity_LightData.z;
  u_xlat0.x = (x_1795 * x_1797);
  let x_1800 : vec4<f32> = u_xlat0;
  let x_1802 : vec4<f32> = u_xlat3;
  let x_1804 : vec3<f32> = (vec3<f32>(x_1800.x, x_1800.x, x_1800.x) * vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : vec4<f32> = u_xlat2;
  let x_1810 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_1807.x, x_1807.y, x_1807.z), vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1815 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1815, 0.0f, 1.0f);
  let x_1818 : vec4<f32> = u_xlat0;
  let x_1820 : vec4<f32> = u_xlat3;
  let x_1822 : vec3<f32> = (vec3<f32>(x_1818.x, x_1818.x, x_1818.x) * vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
  let x_1823 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
  let x_1825 : vec4<f32> = u_xlat1;
  let x_1827 : vec4<f32> = u_xlat3;
  let x_1829 : vec3<f32> = (vec3<f32>(x_1825.x, x_1825.y, x_1825.z) * vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
  let x_1830 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1833 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1835 : f32 = x_374.unity_LightData.y;
  u_xlat0.x = min(x_1833, x_1835);
  let x_1839 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1839));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1851 : u32 = u_xlatu_loop_1;
    let x_1852 : u32 = u_xlatu0;
    if ((x_1851 < x_1852)) {
    } else {
      break;
    }
    let x_1855 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_1855 >> 2u);
    let x_1858 : u32 = u_xlatu_loop_1;
    u_xlati60 = bitcast<i32>((x_1858 & 3u));
    let x_1861 : u32 = u_xlatu59;
    let x_1864 : vec4<f32> = x_374.unity_LightIndices[bitcast<i32>(x_1861)];
    let x_1874 : i32 = u_xlati60;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1879 : vec4<u32> = indexable[x_1874];
    u_xlat59 = dot(x_1864, bitcast<vec4<f32>>(x_1879));
    let x_1883 : f32 = u_xlat59;
    u_xlati59 = i32(x_1883);
    let x_1885 : vec4<f32> = vs_TEXCOORD2;
    let x_1898 : i32 = u_xlati59;
    let x_1900 : vec4<f32> = x_1897.x_AdditionalLightsPosition[x_1898];
    let x_1903 : i32 = u_xlati59;
    let x_1905 : vec4<f32> = x_1897.x_AdditionalLightsPosition[x_1903];
    let x_1907 : vec3<f32> = ((-(vec3<f32>(x_1885.x, x_1885.y, x_1885.z)) * vec3<f32>(x_1900.w, x_1900.w, x_1900.w)) + vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
    let x_1908 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
    let x_1910 : vec4<f32> = u_xlat6;
    let x_1912 : vec4<f32> = u_xlat6;
    u_xlat60 = dot(vec3<f32>(x_1910.x, x_1910.y, x_1910.z), vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
    let x_1915 : f32 = u_xlat60;
    u_xlat60 = max(x_1915, 6.10351562e-05f);
    let x_1918 : f32 = u_xlat60;
    u_xlat61 = inverseSqrt(x_1918);
    let x_1920 : f32 = u_xlat61;
    let x_1922 : vec4<f32> = u_xlat6;
    let x_1924 : vec3<f32> = (vec3<f32>(x_1920, x_1920, x_1920) * vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
    let x_1927 : f32 = u_xlat60;
    u_xlat61 = (1.0f / x_1927);
    let x_1929 : f32 = u_xlat60;
    let x_1930 : i32 = u_xlati59;
    let x_1932 : f32 = x_1897.x_AdditionalLightsAttenuation[x_1930].x;
    u_xlat60 = (x_1929 * x_1932);
    let x_1934 : f32 = u_xlat60;
    let x_1936 : f32 = u_xlat60;
    u_xlat60 = ((-(x_1934) * x_1936) + 1.0f);
    let x_1939 : f32 = u_xlat60;
    u_xlat60 = max(x_1939, 0.0f);
    let x_1941 : f32 = u_xlat60;
    let x_1942 : f32 = u_xlat60;
    u_xlat60 = (x_1941 * x_1942);
    let x_1944 : f32 = u_xlat60;
    let x_1945 : f32 = u_xlat61;
    u_xlat60 = (x_1944 * x_1945);
    let x_1947 : i32 = u_xlati59;
    let x_1949 : vec4<f32> = x_1897.x_AdditionalLightsSpotDir[x_1947];
    let x_1951 : vec4<f32> = u_xlat6;
    u_xlat61 = dot(vec3<f32>(x_1949.x, x_1949.y, x_1949.z), vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
    let x_1954 : f32 = u_xlat61;
    let x_1955 : i32 = u_xlati59;
    let x_1957 : f32 = x_1897.x_AdditionalLightsAttenuation[x_1955].z;
    let x_1959 : i32 = u_xlati59;
    let x_1961 : f32 = x_1897.x_AdditionalLightsAttenuation[x_1959].w;
    u_xlat61 = ((x_1954 * x_1957) + x_1961);
    let x_1963 : f32 = u_xlat61;
    u_xlat61 = clamp(x_1963, 0.0f, 1.0f);
    let x_1965 : f32 = u_xlat61;
    let x_1966 : f32 = u_xlat61;
    u_xlat61 = (x_1965 * x_1966);
    let x_1968 : f32 = u_xlat60;
    let x_1969 : f32 = u_xlat61;
    u_xlat60 = (x_1968 * x_1969);
    let x_1971 : f32 = u_xlat57;
    let x_1973 : i32 = u_xlati59;
    let x_1975 : vec4<f32> = x_1897.x_AdditionalLightsColor[x_1973];
    let x_1977 : vec3<f32> = (vec3<f32>(x_1971, x_1971, x_1971) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
    let x_1978 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
    let x_1980 : f32 = u_xlat60;
    let x_1982 : vec4<f32> = u_xlat7;
    let x_1984 : vec3<f32> = (vec3<f32>(x_1980, x_1980, x_1980) * vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
    let x_1985 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
    let x_1987 : vec4<f32> = u_xlat2;
    let x_1989 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
    let x_1992 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1992, 0.0f, 1.0f);
    let x_1994 : f32 = u_xlat59;
    let x_1996 : vec4<f32> = u_xlat7;
    let x_1998 : vec3<f32> = (vec3<f32>(x_1994, x_1994, x_1994) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
    let x_1999 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
    let x_2001 : vec4<f32> = u_xlat6;
    let x_2003 : vec4<f32> = u_xlat1;
    let x_2006 : vec4<f32> = u_xlat5;
    let x_2008 : vec3<f32> = ((vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(x_2003.x, x_2003.y, x_2003.z)) + vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
    let x_2009 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2009.w);

    continuing {
      let x_2011 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2011 + bitcast<u32>(1i));
    }
  }
  let x_2013 : vec4<f32> = u_xlat4;
  let x_2015 : vec4<f32> = u_xlat1;
  let x_2018 : vec4<f32> = u_xlat3;
  let x_2020 : vec3<f32> = ((vec3<f32>(x_2013.x, x_2013.y, x_2013.z) * vec3<f32>(x_2015.x, x_2015.y, x_2015.z)) + vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
  let x_2021 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
  let x_2025 : vec4<f32> = u_xlat5;
  let x_2027 : vec4<f32> = u_xlat1;
  let x_2029 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : bool = u_xlatb38;
  let x_2033 : f32 = u_xlat19;
  SV_Target0.w = select(1.0f, x_2033, x_2032);
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

