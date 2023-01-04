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
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_277 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1908 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2045 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2228 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2356 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat60 : f32;
  var u_xlatb40 : bool;
  var x_131 : f32;
  var u_xlatb20 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu60 : u32;
  var u_xlati60 : i32;
  var u_xlat62 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlatb64 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat64 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb24 : bool;
  var u_xlat24 : f32;
  var u_xlatb6 : vec2<bool>;
  var x_1993 : f32;
  var x_2004 : vec3<f32>;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu65 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlatu66 : u32;
  var u_xlati67 : i32;
  var u_xlati66 : i32;
  var u_xlati68 : i32;
  var u_xlatb66 : bool;
  var u_xlatb49 : vec2<bool>;
  var x_2648 : f32;
  var x_2661 : f32;
  var x_2713 : f32;
  var x_2724 : vec3<f32>;
  var x_2905 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_57.x_BaseColor.w;
  let x_91 : f32 = x_57.x_Cutoff;
  u_xlat20.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat40 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat60 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat60;
  let x_105 : f32 = u_xlat40;
  u_xlat40 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat40;
  u_xlat40 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat20.x;
  let x_113 : f32 = u_xlat40;
  u_xlat20.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat20.x;
  u_xlat20.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb40 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb40;
  if (x_130) {
    let x_135 : f32 = u_xlat20.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat20.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat20.x;
  u_xlatb20 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb20;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat20;
  let x_189 : vec3<f32> = u_xlat20;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec3<f32> = u_xlat20;
  let x_214 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_211.z, x_211.z, x_211.z) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec3<f32> = u_xlat20;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  let x_223 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_220.x, x_220.y, x_220.z)) + x_223);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = vs_TEXCOORD2;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat20;
  let x_243 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_241.x, x_241.x, x_241.x) * x_243);
  let x_247 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_247;
  let x_250 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_250;
  let x_254 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_254;
  let x_256 : vec3<f32> = u_xlat3;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat20.x = dot(x_256, x_257);
  let x_261 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_261, 1.17549435e-37f);
  let x_266 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_266);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres0;
  let x_282 : vec3<f32> = (x_272 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres1;
  let x_291 : vec3<f32> = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres2;
  let x_301 : vec3<f32> = (x_295 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_302 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres3;
  let x_310 : vec3<f32> = (x_305 + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = u_xlat7;
  let x_333 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_340 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = x_277.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_340 < x_343);
  let x_346 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_346);
  let x_350 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_362);
  let x_367 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_367);
  let x_371 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_371);
  let x_374 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + vec3<f32>(x_376.y, x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat4;
  let x_384 : vec3<f32> = max(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_384.x, x_384.y, x_384.z);
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(x_387, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_392 : f32 = u_xlat60;
  u_xlat60 = (-(x_392) + 4.0f);
  let x_397 : f32 = u_xlat60;
  u_xlatu60 = u32(x_397);
  let x_401 : u32 = u_xlatu60;
  u_xlati60 = (bitcast<i32>(x_401) << bitcast<u32>(2i));
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_406 : i32 = u_xlati60;
  let x_409 : i32 = u_xlati60;
  let x_413 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_406 + 1i) / 4i)][((x_409 + 1i) % 4i)];
  let x_415 : vec3<f32> = (vec3<f32>(x_404.y, x_404.y, x_404.y) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : i32 = u_xlati60;
  let x_420 : i32 = u_xlati60;
  let x_423 : vec4<f32> = x_277.x_MainLightWorldToShadow[(x_418 / 4i)][(x_420 % 4i)];
  let x_425 : vec3<f32> = vs_TEXCOORD1;
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.x, x_425.x)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : i32 = u_xlati60;
  let x_436 : i32 = u_xlati60;
  let x_440 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_433 + 2i) / 4i)][((x_436 + 2i) % 4i)];
  let x_442 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.z, x_442.z, x_442.z)) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat4;
  let x_452 : i32 = u_xlati60;
  let x_455 : i32 = u_xlati60;
  let x_459 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_452 + 3i) / 4i)][((x_455 + 3i) % 4i)];
  let x_461 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : f32 = vs_TEXCOORD1.y;
  let x_468 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat60 = (x_465 * x_468);
  let x_471 : f32 = x_44.unity_MatrixV[0i].z;
  let x_473 : f32 = vs_TEXCOORD1.x;
  let x_475 : f32 = u_xlat60;
  u_xlat60 = ((x_471 * x_473) + x_475);
  let x_478 : f32 = x_44.unity_MatrixV[2i].z;
  let x_480 : f32 = vs_TEXCOORD1.z;
  let x_482 : f32 = u_xlat60;
  u_xlat60 = ((x_478 * x_480) + x_482);
  let x_484 : f32 = u_xlat60;
  let x_486 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat60 = (x_484 + x_486);
  let x_488 : f32 = u_xlat60;
  let x_492 : f32 = x_44.x_ProjectionParams.y;
  u_xlat60 = (-(x_488) + -(x_492));
  let x_495 : f32 = u_xlat60;
  u_xlat60 = max(x_495, 0.0f);
  let x_497 : f32 = u_xlat60;
  let x_500 : f32 = x_44.unity_FogParams.x;
  u_xlat60 = (x_497 * x_500);
  let x_508 : vec2<f32> = vs_TEXCOORD7;
  let x_510 : f32 = x_44.x_GlobalMipBias.x;
  let x_511 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_508, x_510);
  u_xlat5 = x_511;
  let x_516 : vec2<f32> = vs_TEXCOORD7;
  let x_518 : f32 = x_44.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_516, x_518);
  let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.z);
  let x_521 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat5;
  let x_527 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_528 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec3<f32> = u_xlat2;
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(x_530, vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_536 : f32 = u_xlat1.x;
  u_xlat1.x = (x_536 + 0.5f);
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec4<f32> = u_xlat6;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.x, x_539.x) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = u_xlat5.w;
  u_xlat1.x = max(x_547, 0.0001f);
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec4<f32> = u_xlat1;
  let x_554 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) / vec3<f32>(x_552.x, x_552.x, x_552.x));
  let x_555 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_560 : vec2<f32> = vec2<f32>(x_559.x, x_559.y);
  let x_564 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_560.x, x_560.y));
  let x_565 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat6;
  let x_569 : vec4<f32> = hlslcc_FragCoord;
  let x_571 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(x_569.x, x_569.y));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_575 : f32 = u_xlat6.y;
  let x_578 : f32 = x_44.x_ScaleBiasRt.x;
  let x_581 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_575 * x_578) + x_581);
  let x_585 : f32 = u_xlat1.x;
  u_xlat6.z = (-(x_585) + 1.0f);
  let x_594 : vec4<f32> = u_xlat6;
  let x_597 : f32 = x_44.x_GlobalMipBias.x;
  let x_598 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_594.x, x_594.z), x_597);
  u_xlat1.x = x_598.x;
  let x_603 : f32 = u_xlat1.x;
  u_xlat62 = (x_603 + -1.0f);
  let x_606 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_607 : f32 = u_xlat62;
  u_xlat62 = ((x_606 * x_607) + 1.0f);
  let x_611 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_611, 1.0f);
  let x_616 : f32 = x_277.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_616);
  let x_618 : bool = u_xlatb63;
  if (x_618) {
    let x_622 : f32 = x_277.x_MainLightShadowParams.y;
    u_xlatb63 = (x_622 == 1.0f);
    let x_624 : bool = u_xlatb63;
    if (x_624) {
      let x_627 : vec4<f32> = u_xlat4;
      let x_631 : vec4<f32> = x_277.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_627.x, x_627.y, x_627.x, x_627.y) + x_631);
      let x_634 : vec4<f32> = u_xlat6;
      let x_635 : vec2<f32> = vec2<f32>(x_634.x, x_634.y);
      let x_637 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_635.x, x_635.y, x_637);
      let x_649 : vec3<f32> = txVec0;
      let x_651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_649.xy, x_649.z);
      u_xlat7.x = x_651;
      let x_654 : vec4<f32> = u_xlat6;
      let x_655 : vec2<f32> = vec2<f32>(x_654.z, x_654.w);
      let x_657 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_655.x, x_655.y, x_657);
      let x_664 : vec3<f32> = txVec1;
      let x_666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_664.xy, x_664.z);
      u_xlat7.y = x_666;
      let x_668 : vec4<f32> = u_xlat4;
      let x_672 : vec4<f32> = x_277.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y) + x_672);
      let x_675 : vec4<f32> = u_xlat6;
      let x_676 : vec2<f32> = vec2<f32>(x_675.x, x_675.y);
      let x_678 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_676.x, x_676.y, x_678);
      let x_685 : vec3<f32> = txVec2;
      let x_687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_685.xy, x_685.z);
      u_xlat7.z = x_687;
      let x_690 : vec4<f32> = u_xlat6;
      let x_691 : vec2<f32> = vec2<f32>(x_690.z, x_690.w);
      let x_693 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_691.x, x_691.y, x_693);
      let x_700 : vec3<f32> = txVec3;
      let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_700.xy, x_700.z);
      u_xlat7.w = x_702;
      let x_705 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_705, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_712 : f32 = x_277.x_MainLightShadowParams.y;
      u_xlatb64 = (x_712 == 2.0f);
      let x_714 : bool = u_xlatb64;
      if (x_714) {
        let x_717 : vec4<f32> = u_xlat4;
        let x_720 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_724 : vec2<f32> = ((vec2<f32>(x_717.x, x_717.y) * vec2<f32>(x_720.z, x_720.w)) + vec2<f32>(0.5f, 0.5f));
        let x_725 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat6;
        let x_729 : vec2<f32> = floor(vec2<f32>(x_727.x, x_727.y));
        let x_730 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_734 : vec4<f32> = u_xlat4;
        let x_737 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_740 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_734.x, x_734.y) * vec2<f32>(x_737.z, x_737.w)) + -(vec2<f32>(x_740.x, x_740.y)));
        let x_744 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_744.x, x_744.x, x_744.y, x_744.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_749 : vec4<f32> = u_xlat7;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_749.x, x_749.x, x_749.z, x_749.z) * vec4<f32>(x_751.x, x_751.x, x_751.z, x_751.z));
        let x_754 : vec4<f32> = u_xlat8;
        let x_758 : vec2<f32> = (vec2<f32>(x_754.y, x_754.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_758.x, x_759.y, x_758.y, x_759.w);
        let x_761 : vec4<f32> = u_xlat8;
        let x_764 : vec2<f32> = u_xlat46;
        let x_766 : vec2<f32> = ((vec2<f32>(x_761.x, x_761.z) * vec2<f32>(0.5f, 0.5f)) + -(x_764));
        let x_767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_770 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_770) + vec2<f32>(1.0f, 1.0f));
        let x_774 : vec2<f32> = u_xlat46;
        let x_776 : vec2<f32> = min(x_774, vec2<f32>(0.0f, 0.0f));
        let x_777 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat9;
        let x_782 : vec4<f32> = u_xlat9;
        let x_785 : vec2<f32> = u_xlat48;
        let x_786 : vec2<f32> = ((-(vec2<f32>(x_779.x, x_779.y)) * vec2<f32>(x_782.x, x_782.y)) + x_785);
        let x_787 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
        let x_789 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_789, vec2<f32>(0.0f, 0.0f));
        let x_791 : vec2<f32> = u_xlat46;
        let x_793 : vec2<f32> = u_xlat46;
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_791) * x_793) + vec2<f32>(x_795.y, x_795.w));
        let x_798 : vec4<f32> = u_xlat9;
        let x_800 : vec2<f32> = (vec2<f32>(x_798.x, x_798.y) + vec2<f32>(1.0f, 1.0f));
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
        let x_803 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_803 + vec2<f32>(1.0f, 1.0f));
        let x_806 : vec4<f32> = u_xlat8;
        let x_810 : vec2<f32> = (vec2<f32>(x_806.x, x_806.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_811 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
        let x_813 : vec2<f32> = u_xlat48;
        let x_814 : vec2<f32> = (x_813 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat9;
        let x_819 : vec2<f32> = (vec2<f32>(x_817.x, x_817.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_820 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_823 : vec2<f32> = u_xlat46;
        let x_824 : vec2<f32> = (x_823 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_825 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_827.y, x_827.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_831 : f32 = u_xlat9.x;
        u_xlat10.z = x_831;
        let x_834 : f32 = u_xlat46.x;
        u_xlat10.w = x_834;
        let x_837 : f32 = u_xlat11.x;
        u_xlat8.z = x_837;
        let x_840 : f32 = u_xlat7.x;
        u_xlat8.w = x_840;
        let x_843 : vec4<f32> = u_xlat8;
        let x_845 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_843.z, x_843.w, x_843.x, x_843.z) + vec4<f32>(x_845.z, x_845.w, x_845.x, x_845.z));
        let x_849 : f32 = u_xlat10.y;
        u_xlat9.z = x_849;
        let x_852 : f32 = u_xlat46.y;
        u_xlat9.w = x_852;
        let x_855 : f32 = u_xlat8.y;
        u_xlat11.z = x_855;
        let x_858 : f32 = u_xlat7.z;
        u_xlat11.w = x_858;
        let x_860 : vec4<f32> = u_xlat9;
        let x_862 : vec4<f32> = u_xlat11;
        let x_864 : vec3<f32> = (vec3<f32>(x_860.z, x_860.y, x_860.w) + vec3<f32>(x_862.z, x_862.y, x_862.w));
        let x_865 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat8;
        let x_869 : vec4<f32> = u_xlat12;
        let x_871 : vec3<f32> = (vec3<f32>(x_867.x, x_867.z, x_867.w) / vec3<f32>(x_869.z, x_869.w, x_869.y));
        let x_872 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat8;
        let x_879 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_880 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat11;
        let x_884 : vec4<f32> = u_xlat7;
        let x_886 : vec3<f32> = (vec3<f32>(x_882.z, x_882.y, x_882.w) / vec3<f32>(x_884.x, x_884.y, x_884.z));
        let x_887 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat9;
        let x_891 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat8;
        let x_897 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_899 : vec3<f32> = (vec3<f32>(x_894.y, x_894.x, x_894.z) * vec3<f32>(x_897.x, x_897.x, x_897.x));
        let x_900 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat9;
        let x_905 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_907 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(x_905.y, x_905.y, x_905.y));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_911 : f32 = u_xlat9.x;
        u_xlat8.w = x_911;
        let x_913 : vec4<f32> = u_xlat6;
        let x_916 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y) * vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y)) + vec4<f32>(x_919.y, x_919.w, x_919.x, x_919.w));
        let x_922 : vec4<f32> = u_xlat6;
        let x_925 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_925.x, x_925.y)) + vec2<f32>(x_928.z, x_928.w));
        let x_932 : f32 = u_xlat8.y;
        u_xlat9.w = x_932;
        let x_934 : vec4<f32> = u_xlat9;
        let x_935 : vec2<f32> = vec2<f32>(x_934.y, x_934.z);
        let x_936 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_935.x, x_936.z, x_935.y);
        let x_938 : vec4<f32> = u_xlat6;
        let x_941 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_938.x, x_938.y, x_938.x, x_938.y) * vec4<f32>(x_941.x, x_941.y, x_941.x, x_941.y)) + vec4<f32>(x_944.x, x_944.y, x_944.z, x_944.y));
        let x_947 : vec4<f32> = u_xlat6;
        let x_950 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_953 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y) * vec4<f32>(x_950.x, x_950.y, x_950.x, x_950.y)) + vec4<f32>(x_953.w, x_953.y, x_953.w, x_953.z));
        let x_956 : vec4<f32> = u_xlat6;
        let x_959 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y) * vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.y)) + vec4<f32>(x_962.x, x_962.w, x_962.z, x_962.w));
        let x_966 : vec4<f32> = u_xlat7;
        let x_968 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_966.x, x_966.x, x_966.x, x_966.y) * vec4<f32>(x_968.z, x_968.w, x_968.y, x_968.z));
        let x_972 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_972.y, x_972.y, x_972.z, x_972.z) * x_974);
        let x_978 : f32 = u_xlat7.z;
        let x_980 : f32 = u_xlat12.y;
        u_xlat64 = (x_978 * x_980);
        let x_983 : vec4<f32> = u_xlat10;
        let x_984 : vec2<f32> = vec2<f32>(x_983.x, x_983.y);
        let x_986 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_994 : vec3<f32> = txVec4;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
        u_xlat65 = x_996;
        let x_998 : vec4<f32> = u_xlat10;
        let x_999 : vec2<f32> = vec2<f32>(x_998.z, x_998.w);
        let x_1001 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_999.x, x_999.y, x_1001);
        let x_1008 : vec3<f32> = txVec5;
        let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1008.xy, x_1008.z);
        u_xlat6.x = x_1010;
        let x_1013 : f32 = u_xlat6.x;
        let x_1015 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1013 * x_1015);
        let x_1019 : f32 = u_xlat13.x;
        let x_1020 : f32 = u_xlat65;
        let x_1023 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1019 * x_1020) + x_1023);
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1028 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
        let x_1035 : vec3<f32> = txVec6;
        let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1035.xy, x_1035.z);
        u_xlat6.x = x_1037;
        let x_1040 : f32 = u_xlat13.z;
        let x_1042 : f32 = u_xlat6.x;
        let x_1044 : f32 = u_xlat65;
        u_xlat65 = ((x_1040 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
        let x_1050 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec7;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1057.xy, x_1057.z);
        u_xlat6.x = x_1059;
        let x_1062 : f32 = u_xlat13.w;
        let x_1064 : f32 = u_xlat6.x;
        let x_1066 : f32 = u_xlat65;
        u_xlat65 = ((x_1062 * x_1064) + x_1066);
        let x_1069 : vec4<f32> = u_xlat11;
        let x_1070 : vec2<f32> = vec2<f32>(x_1069.x, x_1069.y);
        let x_1072 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1070.x, x_1070.y, x_1072);
        let x_1079 : vec3<f32> = txVec8;
        let x_1081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1079.xy, x_1079.z);
        u_xlat6.x = x_1081;
        let x_1084 : f32 = u_xlat14.x;
        let x_1086 : f32 = u_xlat6.x;
        let x_1088 : f32 = u_xlat65;
        u_xlat65 = ((x_1084 * x_1086) + x_1088);
        let x_1091 : vec4<f32> = u_xlat11;
        let x_1092 : vec2<f32> = vec2<f32>(x_1091.z, x_1091.w);
        let x_1094 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1092.x, x_1092.y, x_1094);
        let x_1101 : vec3<f32> = txVec9;
        let x_1103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1101.xy, x_1101.z);
        u_xlat6.x = x_1103;
        let x_1106 : f32 = u_xlat14.y;
        let x_1108 : f32 = u_xlat6.x;
        let x_1110 : f32 = u_xlat65;
        u_xlat65 = ((x_1106 * x_1108) + x_1110);
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.z, x_1113.w);
        let x_1116 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1123 : vec3<f32> = txVec10;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
        u_xlat6.x = x_1125;
        let x_1128 : f32 = u_xlat14.z;
        let x_1130 : f32 = u_xlat6.x;
        let x_1132 : f32 = u_xlat65;
        u_xlat65 = ((x_1128 * x_1130) + x_1132);
        let x_1135 : vec4<f32> = u_xlat8;
        let x_1136 : vec2<f32> = vec2<f32>(x_1135.x, x_1135.y);
        let x_1138 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1136.x, x_1136.y, x_1138);
        let x_1145 : vec3<f32> = txVec11;
        let x_1147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1145.xy, x_1145.z);
        u_xlat6.x = x_1147;
        let x_1150 : f32 = u_xlat14.w;
        let x_1152 : f32 = u_xlat6.x;
        let x_1154 : f32 = u_xlat65;
        u_xlat65 = ((x_1150 * x_1152) + x_1154);
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = vec2<f32>(x_1157.z, x_1157.w);
        let x_1160 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1158.x, x_1158.y, x_1160);
        let x_1167 : vec3<f32> = txVec12;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat6.x = x_1169;
        let x_1171 : f32 = u_xlat64;
        let x_1173 : f32 = u_xlat6.x;
        let x_1175 : f32 = u_xlat65;
        u_xlat63 = ((x_1171 * x_1173) + x_1175);
      } else {
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1184 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.z, x_1181.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat6;
        let x_1189 : vec2<f32> = floor(vec2<f32>(x_1187.x, x_1187.y));
        let x_1190 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat4;
        let x_1195 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.z, x_1195.w)) + -(vec2<f32>(x_1198.x, x_1198.y)));
        let x_1202 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1202.x, x_1202.x, x_1202.y, x_1202.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1205 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1205.x, x_1205.x, x_1205.z, x_1205.z) * vec4<f32>(x_1207.x, x_1207.x, x_1207.z, x_1207.z));
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1214 : vec2<f32> = (vec2<f32>(x_1210.y, x_1210.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1215.x, x_1214.x, x_1215.z, x_1214.y);
        let x_1217 : vec4<f32> = u_xlat8;
        let x_1220 : vec2<f32> = u_xlat46;
        let x_1222 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1220));
        let x_1223 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1222.x, x_1223.y, x_1222.y, x_1223.w);
        let x_1225 : vec2<f32> = u_xlat46;
        let x_1227 : vec2<f32> = (-(x_1225) + vec2<f32>(1.0f, 1.0f));
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1230 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1230, vec2<f32>(0.0f, 0.0f));
        let x_1232 : vec2<f32> = u_xlat48;
        let x_1234 : vec2<f32> = u_xlat48;
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1238 : vec2<f32> = ((-(x_1232) * x_1234) + vec2<f32>(x_1236.x, x_1236.y));
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1241 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1241, vec2<f32>(0.0f, 0.0f));
        let x_1244 : vec2<f32> = u_xlat48;
        let x_1246 : vec2<f32> = u_xlat48;
        let x_1248 : vec4<f32> = u_xlat7;
        let x_1250 : vec2<f32> = ((-(x_1244) * x_1246) + vec2<f32>(x_1248.y, x_1248.w));
        let x_1251 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1250.x, x_1251.y, x_1250.y);
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1255 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.y) + vec2<f32>(2.0f, 2.0f));
        let x_1256 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
        let x_1258 : vec3<f32> = u_xlat27;
        let x_1260 : vec2<f32> = (vec2<f32>(x_1258.x, x_1258.z) + vec2<f32>(2.0f, 2.0f));
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1261.x, x_1260.x, x_1261.z, x_1260.y);
        let x_1264 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1264 * 0.081632003f);
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1271 : vec3<f32> = (vec3<f32>(x_1268.z, x_1268.x, x_1268.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat8;
        let x_1277 : vec2<f32> = (vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1278 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1281 : f32 = u_xlat11.y;
        u_xlat10.x = x_1281;
        let x_1283 : vec2<f32> = u_xlat46;
        let x_1290 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1291 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1291.x, x_1290.x, x_1291.z, x_1290.y);
        let x_1293 : vec2<f32> = u_xlat46;
        let x_1297 : vec2<f32> = ((vec2<f32>(x_1293.x, x_1293.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1298 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1297.x, x_1298.y, x_1297.y, x_1298.w);
        let x_1301 : f32 = u_xlat7.x;
        u_xlat8.y = x_1301;
        let x_1304 : f32 = u_xlat9.y;
        u_xlat8.w = x_1304;
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1307 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1306 + x_1307);
        let x_1309 : vec2<f32> = u_xlat46;
        let x_1312 : vec2<f32> = ((vec2<f32>(x_1309.y, x_1309.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1313.x, x_1312.x, x_1313.z, x_1312.y);
        let x_1315 : vec2<f32> = u_xlat46;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1315.y, x_1315.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1318.x, x_1319.y, x_1318.y, x_1319.w);
        let x_1322 : f32 = u_xlat7.y;
        u_xlat9.y = x_1322;
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1324 + x_1325);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1327 / x_1328);
        let x_1330 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1330 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1336 : vec4<f32> = u_xlat9;
        let x_1337 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1336 / x_1337);
        let x_1339 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1339 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1344 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1341.w, x_1341.x, x_1341.y, x_1341.z) * vec4<f32>(x_1344.x, x_1344.x, x_1344.x, x_1344.x));
        let x_1347 : vec4<f32> = u_xlat9;
        let x_1350 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1347.x, x_1347.w, x_1347.y, x_1347.z) * vec4<f32>(x_1350.y, x_1350.y, x_1350.y, x_1350.y));
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1354 : vec3<f32> = vec3<f32>(x_1353.y, x_1353.z, x_1353.w);
        let x_1355 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1354.x, x_1355.y, x_1354.y, x_1354.z);
        let x_1358 : f32 = u_xlat9.x;
        u_xlat11.y = x_1358;
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.y) * vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y)) + vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1366.y));
        let x_1369 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.w, x_1375.y));
        let x_1379 : f32 = u_xlat11.y;
        u_xlat8.y = x_1379;
        let x_1382 : f32 = u_xlat9.z;
        u_xlat11.y = x_1382;
        let x_1384 : vec4<f32> = u_xlat6;
        let x_1387 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y) * vec4<f32>(x_1387.x, x_1387.y, x_1387.x, x_1387.y)) + vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1390.y));
        let x_1393 : vec4<f32> = u_xlat6;
        let x_1396 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat11;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(x_1396.x, x_1396.y)) + vec2<f32>(x_1399.w, x_1399.y));
        let x_1402 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat11.y;
        u_xlat8.z = x_1405;
        let x_1408 : vec4<f32> = u_xlat6;
        let x_1411 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y) * vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y)) + vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.z));
        let x_1418 : f32 = u_xlat9.w;
        u_xlat11.y = x_1418;
        let x_1421 : vec4<f32> = u_xlat6;
        let x_1424 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1421.x, x_1421.y, x_1421.x, x_1421.y) * vec4<f32>(x_1424.x, x_1424.y, x_1424.x, x_1424.y)) + vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1427.y));
        let x_1431 : vec4<f32> = u_xlat6;
        let x_1434 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1434.x, x_1434.y)) + vec2<f32>(x_1437.w, x_1437.y));
        let x_1441 : f32 = u_xlat11.y;
        u_xlat8.w = x_1441;
        let x_1444 : vec4<f32> = u_xlat6;
        let x_1447 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1447.x, x_1447.y)) + vec2<f32>(x_1450.x, x_1450.w));
        let x_1453 : vec4<f32> = u_xlat11;
        let x_1454 : vec3<f32> = vec3<f32>(x_1453.x, x_1453.z, x_1453.w);
        let x_1455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1454.x, x_1455.y, x_1454.y, x_1454.z);
        let x_1457 : vec4<f32> = u_xlat6;
        let x_1460 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1457.x, x_1457.y, x_1457.x, x_1457.y) * vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y)) + vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1463.y));
        let x_1467 : vec4<f32> = u_xlat6;
        let x_1470 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1473 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1473.w, x_1473.y));
        let x_1477 : f32 = u_xlat8.x;
        u_xlat9.x = x_1477;
        let x_1479 : vec4<f32> = u_xlat6;
        let x_1482 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1479.x, x_1479.y) * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1485.x, x_1485.y));
        let x_1488 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1493 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1491.x, x_1491.x, x_1491.x, x_1491.x) * x_1493);
        let x_1496 : vec4<f32> = u_xlat7;
        let x_1498 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1496.y, x_1496.y, x_1496.y, x_1496.y) * x_1498);
        let x_1501 : vec4<f32> = u_xlat7;
        let x_1503 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1501.z, x_1501.z, x_1501.z, x_1501.z) * x_1503);
        let x_1505 : vec4<f32> = u_xlat7;
        let x_1507 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1505.w, x_1505.w, x_1505.w, x_1505.w) * x_1507);
        let x_1510 : vec4<f32> = u_xlat12;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec13;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat64 = x_1522;
        let x_1524 : vec4<f32> = u_xlat12;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec14;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat65 = x_1536;
        let x_1537 : f32 = u_xlat65;
        let x_1539 : f32 = u_xlat17.y;
        u_xlat65 = (x_1537 * x_1539);
        let x_1542 : f32 = u_xlat17.x;
        let x_1543 : f32 = u_xlat64;
        let x_1545 : f32 = u_xlat65;
        u_xlat64 = ((x_1542 * x_1543) + x_1545);
        let x_1548 : vec2<f32> = u_xlat46;
        let x_1550 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec15;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1557.xy, x_1557.z);
        u_xlat65 = x_1559;
        let x_1561 : f32 = u_xlat17.z;
        let x_1562 : f32 = u_xlat65;
        let x_1564 : f32 = u_xlat64;
        u_xlat64 = ((x_1561 * x_1562) + x_1564);
        let x_1567 : vec4<f32> = u_xlat15;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec16;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1577.xy, x_1577.z);
        u_xlat65 = x_1579;
        let x_1581 : f32 = u_xlat17.w;
        let x_1582 : f32 = u_xlat65;
        let x_1584 : f32 = u_xlat64;
        u_xlat64 = ((x_1581 * x_1582) + x_1584);
        let x_1587 : vec4<f32> = u_xlat13;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
        let x_1590 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec17;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1597.xy, x_1597.z);
        u_xlat65 = x_1599;
        let x_1601 : f32 = u_xlat18.x;
        let x_1602 : f32 = u_xlat65;
        let x_1604 : f32 = u_xlat64;
        u_xlat64 = ((x_1601 * x_1602) + x_1604);
        let x_1607 : vec4<f32> = u_xlat13;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.z, x_1607.w);
        let x_1610 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec18;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat65 = x_1619;
        let x_1621 : f32 = u_xlat18.y;
        let x_1622 : f32 = u_xlat65;
        let x_1624 : f32 = u_xlat64;
        u_xlat64 = ((x_1621 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat14;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec19;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1637.xy, x_1637.z);
        u_xlat65 = x_1639;
        let x_1641 : f32 = u_xlat18.z;
        let x_1642 : f32 = u_xlat65;
        let x_1644 : f32 = u_xlat64;
        u_xlat64 = ((x_1641 * x_1642) + x_1644);
        let x_1647 : vec4<f32> = u_xlat15;
        let x_1648 : vec2<f32> = vec2<f32>(x_1647.z, x_1647.w);
        let x_1650 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec20;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1657.xy, x_1657.z);
        u_xlat65 = x_1659;
        let x_1661 : f32 = u_xlat18.w;
        let x_1662 : f32 = u_xlat65;
        let x_1664 : f32 = u_xlat64;
        u_xlat64 = ((x_1661 * x_1662) + x_1664);
        let x_1667 : vec4<f32> = u_xlat16;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.x, x_1667.y);
        let x_1670 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec21;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1677.xy, x_1677.z);
        u_xlat65 = x_1679;
        let x_1681 : f32 = u_xlat19.x;
        let x_1682 : f32 = u_xlat65;
        let x_1684 : f32 = u_xlat64;
        u_xlat64 = ((x_1681 * x_1682) + x_1684);
        let x_1687 : vec4<f32> = u_xlat16;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.z, x_1687.w);
        let x_1690 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec22;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1697.xy, x_1697.z);
        u_xlat65 = x_1699;
        let x_1701 : f32 = u_xlat19.y;
        let x_1702 : f32 = u_xlat65;
        let x_1704 : f32 = u_xlat64;
        u_xlat64 = ((x_1701 * x_1702) + x_1704);
        let x_1707 : vec2<f32> = u_xlat28;
        let x_1709 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec23;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat65 = x_1718;
        let x_1720 : f32 = u_xlat19.z;
        let x_1721 : f32 = u_xlat65;
        let x_1723 : f32 = u_xlat64;
        u_xlat64 = ((x_1720 * x_1721) + x_1723);
        let x_1726 : vec2<f32> = u_xlat54;
        let x_1728 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
        let x_1735 : vec3<f32> = txVec24;
        let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1735.xy, x_1735.z);
        u_xlat65 = x_1737;
        let x_1739 : f32 = u_xlat19.w;
        let x_1740 : f32 = u_xlat65;
        let x_1742 : f32 = u_xlat64;
        u_xlat64 = ((x_1739 * x_1740) + x_1742);
        let x_1745 : vec4<f32> = u_xlat11;
        let x_1746 : vec2<f32> = vec2<f32>(x_1745.x, x_1745.y);
        let x_1748 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
        let x_1755 : vec3<f32> = txVec25;
        let x_1757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1755.xy, x_1755.z);
        u_xlat65 = x_1757;
        let x_1759 : f32 = u_xlat7.x;
        let x_1760 : f32 = u_xlat65;
        let x_1762 : f32 = u_xlat64;
        u_xlat64 = ((x_1759 * x_1760) + x_1762);
        let x_1765 : vec4<f32> = u_xlat11;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.z, x_1765.w);
        let x_1768 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec26;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
        u_xlat65 = x_1777;
        let x_1779 : f32 = u_xlat7.y;
        let x_1780 : f32 = u_xlat65;
        let x_1782 : f32 = u_xlat64;
        u_xlat64 = ((x_1779 * x_1780) + x_1782);
        let x_1785 : vec2<f32> = u_xlat49;
        let x_1787 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec27;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1794.xy, x_1794.z);
        u_xlat65 = x_1796;
        let x_1798 : f32 = u_xlat7.z;
        let x_1799 : f32 = u_xlat65;
        let x_1801 : f32 = u_xlat64;
        u_xlat64 = ((x_1798 * x_1799) + x_1801);
        let x_1804 : vec4<f32> = u_xlat6;
        let x_1805 : vec2<f32> = vec2<f32>(x_1804.x, x_1804.y);
        let x_1807 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
        let x_1814 : vec3<f32> = txVec28;
        let x_1816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1814.xy, x_1814.z);
        u_xlat65 = x_1816;
        let x_1818 : f32 = u_xlat7.w;
        let x_1819 : f32 = u_xlat65;
        let x_1821 : f32 = u_xlat64;
        u_xlat63 = ((x_1818 * x_1819) + x_1821);
      }
    }
  } else {
    let x_1825 : vec4<f32> = u_xlat4;
    let x_1826 : vec2<f32> = vec2<f32>(x_1825.x, x_1825.y);
    let x_1828 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1826.x, x_1826.y, x_1828);
    let x_1835 : vec3<f32> = txVec29;
    let x_1837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1835.xy, x_1835.z);
    u_xlat63 = x_1837;
  }
  let x_1839 : f32 = x_277.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1839) + 1.0f);
  let x_1843 : f32 = u_xlat63;
  let x_1845 : f32 = x_277.x_MainLightShadowParams.x;
  let x_1848 : f32 = u_xlat4.x;
  u_xlat63 = ((x_1843 * x_1845) + x_1848);
  let x_1851 : f32 = u_xlat4.z;
  u_xlatb4.x = (0.0f >= x_1851);
  let x_1856 : f32 = u_xlat4.z;
  u_xlatb24 = (x_1856 >= 1.0f);
  let x_1858 : bool = u_xlatb24;
  let x_1860 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_1858 | x_1860);
  let x_1864 : bool = u_xlatb4.x;
  let x_1865 : f32 = u_xlat63;
  u_xlat63 = select(x_1865, 1.0f, x_1864);
  let x_1867 : vec3<f32> = vs_TEXCOORD1;
  let x_1870 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1872 : vec3<f32> = (x_1867 + -(x_1870));
  let x_1873 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  let x_1875 : vec4<f32> = u_xlat4;
  let x_1877 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1875.x, x_1875.y, x_1875.z), vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1882 : f32 = u_xlat4.x;
  let x_1884 : f32 = x_277.x_MainLightShadowParams.z;
  let x_1887 : f32 = x_277.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_1882 * x_1884) + x_1887);
  let x_1891 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1891, 0.0f, 1.0f);
  let x_1895 : f32 = u_xlat63;
  u_xlat24 = (-(x_1895) + 1.0f);
  let x_1899 : f32 = u_xlat4.x;
  let x_1900 : f32 = u_xlat24;
  let x_1902 : f32 = u_xlat63;
  u_xlat63 = ((x_1899 * x_1900) + x_1902);
  let x_1910 : f32 = x_1908.x_MainLightCookieTextureFormat;
  u_xlatb4.x = !((x_1910 == -1.0f));
  let x_1914 : bool = u_xlatb4.x;
  if (x_1914) {
    let x_1917 : vec3<f32> = vs_TEXCOORD1;
    let x_1920 : vec4<f32> = x_1908.x_MainLightWorldToLight[1i];
    let x_1922 : vec2<f32> = (vec2<f32>(x_1917.y, x_1917.y) * vec2<f32>(x_1920.x, x_1920.y));
    let x_1923 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
    let x_1926 : vec4<f32> = x_1908.x_MainLightWorldToLight[0i];
    let x_1928 : vec3<f32> = vs_TEXCOORD1;
    let x_1931 : vec4<f32> = u_xlat4;
    let x_1933 : vec2<f32> = ((vec2<f32>(x_1926.x, x_1926.y) * vec2<f32>(x_1928.x, x_1928.x)) + vec2<f32>(x_1931.x, x_1931.y));
    let x_1934 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1933.x, x_1933.y, x_1934.z, x_1934.w);
    let x_1937 : vec4<f32> = x_1908.x_MainLightWorldToLight[2i];
    let x_1939 : vec3<f32> = vs_TEXCOORD1;
    let x_1942 : vec4<f32> = u_xlat4;
    let x_1944 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * vec2<f32>(x_1939.z, x_1939.z)) + vec2<f32>(x_1942.x, x_1942.y));
    let x_1945 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
    let x_1947 : vec4<f32> = u_xlat4;
    let x_1950 : vec4<f32> = x_1908.x_MainLightWorldToLight[3i];
    let x_1952 : vec2<f32> = (vec2<f32>(x_1947.x, x_1947.y) + vec2<f32>(x_1950.x, x_1950.y));
    let x_1953 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1952.x, x_1952.y, x_1953.z, x_1953.w);
    let x_1955 : vec4<f32> = u_xlat4;
    let x_1958 : vec2<f32> = ((vec2<f32>(x_1955.x, x_1955.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1959 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1958.x, x_1958.y, x_1959.z, x_1959.w);
    let x_1966 : vec4<f32> = u_xlat4;
    let x_1969 : f32 = x_44.x_GlobalMipBias.x;
    let x_1970 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1966.x, x_1966.y), x_1969);
    u_xlat4 = x_1970;
    let x_1975 : f32 = x_1908.x_MainLightCookieTextureFormat;
    let x_1977 : f32 = x_1908.x_MainLightCookieTextureFormat;
    let x_1979 : f32 = x_1908.x_MainLightCookieTextureFormat;
    let x_1981 : f32 = x_1908.x_MainLightCookieTextureFormat;
    let x_1982 : vec4<f32> = vec4<f32>(x_1975, x_1977, x_1979, x_1981);
    let x_1989 : vec4<bool> = (vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1982.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1989.x, x_1989.y);
    let x_1992 : bool = u_xlatb6.y;
    if (x_1992) {
      let x_1997 : f32 = u_xlat4.w;
      x_1993 = x_1997;
    } else {
      let x_2000 : f32 = u_xlat4.x;
      x_1993 = x_2000;
    }
    let x_2001 : f32 = x_1993;
    u_xlat64 = x_2001;
    let x_2003 : bool = u_xlatb6.x;
    if (x_2003) {
      let x_2007 : vec4<f32> = u_xlat4;
      x_2004 = vec3<f32>(x_2007.x, x_2007.y, x_2007.z);
    } else {
      let x_2010 : f32 = u_xlat64;
      x_2004 = vec3<f32>(x_2010, x_2010, x_2010);
    }
    let x_2012 : vec3<f32> = x_2004;
    let x_2013 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_2019 : vec4<f32> = u_xlat4;
  let x_2022 : vec4<f32> = x_44.x_MainLightColor;
  let x_2024 : vec3<f32> = (vec3<f32>(x_2019.x, x_2019.y, x_2019.z) * vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
  let x_2027 : f32 = u_xlat62;
  let x_2029 : vec4<f32> = u_xlat4;
  let x_2031 : vec3<f32> = (vec3<f32>(x_2027, x_2027, x_2027) * vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2032 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
  let x_2034 : vec4<f32> = u_xlat1;
  let x_2036 : vec4<f32> = u_xlat5;
  let x_2038 : vec3<f32> = (vec3<f32>(x_2034.x, x_2034.x, x_2034.x) * vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2039 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
  let x_2041 : f32 = u_xlat63;
  let x_2047 : f32 = x_2045.unity_LightData.z;
  u_xlat1.x = (x_2041 * x_2047);
  let x_2050 : vec4<f32> = u_xlat1;
  let x_2052 : vec4<f32> = u_xlat4;
  let x_2054 : vec3<f32> = (vec3<f32>(x_2050.x, x_2050.x, x_2050.x) * vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2057 : vec3<f32> = u_xlat2;
  let x_2059 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_2057, vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
  let x_2064 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2064, 0.0f, 1.0f);
  let x_2067 : vec4<f32> = u_xlat1;
  let x_2069 : vec4<f32> = u_xlat4;
  let x_2071 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.x, x_2067.x) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
  let x_2072 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2075 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_2075 * 10.0f) + 1.0f);
  let x_2081 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2081);
  let x_2084 : vec3<f32> = u_xlat3;
  let x_2085 : vec3<f32> = u_xlat20;
  let x_2089 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2091 : vec3<f32> = ((x_2084 * vec3<f32>(x_2085.x, x_2085.x, x_2085.x)) + vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
  let x_2092 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
  let x_2094 : vec4<f32> = u_xlat7;
  let x_2096 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2094.x, x_2094.y, x_2094.z), vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : f32 = u_xlat63;
  u_xlat63 = max(x_2099, 1.17549435e-37f);
  let x_2101 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2101);
  let x_2103 : f32 = u_xlat63;
  let x_2105 : vec4<f32> = u_xlat7;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2103, x_2103, x_2103) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  let x_2110 : vec3<f32> = u_xlat2;
  let x_2111 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_2110, vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2114, 0.0f, 1.0f);
  let x_2116 : f32 = u_xlat63;
  u_xlat63 = log2(x_2116);
  let x_2119 : f32 = u_xlat1.x;
  let x_2120 : f32 = u_xlat63;
  u_xlat63 = (x_2119 * x_2120);
  let x_2122 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2122);
  let x_2124 : f32 = u_xlat63;
  let x_2127 : vec4<f32> = x_57.x_SpecColor;
  let x_2129 : vec3<f32> = (vec3<f32>(x_2124, x_2124, x_2124) * vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
  let x_2130 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
  let x_2132 : vec4<f32> = u_xlat4;
  let x_2134 : vec4<f32> = u_xlat7;
  let x_2136 : vec3<f32> = (vec3<f32>(x_2132.x, x_2132.y, x_2132.z) * vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
  let x_2139 : vec4<f32> = u_xlat6;
  let x_2141 : vec4<f32> = u_xlat1;
  let x_2144 : vec4<f32> = u_xlat4;
  let x_2146 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * vec3<f32>(x_2141.y, x_2141.z, x_2141.w)) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
  let x_2150 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2152 : f32 = x_2045.unity_LightData.y;
  u_xlat63 = min(x_2150, x_2152);
  let x_2155 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2155));
  let x_2159 : f32 = x_1908.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2161 : f32 = x_1908.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2163 : f32 = x_1908.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2165 : f32 = x_1908.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2166 : vec4<f32> = vec4<f32>(x_2159, x_2161, x_2163, x_2165);
  let x_2172 : vec4<bool> = (vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2166.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2172.x, x_2172.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2183 : u32 = u_xlatu_loop_1;
    let x_2184 : u32 = u_xlatu63;
    if ((x_2183 < x_2184)) {
    } else {
      break;
    }
    let x_2187 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2187 >> 2u);
    let x_2190 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_2190 & 3u));
    let x_2193 : u32 = u_xlatu65;
    let x_2196 : vec4<f32> = x_2045.unity_LightIndices[bitcast<i32>(x_2193)];
    let x_2206 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2211 : vec4<u32> = indexable[x_2206];
    u_xlat65 = dot(x_2196, bitcast<vec4<f32>>(x_2211));
    let x_2214 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2214));
    let x_2217 : vec3<f32> = vs_TEXCOORD1;
    let x_2229 : u32 = u_xlatu65;
    let x_2232 : vec4<f32> = x_2228.x_AdditionalLightsPosition[bitcast<i32>(x_2229)];
    let x_2235 : u32 = u_xlatu65;
    let x_2238 : vec4<f32> = x_2228.x_AdditionalLightsPosition[bitcast<i32>(x_2235)];
    let x_2240 : vec3<f32> = ((-(x_2217) * vec3<f32>(x_2232.w, x_2232.w, x_2232.w)) + vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
    let x_2241 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
    let x_2243 : vec4<f32> = u_xlat8;
    let x_2245 : vec4<f32> = u_xlat8;
    u_xlat46.x = dot(vec3<f32>(x_2243.x, x_2243.y, x_2243.z), vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2250 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2250, 6.10351562e-05f);
    let x_2256 : f32 = u_xlat46.x;
    u_xlat66 = inverseSqrt(x_2256);
    let x_2258 : f32 = u_xlat66;
    let x_2260 : vec4<f32> = u_xlat8;
    let x_2262 : vec3<f32> = (vec3<f32>(x_2258, x_2258, x_2258) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
    let x_2263 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
    let x_2266 : f32 = u_xlat46.x;
    u_xlat66 = (1.0f / x_2266);
    let x_2269 : f32 = u_xlat46.x;
    let x_2270 : u32 = u_xlatu65;
    let x_2273 : f32 = x_2228.x_AdditionalLightsAttenuation[bitcast<i32>(x_2270)].x;
    u_xlat46.x = (x_2269 * x_2273);
    let x_2277 : f32 = u_xlat46.x;
    let x_2280 : f32 = u_xlat46.x;
    u_xlat46.x = ((-(x_2277) * x_2280) + 1.0f);
    let x_2285 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2285, 0.0f);
    let x_2289 : f32 = u_xlat46.x;
    let x_2291 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2289 * x_2291);
    let x_2295 : f32 = u_xlat46.x;
    let x_2296 : f32 = u_xlat66;
    u_xlat46.x = (x_2295 * x_2296);
    let x_2299 : u32 = u_xlatu65;
    let x_2302 : vec4<f32> = x_2228.x_AdditionalLightsSpotDir[bitcast<i32>(x_2299)];
    let x_2304 : vec4<f32> = u_xlat8;
    u_xlat66 = dot(vec3<f32>(x_2302.x, x_2302.y, x_2302.z), vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
    let x_2307 : f32 = u_xlat66;
    let x_2308 : u32 = u_xlatu65;
    let x_2311 : f32 = x_2228.x_AdditionalLightsAttenuation[bitcast<i32>(x_2308)].z;
    let x_2313 : u32 = u_xlatu65;
    let x_2316 : f32 = x_2228.x_AdditionalLightsAttenuation[bitcast<i32>(x_2313)].w;
    u_xlat66 = ((x_2307 * x_2311) + x_2316);
    let x_2318 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2318, 0.0f, 1.0f);
    let x_2320 : f32 = u_xlat66;
    let x_2321 : f32 = u_xlat66;
    u_xlat66 = (x_2320 * x_2321);
    let x_2323 : f32 = u_xlat66;
    let x_2325 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2323 * x_2325);
    let x_2329 : u32 = u_xlatu65;
    u_xlatu66 = (x_2329 >> 5u);
    let x_2332 : u32 = u_xlatu65;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2332) & 31i)));
    let x_2338 : i32 = u_xlati67;
    let x_2340 : u32 = u_xlatu66;
    let x_2343 : f32 = x_1908.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2340)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2338) & bitcast<u32>(x_2343)));
    let x_2347 : i32 = u_xlati66;
    if ((x_2347 != 0i)) {
      let x_2357 : u32 = u_xlatu65;
      let x_2360 : f32 = x_2356.x_AdditionalLightsLightTypes[bitcast<i32>(x_2357)].el;
      u_xlati66 = i32(x_2360);
      let x_2362 : i32 = u_xlati66;
      u_xlati67 = select(1i, 0i, (x_2362 != 0i));
      let x_2366 : u32 = u_xlatu65;
      u_xlati68 = (bitcast<i32>(x_2366) << bitcast<u32>(2i));
      let x_2369 : i32 = u_xlati67;
      if ((x_2369 != 0i)) {
        let x_2373 : vec3<f32> = vs_TEXCOORD1;
        let x_2375 : i32 = u_xlati68;
        let x_2378 : i32 = u_xlati68;
        let x_2382 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2375 + 1i) / 4i)][((x_2378 + 1i) % 4i)];
        let x_2384 : vec3<f32> = (vec3<f32>(x_2373.y, x_2373.y, x_2373.y) * vec3<f32>(x_2382.x, x_2382.y, x_2382.w));
        let x_2385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
        let x_2387 : i32 = u_xlati68;
        let x_2389 : i32 = u_xlati68;
        let x_2392 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[(x_2387 / 4i)][(x_2389 % 4i)];
        let x_2394 : vec3<f32> = vs_TEXCOORD1;
        let x_2397 : vec4<f32> = u_xlat9;
        let x_2399 : vec3<f32> = ((vec3<f32>(x_2392.x, x_2392.y, x_2392.w) * vec3<f32>(x_2394.x, x_2394.x, x_2394.x)) + vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
        let x_2400 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
        let x_2402 : i32 = u_xlati68;
        let x_2405 : i32 = u_xlati68;
        let x_2409 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2402 + 2i) / 4i)][((x_2405 + 2i) % 4i)];
        let x_2411 : vec3<f32> = vs_TEXCOORD1;
        let x_2414 : vec4<f32> = u_xlat9;
        let x_2416 : vec3<f32> = ((vec3<f32>(x_2409.x, x_2409.y, x_2409.w) * vec3<f32>(x_2411.z, x_2411.z, x_2411.z)) + vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
        let x_2417 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
        let x_2419 : vec4<f32> = u_xlat9;
        let x_2421 : i32 = u_xlati68;
        let x_2424 : i32 = u_xlati68;
        let x_2428 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2421 + 3i) / 4i)][((x_2424 + 3i) % 4i)];
        let x_2430 : vec3<f32> = (vec3<f32>(x_2419.x, x_2419.y, x_2419.z) + vec3<f32>(x_2428.x, x_2428.y, x_2428.w));
        let x_2431 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
        let x_2433 : vec4<f32> = u_xlat9;
        let x_2435 : vec4<f32> = u_xlat9;
        let x_2437 : vec2<f32> = (vec2<f32>(x_2433.x, x_2433.y) / vec2<f32>(x_2435.z, x_2435.z));
        let x_2438 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
        let x_2440 : vec4<f32> = u_xlat9;
        let x_2443 : vec2<f32> = ((vec2<f32>(x_2440.x, x_2440.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2444 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
        let x_2446 : vec4<f32> = u_xlat9;
        let x_2450 : vec2<f32> = clamp(vec2<f32>(x_2446.x, x_2446.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2451 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2450.x, x_2450.y, x_2451.z, x_2451.w);
        let x_2453 : u32 = u_xlatu65;
        let x_2456 : vec4<f32> = x_2356.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2453)];
        let x_2458 : vec4<f32> = u_xlat9;
        let x_2461 : u32 = u_xlatu65;
        let x_2464 : vec4<f32> = x_2356.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2461)];
        let x_2466 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.y) * vec2<f32>(x_2458.x, x_2458.y)) + vec2<f32>(x_2464.z, x_2464.w));
        let x_2467 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
      } else {
        let x_2471 : i32 = u_xlati66;
        u_xlatb66 = (x_2471 == 1i);
        let x_2473 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2473);
        let x_2475 : i32 = u_xlati66;
        if ((x_2475 != 0i)) {
          let x_2479 : vec3<f32> = vs_TEXCOORD1;
          let x_2481 : i32 = u_xlati68;
          let x_2484 : i32 = u_xlati68;
          let x_2488 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2481 + 1i) / 4i)][((x_2484 + 1i) % 4i)];
          u_xlat49 = (vec2<f32>(x_2479.y, x_2479.y) * vec2<f32>(x_2488.x, x_2488.y));
          let x_2491 : i32 = u_xlati68;
          let x_2493 : i32 = u_xlati68;
          let x_2496 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[(x_2491 / 4i)][(x_2493 % 4i)];
          let x_2498 : vec3<f32> = vs_TEXCOORD1;
          let x_2501 : vec2<f32> = u_xlat49;
          u_xlat49 = ((vec2<f32>(x_2496.x, x_2496.y) * vec2<f32>(x_2498.x, x_2498.x)) + x_2501);
          let x_2503 : i32 = u_xlati68;
          let x_2506 : i32 = u_xlati68;
          let x_2510 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2503 + 2i) / 4i)][((x_2506 + 2i) % 4i)];
          let x_2512 : vec3<f32> = vs_TEXCOORD1;
          let x_2515 : vec2<f32> = u_xlat49;
          u_xlat49 = ((vec2<f32>(x_2510.x, x_2510.y) * vec2<f32>(x_2512.z, x_2512.z)) + x_2515);
          let x_2517 : vec2<f32> = u_xlat49;
          let x_2518 : i32 = u_xlati68;
          let x_2521 : i32 = u_xlati68;
          let x_2525 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2518 + 3i) / 4i)][((x_2521 + 3i) % 4i)];
          u_xlat49 = (x_2517 + vec2<f32>(x_2525.x, x_2525.y));
          let x_2528 : vec2<f32> = u_xlat49;
          u_xlat49 = ((x_2528 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2531 : vec2<f32> = u_xlat49;
          u_xlat49 = fract(x_2531);
          let x_2533 : u32 = u_xlatu65;
          let x_2536 : vec4<f32> = x_2356.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2533)];
          let x_2538 : vec2<f32> = u_xlat49;
          let x_2540 : u32 = u_xlatu65;
          let x_2543 : vec4<f32> = x_2356.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2540)];
          let x_2545 : vec2<f32> = ((vec2<f32>(x_2536.x, x_2536.y) * x_2538) + vec2<f32>(x_2543.z, x_2543.w));
          let x_2546 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
        } else {
          let x_2549 : vec3<f32> = vs_TEXCOORD1;
          let x_2551 : i32 = u_xlati68;
          let x_2554 : i32 = u_xlati68;
          let x_2558 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2551 + 1i) / 4i)][((x_2554 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2549.y, x_2549.y, x_2549.y, x_2549.y) * x_2558);
          let x_2560 : i32 = u_xlati68;
          let x_2562 : i32 = u_xlati68;
          let x_2565 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[(x_2560 / 4i)][(x_2562 % 4i)];
          let x_2566 : vec3<f32> = vs_TEXCOORD1;
          let x_2569 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2565 * vec4<f32>(x_2566.x, x_2566.x, x_2566.x, x_2566.x)) + x_2569);
          let x_2571 : i32 = u_xlati68;
          let x_2574 : i32 = u_xlati68;
          let x_2578 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2571 + 2i) / 4i)][((x_2574 + 2i) % 4i)];
          let x_2579 : vec3<f32> = vs_TEXCOORD1;
          let x_2582 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2578 * vec4<f32>(x_2579.z, x_2579.z, x_2579.z, x_2579.z)) + x_2582);
          let x_2584 : vec4<f32> = u_xlat10;
          let x_2585 : i32 = u_xlati68;
          let x_2588 : i32 = u_xlati68;
          let x_2592 : vec4<f32> = x_2356.x_AdditionalLightsWorldToLights[((x_2585 + 3i) / 4i)][((x_2588 + 3i) % 4i)];
          u_xlat10 = (x_2584 + x_2592);
          let x_2594 : vec4<f32> = u_xlat10;
          let x_2596 : vec4<f32> = u_xlat10;
          let x_2598 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.y, x_2594.z) / vec3<f32>(x_2596.w, x_2596.w, x_2596.w));
          let x_2599 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
          let x_2601 : vec4<f32> = u_xlat10;
          let x_2603 : vec4<f32> = u_xlat10;
          u_xlat66 = dot(vec3<f32>(x_2601.x, x_2601.y, x_2601.z), vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
          let x_2606 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2606);
          let x_2608 : f32 = u_xlat66;
          let x_2610 : vec4<f32> = u_xlat10;
          let x_2612 : vec3<f32> = (vec3<f32>(x_2608, x_2608, x_2608) * vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
          let x_2613 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
          let x_2615 : vec4<f32> = u_xlat10;
          u_xlat66 = dot(abs(vec3<f32>(x_2615.x, x_2615.y, x_2615.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2620 : f32 = u_xlat66;
          u_xlat66 = max(x_2620, 0.000001f);
          let x_2623 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2623);
          let x_2625 : f32 = u_xlat66;
          let x_2627 : vec4<f32> = u_xlat10;
          let x_2629 : vec3<f32> = (vec3<f32>(x_2625, x_2625, x_2625) * vec3<f32>(x_2627.z, x_2627.x, x_2627.y));
          let x_2630 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
          let x_2633 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2633);
          let x_2637 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2637, 0.0f, 1.0f);
          let x_2641 : vec4<f32> = u_xlat11;
          let x_2644 : vec4<bool> = (vec4<f32>(x_2641.y, x_2641.z, x_2641.y, x_2641.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb49 = vec2<bool>(x_2644.x, x_2644.y);
          let x_2647 : bool = u_xlatb49.x;
          if (x_2647) {
            let x_2652 : f32 = u_xlat11.x;
            x_2648 = x_2652;
          } else {
            let x_2655 : f32 = u_xlat11.x;
            x_2648 = -(x_2655);
          }
          let x_2657 : f32 = x_2648;
          u_xlat49.x = x_2657;
          let x_2660 : bool = u_xlatb49.y;
          if (x_2660) {
            let x_2665 : f32 = u_xlat11.x;
            x_2661 = x_2665;
          } else {
            let x_2668 : f32 = u_xlat11.x;
            x_2661 = -(x_2668);
          }
          let x_2670 : f32 = x_2661;
          u_xlat49.y = x_2670;
          let x_2672 : vec4<f32> = u_xlat10;
          let x_2674 : f32 = u_xlat66;
          let x_2677 : vec2<f32> = u_xlat49;
          u_xlat49 = ((vec2<f32>(x_2672.x, x_2672.y) * vec2<f32>(x_2674, x_2674)) + x_2677);
          let x_2679 : vec2<f32> = u_xlat49;
          u_xlat49 = ((x_2679 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2682 : vec2<f32> = u_xlat49;
          u_xlat49 = clamp(x_2682, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2686 : u32 = u_xlatu65;
          let x_2689 : vec4<f32> = x_2356.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2686)];
          let x_2691 : vec2<f32> = u_xlat49;
          let x_2693 : u32 = u_xlatu65;
          let x_2696 : vec4<f32> = x_2356.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2693)];
          let x_2698 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.y) * x_2691) + vec2<f32>(x_2696.z, x_2696.w));
          let x_2699 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2698.x, x_2698.y, x_2699.z, x_2699.w);
        }
      }
      let x_2706 : vec4<f32> = u_xlat9;
      let x_2709 : f32 = x_44.x_GlobalMipBias.x;
      let x_2710 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2706.x, x_2706.y), x_2709);
      u_xlat9 = x_2710;
      let x_2712 : bool = u_xlatb6.y;
      if (x_2712) {
        let x_2717 : f32 = u_xlat9.w;
        x_2713 = x_2717;
      } else {
        let x_2720 : f32 = u_xlat9.x;
        x_2713 = x_2720;
      }
      let x_2721 : f32 = x_2713;
      u_xlat66 = x_2721;
      let x_2723 : bool = u_xlatb6.x;
      if (x_2723) {
        let x_2727 : vec4<f32> = u_xlat9;
        x_2724 = vec3<f32>(x_2727.x, x_2727.y, x_2727.z);
      } else {
        let x_2730 : f32 = u_xlat66;
        x_2724 = vec3<f32>(x_2730, x_2730, x_2730);
      }
      let x_2732 : vec3<f32> = x_2724;
      let x_2733 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2739 : vec4<f32> = u_xlat9;
    let x_2741 : u32 = u_xlatu65;
    let x_2744 : vec4<f32> = x_2228.x_AdditionalLightsColor[bitcast<i32>(x_2741)];
    let x_2746 : vec3<f32> = (vec3<f32>(x_2739.x, x_2739.y, x_2739.z) * vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
    let x_2749 : f32 = u_xlat62;
    let x_2751 : vec4<f32> = u_xlat9;
    let x_2753 : vec3<f32> = (vec3<f32>(x_2749, x_2749, x_2749) * vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
    let x_2754 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
    let x_2756 : vec2<f32> = u_xlat46;
    let x_2758 : vec4<f32> = u_xlat9;
    let x_2760 : vec3<f32> = (vec3<f32>(x_2756.x, x_2756.x, x_2756.x) * vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
    let x_2761 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
    let x_2763 : vec3<f32> = u_xlat2;
    let x_2764 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(x_2763, vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
    let x_2767 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2767, 0.0f, 1.0f);
    let x_2769 : f32 = u_xlat65;
    let x_2771 : vec4<f32> = u_xlat9;
    let x_2773 : vec3<f32> = (vec3<f32>(x_2769, x_2769, x_2769) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
    let x_2776 : vec3<f32> = u_xlat3;
    let x_2777 : vec3<f32> = u_xlat20;
    let x_2780 : vec4<f32> = u_xlat8;
    let x_2782 : vec3<f32> = ((x_2776 * vec3<f32>(x_2777.x, x_2777.x, x_2777.x)) + vec3<f32>(x_2780.x, x_2780.y, x_2780.z));
    let x_2783 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
    let x_2785 : vec4<f32> = u_xlat8;
    let x_2787 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2785.x, x_2785.y, x_2785.z), vec3<f32>(x_2787.x, x_2787.y, x_2787.z));
    let x_2790 : f32 = u_xlat65;
    u_xlat65 = max(x_2790, 1.17549435e-37f);
    let x_2792 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_2792);
    let x_2794 : f32 = u_xlat65;
    let x_2796 : vec4<f32> = u_xlat8;
    let x_2798 : vec3<f32> = (vec3<f32>(x_2794, x_2794, x_2794) * vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
    let x_2799 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2799.w);
    let x_2801 : vec3<f32> = u_xlat2;
    let x_2802 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(x_2801, vec3<f32>(x_2802.x, x_2802.y, x_2802.z));
    let x_2805 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2805, 0.0f, 1.0f);
    let x_2807 : f32 = u_xlat65;
    u_xlat65 = log2(x_2807);
    let x_2810 : f32 = u_xlat1.x;
    let x_2811 : f32 = u_xlat65;
    u_xlat65 = (x_2810 * x_2811);
    let x_2813 : f32 = u_xlat65;
    u_xlat65 = exp2(x_2813);
    let x_2815 : f32 = u_xlat65;
    let x_2818 : vec4<f32> = x_57.x_SpecColor;
    let x_2820 : vec3<f32> = (vec3<f32>(x_2815, x_2815, x_2815) * vec3<f32>(x_2818.x, x_2818.y, x_2818.z));
    let x_2821 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2821.w);
    let x_2823 : vec4<f32> = u_xlat8;
    let x_2825 : vec4<f32> = u_xlat9;
    let x_2827 : vec3<f32> = (vec3<f32>(x_2823.x, x_2823.y, x_2823.z) * vec3<f32>(x_2825.x, x_2825.y, x_2825.z));
    let x_2828 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2828.w);
    let x_2830 : vec4<f32> = u_xlat10;
    let x_2832 : vec4<f32> = u_xlat1;
    let x_2835 : vec4<f32> = u_xlat8;
    let x_2837 : vec3<f32> = ((vec3<f32>(x_2830.x, x_2830.y, x_2830.z) * vec3<f32>(x_2832.y, x_2832.z, x_2832.w)) + vec3<f32>(x_2835.x, x_2835.y, x_2835.z));
    let x_2838 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2838.w);
    let x_2840 : vec4<f32> = u_xlat7;
    let x_2842 : vec4<f32> = u_xlat8;
    let x_2844 : vec3<f32> = (vec3<f32>(x_2840.x, x_2840.y, x_2840.z) + vec3<f32>(x_2842.x, x_2842.y, x_2842.z));
    let x_2845 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2844.x, x_2844.y, x_2844.z, x_2845.w);

    continuing {
      let x_2847 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2847 + bitcast<u32>(1i));
    }
  }
  let x_2849 : vec4<f32> = u_xlat5;
  let x_2851 : vec4<f32> = u_xlat1;
  let x_2854 : vec4<f32> = u_xlat4;
  let x_2856 : vec3<f32> = ((vec3<f32>(x_2849.x, x_2849.y, x_2849.z) * vec3<f32>(x_2851.y, x_2851.z, x_2851.w)) + vec3<f32>(x_2854.x, x_2854.y, x_2854.z));
  let x_2857 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
  let x_2859 : vec4<f32> = u_xlat7;
  let x_2861 : vec4<f32> = u_xlat1;
  let x_2863 : vec3<f32> = (vec3<f32>(x_2859.x, x_2859.y, x_2859.z) + vec3<f32>(x_2861.x, x_2861.y, x_2861.z));
  let x_2864 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
  let x_2866 : f32 = u_xlat60;
  let x_2867 : f32 = u_xlat60;
  u_xlat20.x = (x_2866 * -(x_2867));
  let x_2872 : f32 = u_xlat20.x;
  u_xlat20.x = exp2(x_2872);
  let x_2875 : vec4<f32> = u_xlat1;
  let x_2879 : vec4<f32> = x_44.unity_FogColor;
  let x_2882 : vec3<f32> = (vec3<f32>(x_2875.x, x_2875.y, x_2875.z) + -(vec3<f32>(x_2879.x, x_2879.y, x_2879.z)));
  let x_2883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2883.w);
  let x_2887 : vec3<f32> = u_xlat20;
  let x_2889 : vec4<f32> = u_xlat1;
  let x_2893 : vec4<f32> = x_44.unity_FogColor;
  let x_2895 : vec3<f32> = ((vec3<f32>(x_2887.x, x_2887.x, x_2887.x) * vec3<f32>(x_2889.x, x_2889.y, x_2889.z)) + vec3<f32>(x_2893.x, x_2893.y, x_2893.z));
  let x_2896 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2896.w);
  let x_2899 : f32 = x_57.x_Surface;
  u_xlatb20 = (x_2899 == 1.0f);
  let x_2901 : bool = u_xlatb20;
  let x_2902 : bool = u_xlatb40;
  u_xlatb20 = (x_2901 | x_2902);
  let x_2904 : bool = u_xlatb20;
  if (x_2904) {
    let x_2909 : f32 = u_xlat0.x;
    x_2905 = x_2909;
  } else {
    x_2905 = 1.0f;
  }
  let x_2911 : f32 = x_2905;
  SV_Target0.w = x_2911;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

