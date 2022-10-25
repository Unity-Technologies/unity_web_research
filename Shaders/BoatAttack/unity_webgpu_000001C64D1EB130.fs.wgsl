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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_332 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_396 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_534 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_651 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_766 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat34 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatb36 : bool;
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_482 : f32;
  var x_493 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlati27 : i32;
  var u_xlati39 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb27 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb30 : vec2<bool>;
  var u_xlat30 : vec2<f32>;
  var x_1068 : f32;
  var x_1081 : f32;
  var x_1133 : f32;
  var x_1145 : vec3<f32>;
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
  u_xlat11 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat33;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat22;
  u_xlat22 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat11;
  let x_106 : f32 = u_xlat22;
  u_xlat11 = (x_105 / x_106);
  let x_108 : f32 = u_xlat11;
  u_xlat11 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat11;
  u_xlat11 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb22;
  if (x_118) {
    let x_122 : f32 = u_xlat11;
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
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_162 : f32 = hlslcc_FragCoord.w;
  let x_165 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_162 * x_165);
  let x_169 : f32 = u_xlat0.x;
  let x_173 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_169 / x_173);
  let x_177 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_177) + 1.0f);
  let x_182 : f32 = u_xlat0.x;
  let x_184 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_182 * x_184);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_188, 0.0f);
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_192 * x_195);
  let x_205 : vec2<f32> = vs_TEXCOORD1;
  let x_207 : f32 = x_43.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_205, x_207);
  u_xlat3 = x_208;
  let x_214 : vec2<f32> = vs_TEXCOORD1;
  let x_216 : f32 = x_43.x_GlobalMipBias.x;
  let x_217 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_214, x_216);
  let x_218 : vec3<f32> = vec3<f32>(x_217.x, x_217.y, x_217.z);
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat3;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec3<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(x_228, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : f32 = u_xlat33;
  u_xlat33 = (x_232 + 0.5f);
  let x_234 : f32 = u_xlat33;
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec3<f32> = (vec3<f32>(x_234, x_234, x_234) * vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : f32 = u_xlat3.w;
  u_xlat33 = max(x_242, 0.0001f);
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : f32 = u_xlat33;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) / vec3<f32>(x_246, x_246, x_246));
  let x_249 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_254 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_255 : vec2<f32> = vec2<f32>(x_254.x, x_254.y);
  let x_259 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_255.x, x_255.y));
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_259.y, x_260.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec4<f32> = hlslcc_FragCoord;
  let x_266 : vec2<f32> = (vec2<f32>(x_262.x, x_262.y) * vec2<f32>(x_264.x, x_264.y));
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
  let x_270 : f32 = u_xlat4.y;
  let x_273 : f32 = x_43.x_ScaleBiasRt.x;
  let x_276 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat33 = ((x_270 * x_273) + x_276);
  let x_278 : f32 = u_xlat33;
  u_xlat4.z = (-(x_278) + 1.0f);
  let x_287 : vec4<f32> = u_xlat4;
  let x_290 : f32 = x_43.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_287.x, x_287.z), x_290);
  u_xlat33 = x_291.x;
  let x_294 : f32 = u_xlat33;
  u_xlat34 = (x_294 + -1.0f);
  let x_299 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_300 : f32 = u_xlat34;
  u_xlat34 = ((x_299 * x_300) + 1.0f);
  let x_303 : f32 = u_xlat33;
  u_xlat33 = min(x_303, 1.0f);
  let x_307 : vec4<f32> = vs_TEXCOORD6;
  let x_308 : vec2<f32> = vec2<f32>(x_307.x, x_307.y);
  let x_310 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_308.x, x_308.y, x_310);
  let x_323 : vec3<f32> = txVec0;
  let x_325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_323.xy, x_323.z);
  u_xlat35 = x_325;
  let x_334 : f32 = x_332.x_MainLightShadowParams.x;
  u_xlat36 = (-(x_334) + 1.0f);
  let x_337 : f32 = u_xlat35;
  let x_339 : f32 = x_332.x_MainLightShadowParams.x;
  let x_341 : f32 = u_xlat36;
  u_xlat35 = ((x_337 * x_339) + x_341);
  let x_345 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (0.0f >= x_345);
  let x_349 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_349 >= 1.0f);
  let x_351 : bool = u_xlatb36;
  let x_352 : bool = u_xlatb4;
  u_xlatb36 = (x_351 | x_352);
  let x_354 : bool = u_xlatb36;
  let x_355 : f32 = u_xlat35;
  u_xlat35 = select(x_355, 1.0f, x_354);
  let x_358 : vec4<f32> = vs_TEXCOORD2;
  let x_363 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_365 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + -(x_363));
  let x_366 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat4;
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : f32 = u_xlat36;
  let x_375 : f32 = x_332.x_MainLightShadowParams.z;
  let x_378 : f32 = x_332.x_MainLightShadowParams.w;
  u_xlat36 = ((x_373 * x_375) + x_378);
  let x_380 : f32 = u_xlat36;
  u_xlat36 = clamp(x_380, 0.0f, 1.0f);
  let x_382 : f32 = u_xlat35;
  u_xlat4.x = (-(x_382) + 1.0f);
  let x_386 : f32 = u_xlat36;
  let x_388 : f32 = u_xlat4.x;
  let x_390 : f32 = u_xlat35;
  u_xlat35 = ((x_386 * x_388) + x_390);
  let x_398 : f32 = x_396.x_MainLightCookieTextureFormat;
  u_xlatb36 = !((x_398 == -1.0f));
  let x_400 : bool = u_xlatb36;
  if (x_400) {
    let x_403 : vec4<f32> = vs_TEXCOORD2;
    let x_406 : vec4<f32> = x_396.x_MainLightWorldToLight[1i];
    let x_408 : vec2<f32> = (vec2<f32>(x_403.y, x_403.y) * vec2<f32>(x_406.x, x_406.y));
    let x_409 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
    let x_412 : vec4<f32> = x_396.x_MainLightWorldToLight[0i];
    let x_414 : vec4<f32> = vs_TEXCOORD2;
    let x_417 : vec4<f32> = u_xlat4;
    let x_419 : vec2<f32> = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_414.x, x_414.x)) + vec2<f32>(x_417.x, x_417.y));
    let x_420 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_423 : vec4<f32> = x_396.x_MainLightWorldToLight[2i];
    let x_425 : vec4<f32> = vs_TEXCOORD2;
    let x_428 : vec4<f32> = u_xlat4;
    let x_430 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_425.z, x_425.z)) + vec2<f32>(x_428.x, x_428.y));
    let x_431 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_433 : vec4<f32> = u_xlat4;
    let x_437 : vec4<f32> = x_396.x_MainLightWorldToLight[3i];
    let x_439 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) + vec2<f32>(x_437.x, x_437.y));
    let x_440 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat4;
    let x_446 : vec2<f32> = ((vec2<f32>(x_442.x, x_442.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_447 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
    let x_454 : vec4<f32> = u_xlat4;
    let x_457 : f32 = x_43.x_GlobalMipBias.x;
    let x_458 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_454.x, x_454.y), x_457);
    u_xlat4 = x_458;
    let x_463 : f32 = x_396.x_MainLightCookieTextureFormat;
    let x_465 : f32 = x_396.x_MainLightCookieTextureFormat;
    let x_467 : f32 = x_396.x_MainLightCookieTextureFormat;
    let x_469 : f32 = x_396.x_MainLightCookieTextureFormat;
    let x_470 : vec4<f32> = vec4<f32>(x_463, x_465, x_467, x_469);
    let x_478 : vec4<bool> = (vec4<f32>(x_470.x, x_470.y, x_470.z, x_470.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_478.x, x_478.y);
    let x_481 : bool = u_xlatb5.y;
    if (x_481) {
      let x_486 : f32 = u_xlat4.w;
      x_482 = x_486;
    } else {
      let x_489 : f32 = u_xlat4.x;
      x_482 = x_489;
    }
    let x_490 : f32 = x_482;
    u_xlat36 = x_490;
    let x_492 : bool = u_xlatb5.x;
    if (x_492) {
      let x_496 : vec4<f32> = u_xlat4;
      x_493 = vec3<f32>(x_496.x, x_496.y, x_496.z);
    } else {
      let x_499 : f32 = u_xlat36;
      x_493 = vec3<f32>(x_499, x_499, x_499);
    }
    let x_501 : vec3<f32> = x_493;
    let x_502 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_508 : vec4<f32> = u_xlat4;
  let x_511 : vec4<f32> = x_43.x_MainLightColor;
  let x_513 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : f32 = u_xlat34;
  let x_518 : vec4<f32> = u_xlat4;
  let x_520 : vec3<f32> = (vec3<f32>(x_516, x_516, x_516) * vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : f32 = u_xlat33;
  let x_525 : vec4<f32> = u_xlat3;
  let x_527 : vec3<f32> = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : f32 = u_xlat35;
  let x_536 : f32 = x_534.unity_LightData.z;
  u_xlat33 = (x_530 * x_536);
  let x_538 : f32 = u_xlat33;
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec3<f32> = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat2;
  let x_547 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat33 = dot(x_545, vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : f32 = u_xlat33;
  u_xlat33 = clamp(x_550, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat33;
  let x_554 : vec4<f32> = u_xlat4;
  let x_556 : vec3<f32> = (vec3<f32>(x_552, x_552, x_552) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat1;
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_568 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_570 : f32 = x_534.unity_LightData.y;
  u_xlat33 = min(x_568, x_570);
  let x_574 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_574));
  let x_578 : f32 = x_396.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_580 : f32 = x_396.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_582 : f32 = x_396.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_584 : f32 = x_396.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_585 : vec4<f32> = vec4<f32>(x_578, x_580, x_582, x_584);
  let x_591 : vec4<bool> = (vec4<f32>(x_585.x, x_585.y, x_585.z, x_585.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_591.x, x_591.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_603 : u32 = u_xlatu_loop_1;
    let x_604 : u32 = u_xlatu33;
    if ((x_603 < x_604)) {
    } else {
      break;
    }
    let x_607 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_607 >> 2u);
    let x_611 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_611 & 3u));
    let x_614 : u32 = u_xlatu36;
    let x_617 : vec4<f32> = x_534.unity_LightIndices[bitcast<i32>(x_614)];
    let x_627 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_632 : vec4<u32> = indexable[x_627];
    u_xlat36 = dot(x_617, bitcast<vec4<f32>>(x_632));
    let x_635 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_635));
    let x_639 : vec4<f32> = vs_TEXCOORD2;
    let x_652 : u32 = u_xlatu36;
    let x_655 : vec4<f32> = x_651.x_AdditionalLightsPosition[bitcast<i32>(x_652)];
    let x_658 : u32 = u_xlatu36;
    let x_661 : vec4<f32> = x_651.x_AdditionalLightsPosition[bitcast<i32>(x_658)];
    u_xlat7 = ((-(vec3<f32>(x_639.x, x_639.y, x_639.z)) * vec3<f32>(x_655.w, x_655.w, x_655.w)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
    let x_665 : vec3<f32> = u_xlat7;
    let x_666 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_665, x_666);
    let x_668 : f32 = u_xlat37;
    u_xlat37 = max(x_668, 6.10351562e-05f);
    let x_673 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_673);
    let x_676 : vec2<f32> = u_xlat27;
    let x_678 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678);
    let x_680 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_680);
    let x_683 : f32 = u_xlat37;
    let x_684 : u32 = u_xlatu36;
    let x_687 : f32 = x_651.x_AdditionalLightsAttenuation[bitcast<i32>(x_684)].x;
    u_xlat37 = (x_683 * x_687);
    let x_689 : f32 = u_xlat37;
    let x_691 : f32 = u_xlat37;
    u_xlat37 = ((-(x_689) * x_691) + 1.0f);
    let x_694 : f32 = u_xlat37;
    u_xlat37 = max(x_694, 0.0f);
    let x_696 : f32 = u_xlat37;
    let x_697 : f32 = u_xlat37;
    u_xlat37 = (x_696 * x_697);
    let x_699 : f32 = u_xlat37;
    let x_701 : f32 = u_xlat27.x;
    u_xlat37 = (x_699 * x_701);
    let x_703 : u32 = u_xlatu36;
    let x_706 : vec4<f32> = x_651.x_AdditionalLightsSpotDir[bitcast<i32>(x_703)];
    let x_708 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_706.x, x_706.y, x_706.z), x_708);
    let x_712 : f32 = u_xlat27.x;
    let x_713 : u32 = u_xlatu36;
    let x_716 : f32 = x_651.x_AdditionalLightsAttenuation[bitcast<i32>(x_713)].z;
    let x_718 : u32 = u_xlatu36;
    let x_721 : f32 = x_651.x_AdditionalLightsAttenuation[bitcast<i32>(x_718)].w;
    u_xlat27.x = ((x_712 * x_716) + x_721);
    let x_725 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_725, 0.0f, 1.0f);
    let x_729 : f32 = u_xlat27.x;
    let x_731 : f32 = u_xlat27.x;
    u_xlat27.x = (x_729 * x_731);
    let x_734 : f32 = u_xlat37;
    let x_736 : f32 = u_xlat27.x;
    u_xlat37 = (x_734 * x_736);
    let x_739 : u32 = u_xlatu36;
    u_xlatu27 = (x_739 >> 5u);
    let x_742 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_742) & 31i)));
    let x_748 : i32 = u_xlati38;
    let x_750 : u32 = u_xlatu27;
    let x_753 : f32 = x_396.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_750)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_748) & bitcast<u32>(x_753)));
    let x_757 : i32 = u_xlati27;
    if ((x_757 != 0i)) {
      let x_767 : u32 = u_xlatu36;
      let x_770 : f32 = x_766.x_AdditionalLightsLightTypes[bitcast<i32>(x_767)].el;
      u_xlati27 = i32(x_770);
      let x_772 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_772 != 0i));
      let x_776 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_776) << bitcast<u32>(2i));
      let x_779 : i32 = u_xlati38;
      if ((x_779 != 0i)) {
        let x_784 : vec4<f32> = vs_TEXCOORD2;
        let x_786 : i32 = u_xlati39;
        let x_789 : i32 = u_xlati39;
        let x_793 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_786 + 1i) / 4i)][((x_789 + 1i) % 4i)];
        let x_795 : vec3<f32> = (vec3<f32>(x_784.y, x_784.y, x_784.y) * vec3<f32>(x_793.x, x_793.y, x_793.w));
        let x_796 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
        let x_798 : i32 = u_xlati39;
        let x_800 : i32 = u_xlati39;
        let x_803 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[(x_798 / 4i)][(x_800 % 4i)];
        let x_805 : vec4<f32> = vs_TEXCOORD2;
        let x_808 : vec4<f32> = u_xlat8;
        let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.w) * vec3<f32>(x_805.x, x_805.x, x_805.x)) + vec3<f32>(x_808.x, x_808.y, x_808.z));
        let x_811 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
        let x_813 : i32 = u_xlati39;
        let x_816 : i32 = u_xlati39;
        let x_820 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_813 + 2i) / 4i)][((x_816 + 2i) % 4i)];
        let x_822 : vec4<f32> = vs_TEXCOORD2;
        let x_825 : vec4<f32> = u_xlat8;
        let x_827 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.y, x_820.w) * vec3<f32>(x_822.z, x_822.z, x_822.z)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat8;
        let x_832 : i32 = u_xlati39;
        let x_835 : i32 = u_xlati39;
        let x_839 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_832 + 3i) / 4i)][((x_835 + 3i) % 4i)];
        let x_841 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) + vec3<f32>(x_839.x, x_839.y, x_839.w));
        let x_842 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat8;
        let x_846 : vec4<f32> = u_xlat8;
        let x_848 : vec2<f32> = (vec2<f32>(x_844.x, x_844.y) / vec2<f32>(x_846.z, x_846.z));
        let x_849 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat8;
        let x_854 : vec2<f32> = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat8;
        let x_861 : vec2<f32> = clamp(vec2<f32>(x_857.x, x_857.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : u32 = u_xlatu36;
        let x_867 : vec4<f32> = x_766.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_864)];
        let x_869 : vec4<f32> = u_xlat8;
        let x_872 : u32 = u_xlatu36;
        let x_875 : vec4<f32> = x_766.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_872)];
        let x_877 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_869.x, x_869.y)) + vec2<f32>(x_875.z, x_875.w));
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
      } else {
        let x_882 : i32 = u_xlati27;
        u_xlatb27 = (x_882 == 1i);
        let x_884 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_884);
        let x_886 : i32 = u_xlati27;
        if ((x_886 != 0i)) {
          let x_890 : vec4<f32> = vs_TEXCOORD2;
          let x_892 : i32 = u_xlati39;
          let x_895 : i32 = u_xlati39;
          let x_899 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_892 + 1i) / 4i)][((x_895 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_890.y, x_890.y) * vec2<f32>(x_899.x, x_899.y));
          let x_902 : i32 = u_xlati39;
          let x_904 : i32 = u_xlati39;
          let x_907 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[(x_902 / 4i)][(x_904 % 4i)];
          let x_909 : vec4<f32> = vs_TEXCOORD2;
          let x_912 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_907.x, x_907.y) * vec2<f32>(x_909.x, x_909.x)) + x_912);
          let x_914 : i32 = u_xlati39;
          let x_917 : i32 = u_xlati39;
          let x_921 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_914 + 2i) / 4i)][((x_917 + 2i) % 4i)];
          let x_923 : vec4<f32> = vs_TEXCOORD2;
          let x_926 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_921.x, x_921.y) * vec2<f32>(x_923.z, x_923.z)) + x_926);
          let x_928 : vec2<f32> = u_xlat27;
          let x_929 : i32 = u_xlati39;
          let x_932 : i32 = u_xlati39;
          let x_936 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_929 + 3i) / 4i)][((x_932 + 3i) % 4i)];
          u_xlat27 = (x_928 + vec2<f32>(x_936.x, x_936.y));
          let x_939 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_939 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_942 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_942);
          let x_944 : u32 = u_xlatu36;
          let x_947 : vec4<f32> = x_766.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_944)];
          let x_949 : vec2<f32> = u_xlat27;
          let x_951 : u32 = u_xlatu36;
          let x_954 : vec4<f32> = x_766.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_951)];
          let x_956 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.y) * x_949) + vec2<f32>(x_954.z, x_954.w));
          let x_957 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        } else {
          let x_961 : vec4<f32> = vs_TEXCOORD2;
          let x_963 : i32 = u_xlati39;
          let x_966 : i32 = u_xlati39;
          let x_970 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_963 + 1i) / 4i)][((x_966 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_961.y, x_961.y, x_961.y, x_961.y) * x_970);
          let x_972 : i32 = u_xlati39;
          let x_974 : i32 = u_xlati39;
          let x_977 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[(x_972 / 4i)][(x_974 % 4i)];
          let x_978 : vec4<f32> = vs_TEXCOORD2;
          let x_981 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_977 * vec4<f32>(x_978.x, x_978.x, x_978.x, x_978.x)) + x_981);
          let x_983 : i32 = u_xlati39;
          let x_986 : i32 = u_xlati39;
          let x_990 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_983 + 2i) / 4i)][((x_986 + 2i) % 4i)];
          let x_991 : vec4<f32> = vs_TEXCOORD2;
          let x_994 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_990 * vec4<f32>(x_991.z, x_991.z, x_991.z, x_991.z)) + x_994);
          let x_996 : vec4<f32> = u_xlat9;
          let x_997 : i32 = u_xlati39;
          let x_1000 : i32 = u_xlati39;
          let x_1004 : vec4<f32> = x_766.x_AdditionalLightsWorldToLights[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
          u_xlat9 = (x_996 + x_1004);
          let x_1006 : vec4<f32> = u_xlat9;
          let x_1008 : vec4<f32> = u_xlat9;
          let x_1010 : vec3<f32> = (vec3<f32>(x_1006.x, x_1006.y, x_1006.z) / vec3<f32>(x_1008.w, x_1008.w, x_1008.w));
          let x_1011 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
          let x_1013 : vec4<f32> = u_xlat9;
          let x_1015 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
          let x_1020 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1020);
          let x_1023 : vec2<f32> = u_xlat27;
          let x_1025 : vec4<f32> = u_xlat9;
          let x_1027 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.x, x_1023.x) * vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
          let x_1028 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
          let x_1030 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1030.x, x_1030.y, x_1030.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1037 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1037, 0.000001f);
          let x_1042 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1042);
          let x_1046 : vec2<f32> = u_xlat27;
          let x_1048 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1046.x, x_1046.x, x_1046.x) * vec3<f32>(x_1048.z, x_1048.x, x_1048.y));
          let x_1052 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1052);
          let x_1056 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1056, 0.0f, 1.0f);
          let x_1060 : vec3<f32> = u_xlat10;
          let x_1063 : vec4<bool> = (vec4<f32>(x_1060.y, x_1060.z, x_1060.y, x_1060.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1063.x, x_1063.y);
          let x_1067 : bool = u_xlatb30.x;
          if (x_1067) {
            let x_1072 : f32 = u_xlat10.x;
            x_1068 = x_1072;
          } else {
            let x_1075 : f32 = u_xlat10.x;
            x_1068 = -(x_1075);
          }
          let x_1077 : f32 = x_1068;
          u_xlat30.x = x_1077;
          let x_1080 : bool = u_xlatb30.y;
          if (x_1080) {
            let x_1085 : f32 = u_xlat10.x;
            x_1081 = x_1085;
          } else {
            let x_1088 : f32 = u_xlat10.x;
            x_1081 = -(x_1088);
          }
          let x_1090 : f32 = x_1081;
          u_xlat30.y = x_1090;
          let x_1092 : vec4<f32> = u_xlat9;
          let x_1094 : vec2<f32> = u_xlat27;
          let x_1097 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1094.x, x_1094.x)) + x_1097);
          let x_1099 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1099 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1102 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1102, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1106 : u32 = u_xlatu36;
          let x_1109 : vec4<f32> = x_766.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1106)];
          let x_1111 : vec2<f32> = u_xlat27;
          let x_1113 : u32 = u_xlatu36;
          let x_1116 : vec4<f32> = x_766.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1113)];
          let x_1118 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * x_1111) + vec2<f32>(x_1116.z, x_1116.w));
          let x_1119 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        }
      }
      let x_1126 : vec4<f32> = u_xlat8;
      let x_1129 : f32 = x_43.x_GlobalMipBias.x;
      let x_1130 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1126.x, x_1126.y), x_1129);
      u_xlat8 = x_1130;
      let x_1132 : bool = u_xlatb5.y;
      if (x_1132) {
        let x_1137 : f32 = u_xlat8.w;
        x_1133 = x_1137;
      } else {
        let x_1140 : f32 = u_xlat8.x;
        x_1133 = x_1140;
      }
      let x_1141 : f32 = x_1133;
      u_xlat27.x = x_1141;
      let x_1144 : bool = u_xlatb5.x;
      if (x_1144) {
        let x_1148 : vec4<f32> = u_xlat8;
        x_1145 = vec3<f32>(x_1148.x, x_1148.y, x_1148.z);
      } else {
        let x_1151 : vec2<f32> = u_xlat27;
        x_1145 = vec3<f32>(x_1151.x, x_1151.x, x_1151.x);
      }
      let x_1153 : vec3<f32> = x_1145;
      let x_1154 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1160 : vec4<f32> = u_xlat8;
    let x_1162 : u32 = u_xlatu36;
    let x_1165 : vec4<f32> = x_651.x_AdditionalLightsColor[bitcast<i32>(x_1162)];
    let x_1167 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) * vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
    let x_1168 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
    let x_1170 : f32 = u_xlat34;
    let x_1172 : vec4<f32> = u_xlat8;
    let x_1174 : vec3<f32> = (vec3<f32>(x_1170, x_1170, x_1170) * vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
    let x_1175 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : f32 = u_xlat37;
    let x_1179 : vec4<f32> = u_xlat8;
    let x_1181 : vec3<f32> = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
    let x_1182 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
    let x_1184 : vec3<f32> = u_xlat2;
    let x_1185 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1184, x_1185);
    let x_1187 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1187, 0.0f, 1.0f);
    let x_1189 : f32 = u_xlat36;
    let x_1191 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1189, x_1189, x_1189) * vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
    let x_1194 : vec3<f32> = u_xlat7;
    let x_1195 : vec4<f32> = u_xlat1;
    let x_1198 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1194 * vec3<f32>(x_1195.x, x_1195.y, x_1195.z)) + x_1198);

    continuing {
      let x_1200 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1200 + bitcast<u32>(1i));
    }
  }
  let x_1202 : vec4<f32> = u_xlat3;
  let x_1204 : vec4<f32> = u_xlat1;
  let x_1207 : vec4<f32> = u_xlat4;
  let x_1209 : vec3<f32> = ((vec3<f32>(x_1202.x, x_1202.y, x_1202.z) * vec3<f32>(x_1204.x, x_1204.y, x_1204.z)) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec3<f32> = u_xlat6;
  let x_1213 : vec4<f32> = u_xlat1;
  let x_1215 : vec3<f32> = (x_1212 + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1219 : f32 = u_xlat0.x;
  let x_1221 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1219 * -(x_1221));
  let x_1226 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1226);
  let x_1229 : vec4<f32> = u_xlat1;
  let x_1233 : vec4<f32> = x_43.unity_FogColor;
  let x_1236 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) + -(vec3<f32>(x_1233.x, x_1233.y, x_1233.z)));
  let x_1237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1241 : vec4<f32> = u_xlat0;
  let x_1243 : vec4<f32> = u_xlat1;
  let x_1247 : vec4<f32> = x_43.unity_FogColor;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1241.x, x_1241.x, x_1241.x) * vec3<f32>(x_1243.x, x_1243.y, x_1243.z)) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : bool = u_xlatb22;
  let x_1253 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1253, x_1252);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

