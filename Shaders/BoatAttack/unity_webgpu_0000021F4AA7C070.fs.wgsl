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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_386 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1702 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1835 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2021 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2131 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_131 : f32;
  var u_xlatb19 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlatb60 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb61 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat24 : f32;
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
  var u_xlatb5 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_1786 : f32;
  var x_1797 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati44 : i32;
  var u_xlat62 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat44 : f32;
  var u_xlat63 : f32;
  var u_xlatu63 : u32;
  var u_xlati64 : i32;
  var u_xlati63 : i32;
  var u_xlati65 : i32;
  var u_xlatb63 : bool;
  var u_xlat47 : vec2<f32>;
  var u_xlatb47 : vec2<bool>;
  var x_2424 : f32;
  var x_2437 : f32;
  var x_2489 : f32;
  var x_2500 : vec3<f32>;
  var x_2680 : f32;
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
  u_xlat19.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat57;
  let x_105 : f32 = u_xlat38;
  u_xlat38 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat38;
  u_xlat38 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat19.x;
  let x_113 : f32 = u_xlat38;
  u_xlat19.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat19.x;
  u_xlat19.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb38;
  if (x_130) {
    let x_135 : f32 = u_xlat19.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat19.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat19.x;
  u_xlatb19 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb19;
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
  let x_185 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat19;
  let x_189 : vec3<f32> = u_xlat19;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec3<f32> = u_xlat19;
  let x_214 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_211.z, x_211.z, x_211.z) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec3<f32> = u_xlat19;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  let x_223 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_220.x, x_220.y, x_220.z)) + x_223);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = vs_TEXCOORD2;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat19.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat19;
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
  u_xlat19.x = dot(x_256, x_257);
  let x_261 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_261, 1.17549435e-37f);
  let x_266 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_266);
  let x_272 : f32 = vs_TEXCOORD1.y;
  let x_275 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat57 = (x_272 * x_275);
  let x_278 : f32 = x_44.unity_MatrixV[0i].z;
  let x_280 : f32 = vs_TEXCOORD1.x;
  let x_282 : f32 = u_xlat57;
  u_xlat57 = ((x_278 * x_280) + x_282);
  let x_285 : f32 = x_44.unity_MatrixV[2i].z;
  let x_287 : f32 = vs_TEXCOORD1.z;
  let x_289 : f32 = u_xlat57;
  u_xlat57 = ((x_285 * x_287) + x_289);
  let x_291 : f32 = u_xlat57;
  let x_294 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat57 = (x_291 + x_294);
  let x_296 : f32 = u_xlat57;
  let x_300 : f32 = x_44.x_ProjectionParams.y;
  u_xlat57 = (-(x_296) + -(x_300));
  let x_303 : f32 = u_xlat57;
  u_xlat57 = max(x_303, 0.0f);
  let x_305 : f32 = u_xlat57;
  let x_308 : f32 = x_44.unity_FogParams.x;
  u_xlat57 = (x_305 * x_308);
  let x_317 : vec2<f32> = vs_TEXCOORD7;
  let x_319 : f32 = x_44.x_GlobalMipBias.x;
  let x_320 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_317, x_319);
  u_xlat4 = vec3<f32>(x_320.x, x_320.y, x_320.z);
  let x_325 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_330 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_326.x, x_326.y));
  let x_331 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = hlslcc_FragCoord;
  let x_337 : vec2<f32> = (vec2<f32>(x_333.x, x_333.y) * vec2<f32>(x_335.x, x_335.y));
  let x_338 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
  let x_341 : f32 = u_xlat5.y;
  let x_344 : f32 = x_44.x_ScaleBiasRt.x;
  let x_347 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_341 * x_344) + x_347);
  let x_351 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_351) + 1.0f);
  let x_360 : vec4<f32> = u_xlat5;
  let x_363 : f32 = x_44.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_360.x, x_360.z), x_363);
  u_xlat1.x = x_364.x;
  let x_369 : f32 = u_xlat1.x;
  u_xlat59 = (x_369 + -1.0f);
  let x_373 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_374 : f32 = u_xlat59;
  u_xlat59 = ((x_373 * x_374) + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_378, 1.0f);
  let x_388 : f32 = x_386.x_MainLightShadowParams.y;
  u_xlatb60 = (0.0f < x_388);
  let x_390 : bool = u_xlatb60;
  if (x_390) {
    let x_394 : f32 = x_386.x_MainLightShadowParams.y;
    u_xlatb60 = (x_394 == 1.0f);
    let x_396 : bool = u_xlatb60;
    if (x_396) {
      let x_400 : vec4<f32> = vs_TEXCOORD6;
      let x_404 : vec4<f32> = x_386.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_400.x, x_400.y, x_400.x, x_400.y) + x_404);
      let x_407 : vec4<f32> = u_xlat5;
      let x_408 : vec2<f32> = vec2<f32>(x_407.x, x_407.y);
      let x_410 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_408.x, x_408.y, x_410);
      let x_423 : vec3<f32> = txVec0;
      let x_425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_423.xy, x_423.z);
      u_xlat6.x = x_425;
      let x_428 : vec4<f32> = u_xlat5;
      let x_429 : vec2<f32> = vec2<f32>(x_428.z, x_428.w);
      let x_431 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_429.x, x_429.y, x_431);
      let x_438 : vec3<f32> = txVec1;
      let x_440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_438.xy, x_438.z);
      u_xlat6.y = x_440;
      let x_442 : vec4<f32> = vs_TEXCOORD6;
      let x_446 : vec4<f32> = x_386.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_442.x, x_442.y, x_442.x, x_442.y) + x_446);
      let x_449 : vec4<f32> = u_xlat5;
      let x_450 : vec2<f32> = vec2<f32>(x_449.x, x_449.y);
      let x_452 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_450.x, x_450.y, x_452);
      let x_459 : vec3<f32> = txVec2;
      let x_461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_459.xy, x_459.z);
      u_xlat6.z = x_461;
      let x_464 : vec4<f32> = u_xlat5;
      let x_465 : vec2<f32> = vec2<f32>(x_464.z, x_464.w);
      let x_467 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_465.x, x_465.y, x_467);
      let x_474 : vec3<f32> = txVec3;
      let x_476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_474.xy, x_474.z);
      u_xlat6.w = x_476;
      let x_479 : vec4<f32> = u_xlat6;
      u_xlat60 = dot(x_479, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_486 : f32 = x_386.x_MainLightShadowParams.y;
      u_xlatb61 = (x_486 == 2.0f);
      let x_488 : bool = u_xlatb61;
      if (x_488) {
        let x_491 : vec4<f32> = vs_TEXCOORD6;
        let x_494 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_498 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(x_494.z, x_494.w)) + vec2<f32>(0.5f, 0.5f));
        let x_499 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
        let x_501 : vec4<f32> = u_xlat5;
        let x_503 : vec2<f32> = floor(vec2<f32>(x_501.x, x_501.y));
        let x_504 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_508 : vec4<f32> = vs_TEXCOORD6;
        let x_511 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_514 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_508.x, x_508.y) * vec2<f32>(x_511.z, x_511.w)) + -(vec2<f32>(x_514.x, x_514.y)));
        let x_518 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_518.x, x_518.x, x_518.y, x_518.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_523 : vec4<f32> = u_xlat6;
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_523.x, x_523.x, x_523.z, x_523.z) * vec4<f32>(x_525.x, x_525.x, x_525.z, x_525.z));
        let x_528 : vec4<f32> = u_xlat7;
        let x_532 : vec2<f32> = (vec2<f32>(x_528.y, x_528.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_533 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_532.x, x_533.y, x_532.y, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_538 : vec2<f32> = u_xlat43;
        let x_540 : vec2<f32> = ((vec2<f32>(x_535.x, x_535.z) * vec2<f32>(0.5f, 0.5f)) + -(x_538));
        let x_541 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_544 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_544) + vec2<f32>(1.0f, 1.0f));
        let x_548 : vec2<f32> = u_xlat43;
        let x_550 : vec2<f32> = min(x_548, vec2<f32>(0.0f, 0.0f));
        let x_551 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_553 : vec4<f32> = u_xlat8;
        let x_556 : vec4<f32> = u_xlat8;
        let x_559 : vec2<f32> = u_xlat45;
        let x_560 : vec2<f32> = ((-(vec2<f32>(x_553.x, x_553.y)) * vec2<f32>(x_556.x, x_556.y)) + x_559);
        let x_561 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
        let x_563 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_563, vec2<f32>(0.0f, 0.0f));
        let x_565 : vec2<f32> = u_xlat43;
        let x_567 : vec2<f32> = u_xlat43;
        let x_569 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_565) * x_567) + vec2<f32>(x_569.y, x_569.w));
        let x_572 : vec4<f32> = u_xlat8;
        let x_574 : vec2<f32> = (vec2<f32>(x_572.x, x_572.y) + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_577 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_577 + vec2<f32>(1.0f, 1.0f));
        let x_580 : vec4<f32> = u_xlat7;
        let x_584 : vec2<f32> = (vec2<f32>(x_580.x, x_580.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_585 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_587 : vec2<f32> = u_xlat45;
        let x_588 : vec2<f32> = (x_587 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_589 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat8;
        let x_593 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_597 : vec2<f32> = u_xlat43;
        let x_598 : vec2<f32> = (x_597 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_599 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_601.y, x_601.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_605 : f32 = u_xlat8.x;
        u_xlat9.z = x_605;
        let x_608 : f32 = u_xlat43.x;
        u_xlat9.w = x_608;
        let x_611 : f32 = u_xlat10.x;
        u_xlat7.z = x_611;
        let x_614 : f32 = u_xlat6.x;
        u_xlat7.w = x_614;
        let x_617 : vec4<f32> = u_xlat7;
        let x_619 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_617.z, x_617.w, x_617.x, x_617.z) + vec4<f32>(x_619.z, x_619.w, x_619.x, x_619.z));
        let x_623 : f32 = u_xlat9.y;
        u_xlat8.z = x_623;
        let x_626 : f32 = u_xlat43.y;
        u_xlat8.w = x_626;
        let x_629 : f32 = u_xlat7.y;
        u_xlat10.z = x_629;
        let x_632 : f32 = u_xlat6.z;
        u_xlat10.w = x_632;
        let x_634 : vec4<f32> = u_xlat8;
        let x_636 : vec4<f32> = u_xlat10;
        let x_638 : vec3<f32> = (vec3<f32>(x_634.z, x_634.y, x_634.w) + vec3<f32>(x_636.z, x_636.y, x_636.w));
        let x_639 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
        let x_641 : vec4<f32> = u_xlat7;
        let x_643 : vec4<f32> = u_xlat11;
        let x_645 : vec3<f32> = (vec3<f32>(x_641.x, x_641.z, x_641.w) / vec3<f32>(x_643.z, x_643.w, x_643.y));
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat7;
        let x_654 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat10;
        let x_659 : vec4<f32> = u_xlat6;
        let x_661 : vec3<f32> = (vec3<f32>(x_657.z, x_657.y, x_657.w) / vec3<f32>(x_659.x, x_659.y, x_659.z));
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat8;
        let x_666 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
        let x_669 : vec4<f32> = u_xlat7;
        let x_672 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_674 : vec3<f32> = (vec3<f32>(x_669.y, x_669.x, x_669.z) * vec3<f32>(x_672.x, x_672.x, x_672.x));
        let x_675 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat8;
        let x_680 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_682 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_680.y, x_680.y, x_680.y));
        let x_683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_686 : f32 = u_xlat8.x;
        u_xlat7.w = x_686;
        let x_688 : vec4<f32> = u_xlat5;
        let x_691 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y) * vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y)) + vec4<f32>(x_694.y, x_694.w, x_694.x, x_694.w));
        let x_697 : vec4<f32> = u_xlat5;
        let x_700 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_697.x, x_697.y) * vec2<f32>(x_700.x, x_700.y)) + vec2<f32>(x_703.z, x_703.w));
        let x_707 : f32 = u_xlat7.y;
        u_xlat8.w = x_707;
        let x_709 : vec4<f32> = u_xlat8;
        let x_710 : vec2<f32> = vec2<f32>(x_709.y, x_709.z);
        let x_711 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_711.x, x_710.x, x_711.z, x_710.y);
        let x_713 : vec4<f32> = u_xlat5;
        let x_716 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.x, x_719.y, x_719.z, x_719.y));
        let x_722 : vec4<f32> = u_xlat5;
        let x_725 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y) * vec4<f32>(x_725.x, x_725.y, x_725.x, x_725.y)) + vec4<f32>(x_728.w, x_728.y, x_728.w, x_728.z));
        let x_731 : vec4<f32> = u_xlat5;
        let x_734 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_737 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_731.x, x_731.y, x_731.x, x_731.y) * vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y)) + vec4<f32>(x_737.x, x_737.w, x_737.z, x_737.w));
        let x_741 : vec4<f32> = u_xlat6;
        let x_743 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_741.x, x_741.x, x_741.x, x_741.y) * vec4<f32>(x_743.z, x_743.w, x_743.y, x_743.z));
        let x_747 : vec4<f32> = u_xlat6;
        let x_749 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_747.y, x_747.y, x_747.z, x_747.z) * x_749);
        let x_753 : f32 = u_xlat6.z;
        let x_755 : f32 = u_xlat11.y;
        u_xlat61 = (x_753 * x_755);
        let x_758 : vec4<f32> = u_xlat9;
        let x_759 : vec2<f32> = vec2<f32>(x_758.x, x_758.y);
        let x_761 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_759.x, x_759.y, x_761);
        let x_768 : vec3<f32> = txVec4;
        let x_770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_768.xy, x_768.z);
        u_xlat5.x = x_770;
        let x_773 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = vec2<f32>(x_773.z, x_773.w);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_784 : vec3<f32> = txVec5;
        let x_786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_784.xy, x_784.z);
        u_xlat24 = x_786;
        let x_787 : f32 = u_xlat24;
        let x_789 : f32 = u_xlat12.y;
        u_xlat24 = (x_787 * x_789);
        let x_792 : f32 = u_xlat12.x;
        let x_794 : f32 = u_xlat5.x;
        let x_796 : f32 = u_xlat24;
        u_xlat5.x = ((x_792 * x_794) + x_796);
        let x_800 : vec2<f32> = u_xlat43;
        let x_802 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec6;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_809.xy, x_809.z);
        u_xlat24 = x_811;
        let x_813 : f32 = u_xlat12.z;
        let x_814 : f32 = u_xlat24;
        let x_817 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_813 * x_814) + x_817);
        let x_821 : vec4<f32> = u_xlat8;
        let x_822 : vec2<f32> = vec2<f32>(x_821.x, x_821.y);
        let x_824 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec7;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_831.xy, x_831.z);
        u_xlat24 = x_833;
        let x_835 : f32 = u_xlat12.w;
        let x_836 : f32 = u_xlat24;
        let x_839 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_835 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat10;
        let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
        let x_846 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec8;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_853.xy, x_853.z);
        u_xlat24 = x_855;
        let x_857 : f32 = u_xlat13.x;
        let x_858 : f32 = u_xlat24;
        let x_861 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_857 * x_858) + x_861);
        let x_865 : vec4<f32> = u_xlat10;
        let x_866 : vec2<f32> = vec2<f32>(x_865.z, x_865.w);
        let x_868 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec9;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_875.xy, x_875.z);
        u_xlat24 = x_877;
        let x_879 : f32 = u_xlat13.y;
        let x_880 : f32 = u_xlat24;
        let x_883 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_879 * x_880) + x_883);
        let x_887 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = vec2<f32>(x_887.z, x_887.w);
        let x_890 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec10;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_897.xy, x_897.z);
        u_xlat24 = x_899;
        let x_901 : f32 = u_xlat13.z;
        let x_902 : f32 = u_xlat24;
        let x_905 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_901 * x_902) + x_905);
        let x_909 : vec4<f32> = u_xlat7;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec11;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_919.xy, x_919.z);
        u_xlat24 = x_921;
        let x_923 : f32 = u_xlat13.w;
        let x_924 : f32 = u_xlat24;
        let x_927 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_923 * x_924) + x_927);
        let x_931 : vec4<f32> = u_xlat7;
        let x_932 : vec2<f32> = vec2<f32>(x_931.z, x_931.w);
        let x_934 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec12;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_941.xy, x_941.z);
        u_xlat24 = x_943;
        let x_944 : f32 = u_xlat61;
        let x_945 : f32 = u_xlat24;
        let x_948 : f32 = u_xlat5.x;
        u_xlat60 = ((x_944 * x_945) + x_948);
      } else {
        let x_951 : vec4<f32> = vs_TEXCOORD6;
        let x_954 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_957 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_954.z, x_954.w)) + vec2<f32>(0.5f, 0.5f));
        let x_958 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat5;
        let x_962 : vec2<f32> = floor(vec2<f32>(x_960.x, x_960.y));
        let x_963 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = vs_TEXCOORD6;
        let x_968 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_971 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_968.z, x_968.w)) + -(vec2<f32>(x_971.x, x_971.y)));
        let x_975 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_975.x, x_975.x, x_975.y, x_975.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_978 : vec4<f32> = u_xlat6;
        let x_980 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_978.x, x_978.x, x_978.z, x_978.z) * vec4<f32>(x_980.x, x_980.x, x_980.z, x_980.z));
        let x_983 : vec4<f32> = u_xlat7;
        let x_987 : vec2<f32> = (vec2<f32>(x_983.y, x_983.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_987.x, x_988.z, x_987.y);
        let x_990 : vec4<f32> = u_xlat7;
        let x_993 : vec2<f32> = u_xlat43;
        let x_995 : vec2<f32> = ((vec2<f32>(x_990.x, x_990.z) * vec2<f32>(0.5f, 0.5f)) + -(x_993));
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_995.x, x_996.y, x_995.y, x_996.w);
        let x_998 : vec2<f32> = u_xlat43;
        let x_1000 : vec2<f32> = (-(x_998) + vec2<f32>(1.0f, 1.0f));
        let x_1001 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1003, vec2<f32>(0.0f, 0.0f));
        let x_1005 : vec2<f32> = u_xlat45;
        let x_1007 : vec2<f32> = u_xlat45;
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1011 : vec2<f32> = ((-(x_1005) * x_1007) + vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1014, vec2<f32>(0.0f, 0.0f));
        let x_1017 : vec2<f32> = u_xlat45;
        let x_1019 : vec2<f32> = u_xlat45;
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1023 : vec2<f32> = ((-(x_1017) * x_1019) + vec2<f32>(x_1021.y, x_1021.w));
        let x_1024 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1023.x, x_1024.y, x_1023.y);
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) + vec2<f32>(2.0f, 2.0f));
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec3<f32> = u_xlat25;
        let x_1033 : vec2<f32> = (vec2<f32>(x_1031.x, x_1031.z) + vec2<f32>(2.0f, 2.0f));
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1034.x, x_1033.x, x_1034.z, x_1033.y);
        let x_1037 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1037 * 0.081632003f);
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec3<f32> = (vec3<f32>(x_1041.z, x_1041.x, x_1041.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1051 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1054 : f32 = u_xlat10.y;
        u_xlat9.x = x_1054;
        let x_1056 : vec2<f32> = u_xlat43;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec2<f32> = u_xlat43;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1070.x, x_1071.y, x_1070.y, x_1071.w);
        let x_1074 : f32 = u_xlat6.x;
        u_xlat7.y = x_1074;
        let x_1077 : f32 = u_xlat8.y;
        u_xlat7.w = x_1077;
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1079 + x_1080);
        let x_1082 : vec2<f32> = u_xlat43;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1082.y, x_1082.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1088 : vec2<f32> = u_xlat43;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1088.y, x_1088.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1092.w);
        let x_1095 : f32 = u_xlat6.y;
        u_xlat8.y = x_1095;
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1097 + x_1098);
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1100 / x_1101);
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1103 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1110 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1109 / x_1110);
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1112 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1117 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1114.w, x_1114.x, x_1114.y, x_1114.z) * vec4<f32>(x_1117.x, x_1117.x, x_1117.x, x_1117.x));
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1123 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1120.x, x_1120.w, x_1120.y, x_1120.z) * vec4<f32>(x_1123.y, x_1123.y, x_1123.y, x_1123.y));
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1127 : vec3<f32> = vec3<f32>(x_1126.y, x_1126.z, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1127.z);
        let x_1131 : f32 = u_xlat8.x;
        u_xlat10.y = x_1131;
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1136 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y) * vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y)) + vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1139.y));
        let x_1142 : vec4<f32> = u_xlat5;
        let x_1145 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(x_1148.w, x_1148.y));
        let x_1152 : f32 = u_xlat10.y;
        u_xlat7.y = x_1152;
        let x_1155 : f32 = u_xlat8.z;
        u_xlat10.y = x_1155;
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1160 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y) * vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y)) + vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.y));
        let x_1166 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat10;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.w, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1178 : f32 = u_xlat10.y;
        u_xlat7.z = x_1178;
        let x_1181 : vec4<f32> = u_xlat5;
        let x_1184 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.z));
        let x_1191 : f32 = u_xlat8.w;
        u_xlat10.y = x_1191;
        let x_1194 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1200.y));
        let x_1204 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1214 : f32 = u_xlat10.y;
        u_xlat7.w = x_1214;
        let x_1217 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.x, x_1223.w));
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1227 : vec3<f32> = vec3<f32>(x_1226.x, x_1226.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1227.z);
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.y));
        let x_1240 : vec4<f32> = u_xlat5;
        let x_1243 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1250 : f32 = u_xlat7.x;
        u_xlat8.x = x_1250;
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_386.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.x, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1264 : vec4<f32> = u_xlat6;
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1264.x, x_1264.x, x_1264.x, x_1264.x) * x_1266);
        let x_1269 : vec4<f32> = u_xlat6;
        let x_1271 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1269.y, x_1269.y, x_1269.y, x_1269.y) * x_1271);
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1274.z, x_1274.z, x_1274.z, x_1274.z) * x_1276);
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1278.w, x_1278.w, x_1278.w, x_1278.w) * x_1280);
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.x, x_1283.y);
        let x_1286 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec13;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1293.xy, x_1293.z);
        u_xlat61 = x_1295;
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.z, x_1297.w);
        let x_1300 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec14;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1307.xy, x_1307.z);
        u_xlat7.x = x_1309;
        let x_1312 : f32 = u_xlat7.x;
        let x_1314 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1312 * x_1314);
        let x_1318 : f32 = u_xlat16.x;
        let x_1319 : f32 = u_xlat61;
        let x_1322 : f32 = u_xlat7.x;
        u_xlat61 = ((x_1318 * x_1319) + x_1322);
        let x_1325 : vec2<f32> = u_xlat43;
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec15;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat43.x = x_1336;
        let x_1339 : f32 = u_xlat16.z;
        let x_1341 : f32 = u_xlat43.x;
        let x_1343 : f32 = u_xlat61;
        u_xlat61 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat14;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.x, x_1346.y);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec16;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat43.x = x_1358;
        let x_1361 : f32 = u_xlat16.w;
        let x_1363 : f32 = u_xlat43.x;
        let x_1365 : f32 = u_xlat61;
        u_xlat61 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat12;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec17;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat43.x = x_1380;
        let x_1383 : f32 = u_xlat17.x;
        let x_1385 : f32 = u_xlat43.x;
        let x_1387 : f32 = u_xlat61;
        u_xlat61 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat12;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec18;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat43.x = x_1402;
        let x_1405 : f32 = u_xlat17.y;
        let x_1407 : f32 = u_xlat43.x;
        let x_1409 : f32 = u_xlat61;
        u_xlat61 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat13;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec19;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat43.x = x_1424;
        let x_1427 : f32 = u_xlat17.z;
        let x_1429 : f32 = u_xlat43.x;
        let x_1431 : f32 = u_xlat61;
        u_xlat61 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec20;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat43.x = x_1446;
        let x_1449 : f32 = u_xlat17.w;
        let x_1451 : f32 = u_xlat43.x;
        let x_1453 : f32 = u_xlat61;
        u_xlat61 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat15;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec21;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat43.x = x_1468;
        let x_1471 : f32 = u_xlat18.x;
        let x_1473 : f32 = u_xlat43.x;
        let x_1475 : f32 = u_xlat61;
        u_xlat61 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat15;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec22;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat43.x = x_1490;
        let x_1493 : f32 = u_xlat18.y;
        let x_1495 : f32 = u_xlat43.x;
        let x_1497 : f32 = u_xlat61;
        u_xlat61 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec2<f32> = u_xlat26;
        let x_1502 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec23;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1509.xy, x_1509.z);
        u_xlat43.x = x_1511;
        let x_1514 : f32 = u_xlat18.z;
        let x_1516 : f32 = u_xlat43.x;
        let x_1518 : f32 = u_xlat61;
        u_xlat61 = ((x_1514 * x_1516) + x_1518);
        let x_1521 : vec2<f32> = u_xlat51;
        let x_1523 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec24;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat43.x = x_1532;
        let x_1535 : f32 = u_xlat18.w;
        let x_1537 : f32 = u_xlat43.x;
        let x_1539 : f32 = u_xlat61;
        u_xlat61 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat10;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
        let x_1545 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec25;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat43.x = x_1554;
        let x_1557 : f32 = u_xlat6.x;
        let x_1559 : f32 = u_xlat43.x;
        let x_1561 : f32 = u_xlat61;
        u_xlat61 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat10;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.z, x_1564.w);
        let x_1567 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec26;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1574.xy, x_1574.z);
        u_xlat43.x = x_1576;
        let x_1579 : f32 = u_xlat6.y;
        let x_1581 : f32 = u_xlat43.x;
        let x_1583 : f32 = u_xlat61;
        u_xlat61 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec2<f32> = u_xlat46;
        let x_1588 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec27;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat43.x = x_1597;
        let x_1600 : f32 = u_xlat6.z;
        let x_1602 : f32 = u_xlat43.x;
        let x_1604 : f32 = u_xlat61;
        u_xlat61 = ((x_1600 * x_1602) + x_1604);
        let x_1607 : vec4<f32> = u_xlat5;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.x, x_1607.y);
        let x_1610 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec28;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat5.x = x_1619;
        let x_1622 : f32 = u_xlat6.w;
        let x_1624 : f32 = u_xlat5.x;
        let x_1626 : f32 = u_xlat61;
        u_xlat60 = ((x_1622 * x_1624) + x_1626);
      }
    }
  } else {
    let x_1630 : vec4<f32> = vs_TEXCOORD6;
    let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
    let x_1633 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
    let x_1640 : vec3<f32> = txVec29;
    let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1640.xy, x_1640.z);
    u_xlat60 = x_1642;
  }
  let x_1644 : f32 = x_386.x_MainLightShadowParams.x;
  u_xlat61 = (-(x_1644) + 1.0f);
  let x_1647 : f32 = u_xlat60;
  let x_1649 : f32 = x_386.x_MainLightShadowParams.x;
  let x_1651 : f32 = u_xlat61;
  u_xlat60 = ((x_1647 * x_1649) + x_1651);
  let x_1654 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (0.0f >= x_1654);
  let x_1658 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_1658 >= 1.0f);
  let x_1660 : bool = u_xlatb61;
  let x_1661 : bool = u_xlatb5;
  u_xlatb61 = (x_1660 | x_1661);
  let x_1663 : bool = u_xlatb61;
  let x_1664 : f32 = u_xlat60;
  u_xlat60 = select(x_1664, 1.0f, x_1663);
  let x_1666 : vec3<f32> = vs_TEXCOORD1;
  let x_1669 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1671 : vec3<f32> = (x_1666 + -(x_1669));
  let x_1672 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec4<f32> = u_xlat5;
  let x_1676 : vec4<f32> = u_xlat5;
  u_xlat61 = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1679 : f32 = u_xlat61;
  let x_1681 : f32 = x_386.x_MainLightShadowParams.z;
  let x_1684 : f32 = x_386.x_MainLightShadowParams.w;
  u_xlat61 = ((x_1679 * x_1681) + x_1684);
  let x_1686 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1686, 0.0f, 1.0f);
  let x_1688 : f32 = u_xlat60;
  u_xlat5.x = (-(x_1688) + 1.0f);
  let x_1692 : f32 = u_xlat61;
  let x_1694 : f32 = u_xlat5.x;
  let x_1696 : f32 = u_xlat60;
  u_xlat60 = ((x_1692 * x_1694) + x_1696);
  let x_1704 : f32 = x_1702.x_MainLightCookieTextureFormat;
  u_xlatb61 = !((x_1704 == -1.0f));
  let x_1706 : bool = u_xlatb61;
  if (x_1706) {
    let x_1709 : vec3<f32> = vs_TEXCOORD1;
    let x_1712 : vec4<f32> = x_1702.x_MainLightWorldToLight[1i];
    let x_1714 : vec2<f32> = (vec2<f32>(x_1709.y, x_1709.y) * vec2<f32>(x_1712.x, x_1712.y));
    let x_1715 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
    let x_1718 : vec4<f32> = x_1702.x_MainLightWorldToLight[0i];
    let x_1720 : vec3<f32> = vs_TEXCOORD1;
    let x_1723 : vec4<f32> = u_xlat5;
    let x_1725 : vec2<f32> = ((vec2<f32>(x_1718.x, x_1718.y) * vec2<f32>(x_1720.x, x_1720.x)) + vec2<f32>(x_1723.x, x_1723.y));
    let x_1726 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
    let x_1729 : vec4<f32> = x_1702.x_MainLightWorldToLight[2i];
    let x_1731 : vec3<f32> = vs_TEXCOORD1;
    let x_1734 : vec4<f32> = u_xlat5;
    let x_1736 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1731.z, x_1731.z)) + vec2<f32>(x_1734.x, x_1734.y));
    let x_1737 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
    let x_1739 : vec4<f32> = u_xlat5;
    let x_1742 : vec4<f32> = x_1702.x_MainLightWorldToLight[3i];
    let x_1744 : vec2<f32> = (vec2<f32>(x_1739.x, x_1739.y) + vec2<f32>(x_1742.x, x_1742.y));
    let x_1745 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1744.x, x_1744.y, x_1745.z, x_1745.w);
    let x_1747 : vec4<f32> = u_xlat5;
    let x_1750 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1751 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1750.x, x_1750.y, x_1751.z, x_1751.w);
    let x_1758 : vec4<f32> = u_xlat5;
    let x_1761 : f32 = x_44.x_GlobalMipBias.x;
    let x_1762 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1758.x, x_1758.y), x_1761);
    u_xlat5 = x_1762;
    let x_1767 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1769 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1771 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1773 : f32 = x_1702.x_MainLightCookieTextureFormat;
    let x_1774 : vec4<f32> = vec4<f32>(x_1767, x_1769, x_1771, x_1773);
    let x_1782 : vec4<bool> = (vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1774.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1782.x, x_1782.y);
    let x_1785 : bool = u_xlatb6.y;
    if (x_1785) {
      let x_1790 : f32 = u_xlat5.w;
      x_1786 = x_1790;
    } else {
      let x_1793 : f32 = u_xlat5.x;
      x_1786 = x_1793;
    }
    let x_1794 : f32 = x_1786;
    u_xlat61 = x_1794;
    let x_1796 : bool = u_xlatb6.x;
    if (x_1796) {
      let x_1800 : vec4<f32> = u_xlat5;
      x_1797 = vec3<f32>(x_1800.x, x_1800.y, x_1800.z);
    } else {
      let x_1803 : f32 = u_xlat61;
      x_1797 = vec3<f32>(x_1803, x_1803, x_1803);
    }
    let x_1805 : vec3<f32> = x_1797;
    let x_1806 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1812 : vec4<f32> = u_xlat5;
  let x_1815 : vec4<f32> = x_44.x_MainLightColor;
  let x_1817 : vec3<f32> = (vec3<f32>(x_1812.x, x_1812.y, x_1812.z) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : f32 = u_xlat59;
  let x_1822 : vec4<f32> = u_xlat5;
  let x_1824 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1825 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
  let x_1827 : vec4<f32> = u_xlat1;
  let x_1829 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_1827.x, x_1827.x, x_1827.x) * x_1829);
  let x_1831 : f32 = u_xlat60;
  let x_1837 : f32 = x_1835.unity_LightData.z;
  u_xlat1.x = (x_1831 * x_1837);
  let x_1840 : vec4<f32> = u_xlat1;
  let x_1842 : vec4<f32> = u_xlat5;
  let x_1844 : vec3<f32> = (vec3<f32>(x_1840.x, x_1840.x, x_1840.x) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  let x_1847 : vec3<f32> = u_xlat2;
  let x_1849 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_1847, vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
  let x_1854 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1854, 0.0f, 1.0f);
  let x_1857 : vec4<f32> = u_xlat1;
  let x_1859 : vec4<f32> = u_xlat5;
  let x_1861 : vec3<f32> = (vec3<f32>(x_1857.x, x_1857.x, x_1857.x) * vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
  let x_1862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
  let x_1865 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_1865 * 10.0f) + 1.0f);
  let x_1871 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1871);
  let x_1874 : vec3<f32> = u_xlat3;
  let x_1875 : vec3<f32> = u_xlat19;
  let x_1879 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1881 : vec3<f32> = ((x_1874 * vec3<f32>(x_1875.x, x_1875.x, x_1875.x)) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1884 : vec4<f32> = u_xlat7;
  let x_1886 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : f32 = u_xlat60;
  u_xlat60 = max(x_1889, 1.17549435e-37f);
  let x_1891 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1891);
  let x_1893 : f32 = u_xlat60;
  let x_1895 : vec4<f32> = u_xlat7;
  let x_1897 : vec3<f32> = (vec3<f32>(x_1893, x_1893, x_1893) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
  let x_1900 : vec3<f32> = u_xlat2;
  let x_1901 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1900, vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1904, 0.0f, 1.0f);
  let x_1906 : f32 = u_xlat60;
  u_xlat60 = log2(x_1906);
  let x_1909 : f32 = u_xlat1.x;
  let x_1910 : f32 = u_xlat60;
  u_xlat60 = (x_1909 * x_1910);
  let x_1912 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1912);
  let x_1914 : f32 = u_xlat60;
  let x_1917 : vec4<f32> = x_57.x_SpecColor;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1914, x_1914, x_1914) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec4<f32> = u_xlat5;
  let x_1924 : vec4<f32> = u_xlat7;
  let x_1926 : vec3<f32> = (vec3<f32>(x_1922.x, x_1922.y, x_1922.z) * vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1929 : vec4<f32> = u_xlat6;
  let x_1931 : vec4<f32> = u_xlat1;
  let x_1934 : vec4<f32> = u_xlat5;
  let x_1936 : vec3<f32> = ((vec3<f32>(x_1929.x, x_1929.y, x_1929.z) * vec3<f32>(x_1931.y, x_1931.z, x_1931.w)) + vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1940 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1942 : f32 = x_1835.unity_LightData.y;
  u_xlat60 = min(x_1940, x_1942);
  let x_1946 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_1946));
  let x_1950 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1952 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1954 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1956 : f32 = x_1702.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1957 : vec4<f32> = vec4<f32>(x_1950, x_1952, x_1954, x_1956);
  let x_1963 : vec4<bool> = (vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1957.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1963.x, x_1963.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1974 : u32 = u_xlatu_loop_1;
    let x_1975 : u32 = u_xlatu60;
    if ((x_1974 < x_1975)) {
    } else {
      break;
    }
    let x_1978 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_1978 >> 2u);
    let x_1982 : u32 = u_xlatu_loop_1;
    u_xlati44 = bitcast<i32>((x_1982 & 3u));
    let x_1986 : u32 = u_xlatu62;
    let x_1989 : vec4<f32> = x_1835.unity_LightIndices[bitcast<i32>(x_1986)];
    let x_1999 : i32 = u_xlati44;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2004 : vec4<u32> = indexable[x_1999];
    u_xlat62 = dot(x_1989, bitcast<vec4<f32>>(x_2004));
    let x_2007 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2007));
    let x_2010 : vec3<f32> = vs_TEXCOORD1;
    let x_2022 : u32 = u_xlatu62;
    let x_2025 : vec4<f32> = x_2021.x_AdditionalLightsPosition[bitcast<i32>(x_2022)];
    let x_2028 : u32 = u_xlatu62;
    let x_2031 : vec4<f32> = x_2021.x_AdditionalLightsPosition[bitcast<i32>(x_2028)];
    let x_2033 : vec3<f32> = ((-(x_2010) * vec3<f32>(x_2025.w, x_2025.w, x_2025.w)) + vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
    let x_2037 : vec4<f32> = u_xlat8;
    let x_2039 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_2037.x, x_2037.y, x_2037.z), vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
    let x_2042 : f32 = u_xlat44;
    u_xlat44 = max(x_2042, 6.10351562e-05f);
    let x_2046 : f32 = u_xlat44;
    u_xlat63 = inverseSqrt(x_2046);
    let x_2048 : f32 = u_xlat63;
    let x_2050 : vec4<f32> = u_xlat8;
    let x_2052 : vec3<f32> = (vec3<f32>(x_2048, x_2048, x_2048) * vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
    let x_2053 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
    let x_2055 : f32 = u_xlat44;
    u_xlat63 = (1.0f / x_2055);
    let x_2057 : f32 = u_xlat44;
    let x_2058 : u32 = u_xlatu62;
    let x_2061 : f32 = x_2021.x_AdditionalLightsAttenuation[bitcast<i32>(x_2058)].x;
    u_xlat44 = (x_2057 * x_2061);
    let x_2063 : f32 = u_xlat44;
    let x_2065 : f32 = u_xlat44;
    u_xlat44 = ((-(x_2063) * x_2065) + 1.0f);
    let x_2068 : f32 = u_xlat44;
    u_xlat44 = max(x_2068, 0.0f);
    let x_2070 : f32 = u_xlat44;
    let x_2071 : f32 = u_xlat44;
    u_xlat44 = (x_2070 * x_2071);
    let x_2073 : f32 = u_xlat44;
    let x_2074 : f32 = u_xlat63;
    u_xlat44 = (x_2073 * x_2074);
    let x_2076 : u32 = u_xlatu62;
    let x_2079 : vec4<f32> = x_2021.x_AdditionalLightsSpotDir[bitcast<i32>(x_2076)];
    let x_2081 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2079.x, x_2079.y, x_2079.z), vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
    let x_2084 : f32 = u_xlat63;
    let x_2085 : u32 = u_xlatu62;
    let x_2088 : f32 = x_2021.x_AdditionalLightsAttenuation[bitcast<i32>(x_2085)].z;
    let x_2090 : u32 = u_xlatu62;
    let x_2093 : f32 = x_2021.x_AdditionalLightsAttenuation[bitcast<i32>(x_2090)].w;
    u_xlat63 = ((x_2084 * x_2088) + x_2093);
    let x_2095 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2095, 0.0f, 1.0f);
    let x_2097 : f32 = u_xlat63;
    let x_2098 : f32 = u_xlat63;
    u_xlat63 = (x_2097 * x_2098);
    let x_2100 : f32 = u_xlat63;
    let x_2101 : f32 = u_xlat44;
    u_xlat44 = (x_2100 * x_2101);
    let x_2104 : u32 = u_xlatu62;
    u_xlatu63 = (x_2104 >> 5u);
    let x_2107 : u32 = u_xlatu62;
    u_xlati64 = (1i << bitcast<u32>((bitcast<i32>(x_2107) & 31i)));
    let x_2113 : i32 = u_xlati64;
    let x_2115 : u32 = u_xlatu63;
    let x_2118 : f32 = x_1702.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2115)].el;
    u_xlati63 = bitcast<i32>((bitcast<u32>(x_2113) & bitcast<u32>(x_2118)));
    let x_2122 : i32 = u_xlati63;
    if ((x_2122 != 0i)) {
      let x_2132 : u32 = u_xlatu62;
      let x_2135 : f32 = x_2131.x_AdditionalLightsLightTypes[bitcast<i32>(x_2132)].el;
      u_xlati63 = i32(x_2135);
      let x_2137 : i32 = u_xlati63;
      u_xlati64 = select(1i, 0i, (x_2137 != 0i));
      let x_2141 : u32 = u_xlatu62;
      u_xlati65 = (bitcast<i32>(x_2141) << bitcast<u32>(2i));
      let x_2144 : i32 = u_xlati64;
      if ((x_2144 != 0i)) {
        let x_2148 : vec3<f32> = vs_TEXCOORD1;
        let x_2150 : i32 = u_xlati65;
        let x_2153 : i32 = u_xlati65;
        let x_2157 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2150 + 1i) / 4i)][((x_2153 + 1i) % 4i)];
        let x_2159 : vec3<f32> = (vec3<f32>(x_2148.y, x_2148.y, x_2148.y) * vec3<f32>(x_2157.x, x_2157.y, x_2157.w));
        let x_2160 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
        let x_2162 : i32 = u_xlati65;
        let x_2164 : i32 = u_xlati65;
        let x_2167 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[(x_2162 / 4i)][(x_2164 % 4i)];
        let x_2169 : vec3<f32> = vs_TEXCOORD1;
        let x_2172 : vec4<f32> = u_xlat9;
        let x_2174 : vec3<f32> = ((vec3<f32>(x_2167.x, x_2167.y, x_2167.w) * vec3<f32>(x_2169.x, x_2169.x, x_2169.x)) + vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
        let x_2175 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
        let x_2177 : i32 = u_xlati65;
        let x_2180 : i32 = u_xlati65;
        let x_2184 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2177 + 2i) / 4i)][((x_2180 + 2i) % 4i)];
        let x_2186 : vec3<f32> = vs_TEXCOORD1;
        let x_2189 : vec4<f32> = u_xlat9;
        let x_2191 : vec3<f32> = ((vec3<f32>(x_2184.x, x_2184.y, x_2184.w) * vec3<f32>(x_2186.z, x_2186.z, x_2186.z)) + vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
        let x_2192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
        let x_2194 : vec4<f32> = u_xlat9;
        let x_2196 : i32 = u_xlati65;
        let x_2199 : i32 = u_xlati65;
        let x_2203 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2196 + 3i) / 4i)][((x_2199 + 3i) % 4i)];
        let x_2205 : vec3<f32> = (vec3<f32>(x_2194.x, x_2194.y, x_2194.z) + vec3<f32>(x_2203.x, x_2203.y, x_2203.w));
        let x_2206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
        let x_2208 : vec4<f32> = u_xlat9;
        let x_2210 : vec4<f32> = u_xlat9;
        let x_2212 : vec2<f32> = (vec2<f32>(x_2208.x, x_2208.y) / vec2<f32>(x_2210.z, x_2210.z));
        let x_2213 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
        let x_2215 : vec4<f32> = u_xlat9;
        let x_2218 : vec2<f32> = ((vec2<f32>(x_2215.x, x_2215.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2219 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
        let x_2221 : vec4<f32> = u_xlat9;
        let x_2225 : vec2<f32> = clamp(vec2<f32>(x_2221.x, x_2221.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2226 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        let x_2228 : u32 = u_xlatu62;
        let x_2231 : vec4<f32> = x_2131.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2228)];
        let x_2233 : vec4<f32> = u_xlat9;
        let x_2236 : u32 = u_xlatu62;
        let x_2239 : vec4<f32> = x_2131.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2236)];
        let x_2241 : vec2<f32> = ((vec2<f32>(x_2231.x, x_2231.y) * vec2<f32>(x_2233.x, x_2233.y)) + vec2<f32>(x_2239.z, x_2239.w));
        let x_2242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
      } else {
        let x_2246 : i32 = u_xlati63;
        u_xlatb63 = (x_2246 == 1i);
        let x_2248 : bool = u_xlatb63;
        u_xlati63 = select(0i, 1i, x_2248);
        let x_2250 : i32 = u_xlati63;
        if ((x_2250 != 0i)) {
          let x_2255 : vec3<f32> = vs_TEXCOORD1;
          let x_2257 : i32 = u_xlati65;
          let x_2260 : i32 = u_xlati65;
          let x_2264 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2257 + 1i) / 4i)][((x_2260 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2255.y, x_2255.y) * vec2<f32>(x_2264.x, x_2264.y));
          let x_2267 : i32 = u_xlati65;
          let x_2269 : i32 = u_xlati65;
          let x_2272 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[(x_2267 / 4i)][(x_2269 % 4i)];
          let x_2274 : vec3<f32> = vs_TEXCOORD1;
          let x_2277 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2272.x, x_2272.y) * vec2<f32>(x_2274.x, x_2274.x)) + x_2277);
          let x_2279 : i32 = u_xlati65;
          let x_2282 : i32 = u_xlati65;
          let x_2286 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2279 + 2i) / 4i)][((x_2282 + 2i) % 4i)];
          let x_2288 : vec3<f32> = vs_TEXCOORD1;
          let x_2291 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2286.x, x_2286.y) * vec2<f32>(x_2288.z, x_2288.z)) + x_2291);
          let x_2293 : vec2<f32> = u_xlat47;
          let x_2294 : i32 = u_xlati65;
          let x_2297 : i32 = u_xlati65;
          let x_2301 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2294 + 3i) / 4i)][((x_2297 + 3i) % 4i)];
          u_xlat47 = (x_2293 + vec2<f32>(x_2301.x, x_2301.y));
          let x_2304 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2304 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2307 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2307);
          let x_2309 : u32 = u_xlatu62;
          let x_2312 : vec4<f32> = x_2131.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2309)];
          let x_2314 : vec2<f32> = u_xlat47;
          let x_2316 : u32 = u_xlatu62;
          let x_2319 : vec4<f32> = x_2131.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2316)];
          let x_2321 : vec2<f32> = ((vec2<f32>(x_2312.x, x_2312.y) * x_2314) + vec2<f32>(x_2319.z, x_2319.w));
          let x_2322 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
        } else {
          let x_2325 : vec3<f32> = vs_TEXCOORD1;
          let x_2327 : i32 = u_xlati65;
          let x_2330 : i32 = u_xlati65;
          let x_2334 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2327 + 1i) / 4i)][((x_2330 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2325.y, x_2325.y, x_2325.y, x_2325.y) * x_2334);
          let x_2336 : i32 = u_xlati65;
          let x_2338 : i32 = u_xlati65;
          let x_2341 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[(x_2336 / 4i)][(x_2338 % 4i)];
          let x_2342 : vec3<f32> = vs_TEXCOORD1;
          let x_2345 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2341 * vec4<f32>(x_2342.x, x_2342.x, x_2342.x, x_2342.x)) + x_2345);
          let x_2347 : i32 = u_xlati65;
          let x_2350 : i32 = u_xlati65;
          let x_2354 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2347 + 2i) / 4i)][((x_2350 + 2i) % 4i)];
          let x_2355 : vec3<f32> = vs_TEXCOORD1;
          let x_2358 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2354 * vec4<f32>(x_2355.z, x_2355.z, x_2355.z, x_2355.z)) + x_2358);
          let x_2360 : vec4<f32> = u_xlat10;
          let x_2361 : i32 = u_xlati65;
          let x_2364 : i32 = u_xlati65;
          let x_2368 : vec4<f32> = x_2131.x_AdditionalLightsWorldToLights[((x_2361 + 3i) / 4i)][((x_2364 + 3i) % 4i)];
          u_xlat10 = (x_2360 + x_2368);
          let x_2370 : vec4<f32> = u_xlat10;
          let x_2372 : vec4<f32> = u_xlat10;
          let x_2374 : vec3<f32> = (vec3<f32>(x_2370.x, x_2370.y, x_2370.z) / vec3<f32>(x_2372.w, x_2372.w, x_2372.w));
          let x_2375 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
          let x_2377 : vec4<f32> = u_xlat10;
          let x_2379 : vec4<f32> = u_xlat10;
          u_xlat63 = dot(vec3<f32>(x_2377.x, x_2377.y, x_2377.z), vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
          let x_2382 : f32 = u_xlat63;
          u_xlat63 = inverseSqrt(x_2382);
          let x_2384 : f32 = u_xlat63;
          let x_2386 : vec4<f32> = u_xlat10;
          let x_2388 : vec3<f32> = (vec3<f32>(x_2384, x_2384, x_2384) * vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
          let x_2389 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
          let x_2391 : vec4<f32> = u_xlat10;
          u_xlat63 = dot(abs(vec3<f32>(x_2391.x, x_2391.y, x_2391.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2396 : f32 = u_xlat63;
          u_xlat63 = max(x_2396, 0.000001f);
          let x_2399 : f32 = u_xlat63;
          u_xlat63 = (1.0f / x_2399);
          let x_2401 : f32 = u_xlat63;
          let x_2403 : vec4<f32> = u_xlat10;
          let x_2405 : vec3<f32> = (vec3<f32>(x_2401, x_2401, x_2401) * vec3<f32>(x_2403.z, x_2403.x, x_2403.y));
          let x_2406 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
          let x_2409 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2409);
          let x_2413 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2413, 0.0f, 1.0f);
          let x_2417 : vec4<f32> = u_xlat11;
          let x_2420 : vec4<bool> = (vec4<f32>(x_2417.y, x_2417.z, x_2417.y, x_2417.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2420.x, x_2420.y);
          let x_2423 : bool = u_xlatb47.x;
          if (x_2423) {
            let x_2428 : f32 = u_xlat11.x;
            x_2424 = x_2428;
          } else {
            let x_2431 : f32 = u_xlat11.x;
            x_2424 = -(x_2431);
          }
          let x_2433 : f32 = x_2424;
          u_xlat47.x = x_2433;
          let x_2436 : bool = u_xlatb47.y;
          if (x_2436) {
            let x_2441 : f32 = u_xlat11.x;
            x_2437 = x_2441;
          } else {
            let x_2444 : f32 = u_xlat11.x;
            x_2437 = -(x_2444);
          }
          let x_2446 : f32 = x_2437;
          u_xlat47.y = x_2446;
          let x_2448 : vec4<f32> = u_xlat10;
          let x_2450 : f32 = u_xlat63;
          let x_2453 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2448.x, x_2448.y) * vec2<f32>(x_2450, x_2450)) + x_2453);
          let x_2455 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2455 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2458 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2458, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2462 : u32 = u_xlatu62;
          let x_2465 : vec4<f32> = x_2131.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2462)];
          let x_2467 : vec2<f32> = u_xlat47;
          let x_2469 : u32 = u_xlatu62;
          let x_2472 : vec4<f32> = x_2131.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2469)];
          let x_2474 : vec2<f32> = ((vec2<f32>(x_2465.x, x_2465.y) * x_2467) + vec2<f32>(x_2472.z, x_2472.w));
          let x_2475 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2474.x, x_2474.y, x_2475.z, x_2475.w);
        }
      }
      let x_2482 : vec4<f32> = u_xlat9;
      let x_2485 : f32 = x_44.x_GlobalMipBias.x;
      let x_2486 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2482.x, x_2482.y), x_2485);
      u_xlat9 = x_2486;
      let x_2488 : bool = u_xlatb6.y;
      if (x_2488) {
        let x_2493 : f32 = u_xlat9.w;
        x_2489 = x_2493;
      } else {
        let x_2496 : f32 = u_xlat9.x;
        x_2489 = x_2496;
      }
      let x_2497 : f32 = x_2489;
      u_xlat63 = x_2497;
      let x_2499 : bool = u_xlatb6.x;
      if (x_2499) {
        let x_2503 : vec4<f32> = u_xlat9;
        x_2500 = vec3<f32>(x_2503.x, x_2503.y, x_2503.z);
      } else {
        let x_2506 : f32 = u_xlat63;
        x_2500 = vec3<f32>(x_2506, x_2506, x_2506);
      }
      let x_2508 : vec3<f32> = x_2500;
      let x_2509 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2515 : vec4<f32> = u_xlat9;
    let x_2517 : u32 = u_xlatu62;
    let x_2520 : vec4<f32> = x_2021.x_AdditionalLightsColor[bitcast<i32>(x_2517)];
    let x_2522 : vec3<f32> = (vec3<f32>(x_2515.x, x_2515.y, x_2515.z) * vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
    let x_2523 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
    let x_2525 : f32 = u_xlat59;
    let x_2527 : vec4<f32> = u_xlat9;
    let x_2529 : vec3<f32> = (vec3<f32>(x_2525, x_2525, x_2525) * vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
    let x_2530 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
    let x_2532 : f32 = u_xlat44;
    let x_2534 : vec4<f32> = u_xlat9;
    let x_2536 : vec3<f32> = (vec3<f32>(x_2532, x_2532, x_2532) * vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
    let x_2537 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
    let x_2539 : vec3<f32> = u_xlat2;
    let x_2540 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2539, vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
    let x_2543 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2543, 0.0f, 1.0f);
    let x_2545 : f32 = u_xlat62;
    let x_2547 : vec4<f32> = u_xlat9;
    let x_2549 : vec3<f32> = (vec3<f32>(x_2545, x_2545, x_2545) * vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
    let x_2550 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
    let x_2552 : vec3<f32> = u_xlat3;
    let x_2553 : vec3<f32> = u_xlat19;
    let x_2556 : vec4<f32> = u_xlat8;
    let x_2558 : vec3<f32> = ((x_2552 * vec3<f32>(x_2553.x, x_2553.x, x_2553.x)) + vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
    let x_2559 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
    let x_2561 : vec4<f32> = u_xlat8;
    let x_2563 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(vec3<f32>(x_2561.x, x_2561.y, x_2561.z), vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
    let x_2566 : f32 = u_xlat62;
    u_xlat62 = max(x_2566, 1.17549435e-37f);
    let x_2568 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2568);
    let x_2570 : f32 = u_xlat62;
    let x_2572 : vec4<f32> = u_xlat8;
    let x_2574 : vec3<f32> = (vec3<f32>(x_2570, x_2570, x_2570) * vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
    let x_2575 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
    let x_2577 : vec3<f32> = u_xlat2;
    let x_2578 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2577, vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
    let x_2581 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2581, 0.0f, 1.0f);
    let x_2583 : f32 = u_xlat62;
    u_xlat62 = log2(x_2583);
    let x_2586 : f32 = u_xlat1.x;
    let x_2587 : f32 = u_xlat62;
    u_xlat62 = (x_2586 * x_2587);
    let x_2589 : f32 = u_xlat62;
    u_xlat62 = exp2(x_2589);
    let x_2591 : f32 = u_xlat62;
    let x_2594 : vec4<f32> = x_57.x_SpecColor;
    let x_2596 : vec3<f32> = (vec3<f32>(x_2591, x_2591, x_2591) * vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
    let x_2597 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
    let x_2599 : vec4<f32> = u_xlat8;
    let x_2601 : vec4<f32> = u_xlat9;
    let x_2603 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.y, x_2599.z) * vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
    let x_2604 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
    let x_2606 : vec4<f32> = u_xlat10;
    let x_2608 : vec4<f32> = u_xlat1;
    let x_2611 : vec4<f32> = u_xlat8;
    let x_2613 : vec3<f32> = ((vec3<f32>(x_2606.x, x_2606.y, x_2606.z) * vec3<f32>(x_2608.y, x_2608.z, x_2608.w)) + vec3<f32>(x_2611.x, x_2611.y, x_2611.z));
    let x_2614 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
    let x_2616 : vec4<f32> = u_xlat7;
    let x_2618 : vec4<f32> = u_xlat8;
    let x_2620 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.y, x_2616.z) + vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
    let x_2621 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);

    continuing {
      let x_2623 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2623 + bitcast<u32>(1i));
    }
  }
  let x_2625 : vec3<f32> = u_xlat4;
  let x_2626 : vec4<f32> = u_xlat1;
  let x_2629 : vec4<f32> = u_xlat5;
  let x_2631 : vec3<f32> = ((x_2625 * vec3<f32>(x_2626.y, x_2626.z, x_2626.w)) + vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
  let x_2632 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
  let x_2634 : vec4<f32> = u_xlat7;
  let x_2636 : vec4<f32> = u_xlat1;
  let x_2638 : vec3<f32> = (vec3<f32>(x_2634.x, x_2634.y, x_2634.z) + vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
  let x_2639 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
  let x_2641 : f32 = u_xlat57;
  let x_2642 : f32 = u_xlat57;
  u_xlat19.x = (x_2641 * -(x_2642));
  let x_2647 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_2647);
  let x_2650 : vec4<f32> = u_xlat1;
  let x_2654 : vec4<f32> = x_44.unity_FogColor;
  let x_2657 : vec3<f32> = (vec3<f32>(x_2650.x, x_2650.y, x_2650.z) + -(vec3<f32>(x_2654.x, x_2654.y, x_2654.z)));
  let x_2658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
  let x_2662 : vec3<f32> = u_xlat19;
  let x_2664 : vec4<f32> = u_xlat1;
  let x_2668 : vec4<f32> = x_44.unity_FogColor;
  let x_2670 : vec3<f32> = ((vec3<f32>(x_2662.x, x_2662.x, x_2662.x) * vec3<f32>(x_2664.x, x_2664.y, x_2664.z)) + vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
  let x_2671 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
  let x_2674 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2674 == 1.0f);
  let x_2676 : bool = u_xlatb19;
  let x_2677 : bool = u_xlatb38;
  u_xlatb19 = (x_2676 | x_2677);
  let x_2679 : bool = u_xlatb19;
  if (x_2679) {
    let x_2684 : f32 = u_xlat0.x;
    x_2680 = x_2684;
  } else {
    x_2680 = 1.0f;
  }
  let x_2686 : f32 = x_2680;
  SV_Target0.w = x_2686;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

