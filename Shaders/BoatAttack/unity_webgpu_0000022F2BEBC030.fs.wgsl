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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_244 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1917 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2162 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2282 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb57 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu19 : u32;
  var u_xlati19 : i32;
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
  var u_xlatb5 : vec2<bool>;
  var x_2002 : f32;
  var x_2013 : vec3<f32>;
  var u_xlatu57 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu60 : u32;
  var u_xlati61 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu43 : u32;
  var u_xlati62 : i32;
  var u_xlati43 : i32;
  var u_xlati63 : i32;
  var u_xlatb43 : bool;
  var u_xlatb46 : vec2<bool>;
  var x_2582 : f32;
  var x_2595 : f32;
  var x_2647 : f32;
  var x_2659 : vec3<f32>;
  var x_2782 : f32;
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
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat19;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat19.x = x_177.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb57 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb57;
  if (x_189) {
    let x_194 : f32 = u_xlat19.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat19.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat19.x = x_201;
  let x_204 : f32 = u_xlat19.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat19.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat19.x;
  u_xlatb19 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb19;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat19;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_246 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres0;
  let x_249 : vec3<f32> = (x_239 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres1;
  let x_258 : vec3<f32> = (x_253 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_265 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_262 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_274 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres3;
  let x_277 : vec3<f32> = (x_272 + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_286 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_293 : vec4<f32> = u_xlat5;
  let x_295 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_308 : vec4<f32> = u_xlat3;
  let x_311 : vec4<f32> = x_244.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_308 < x_311);
  let x_314 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_330);
  let x_336 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_336);
  let x_340 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_340);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_345.y, x_345.z, x_345.w));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat3;
  let x_353 : vec3<f32> = max(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_353.z);
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(x_356, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_364 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_364) + 4.0f);
  let x_371 : f32 = u_xlat19.x;
  u_xlatu19 = u32(x_371);
  let x_375 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_375) << bitcast<u32>(2i));
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : i32 = u_xlati19;
  let x_383 : i32 = u_xlati19;
  let x_387 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_380 + 1i) / 4i)][((x_383 + 1i) % 4i)];
  let x_389 : vec3<f32> = (vec3<f32>(x_378.y, x_378.y, x_378.y) * vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : i32 = u_xlati19;
  let x_394 : i32 = u_xlati19;
  let x_397 : vec4<f32> = x_244.x_MainLightWorldToShadow[(x_392 / 4i)][(x_394 % 4i)];
  let x_399 : vec3<f32> = vs_TEXCOORD1;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399.x, x_399.x, x_399.x)) + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : i32 = u_xlati19;
  let x_410 : i32 = u_xlati19;
  let x_414 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_407 + 2i) / 4i)][((x_410 + 2i) % 4i)];
  let x_416 : vec3<f32> = vs_TEXCOORD1;
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.z, x_416.z, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : i32 = u_xlati19;
  let x_429 : i32 = u_xlati19;
  let x_433 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_426 + 3i) / 4i)][((x_429 + 3i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = vs_TEXCOORD1.y;
  let x_442 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat19.x = (x_439 * x_442);
  let x_446 : f32 = x_44.unity_MatrixV[0i].z;
  let x_448 : f32 = vs_TEXCOORD1.x;
  let x_451 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_446 * x_448) + x_451);
  let x_455 : f32 = x_44.unity_MatrixV[2i].z;
  let x_457 : f32 = vs_TEXCOORD1.z;
  let x_460 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_455 * x_457) + x_460);
  let x_464 : f32 = u_xlat19.x;
  let x_466 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat19.x = (x_464 + x_466);
  let x_470 : f32 = u_xlat19.x;
  let x_474 : f32 = x_44.x_ProjectionParams.y;
  u_xlat19.x = (-(x_470) + -(x_474));
  let x_479 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_479, 0.0f);
  let x_483 : f32 = u_xlat19.x;
  let x_486 : f32 = x_44.unity_FogParams.x;
  u_xlat19.x = (x_483 * x_486);
  u_xlat2.w = 1.0f;
  let x_492 : vec4<f32> = x_185.unity_SHAr;
  let x_493 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_492, x_493);
  let x_498 : vec4<f32> = x_185.unity_SHAg;
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_498, x_499);
  let x_504 : vec4<f32> = x_185.unity_SHAb;
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_504, x_505);
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_508.y, x_508.z, x_508.z, x_508.x) * vec4<f32>(x_510.x, x_510.y, x_510.z, x_510.z));
  let x_515 : vec4<f32> = x_185.unity_SHBr;
  let x_516 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_515, x_516);
  let x_521 : vec4<f32> = x_185.unity_SHBg;
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_521, x_522);
  let x_527 : vec4<f32> = x_185.unity_SHBb;
  let x_528 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_527, x_528);
  let x_532 : f32 = u_xlat2.y;
  let x_534 : f32 = u_xlat2.y;
  u_xlat57 = (x_532 * x_534);
  let x_537 : f32 = u_xlat2.x;
  let x_539 : f32 = u_xlat2.x;
  let x_541 : f32 = u_xlat57;
  u_xlat57 = ((x_537 * x_539) + -(x_541));
  let x_546 : vec4<f32> = x_185.unity_SHC;
  let x_548 : f32 = u_xlat57;
  let x_551 : vec4<f32> = u_xlat6;
  let x_553 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548, x_548, x_548)) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec4<f32> = u_xlat5;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = max(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
  let x_575 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_571.x, x_571.y));
  let x_576 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat5;
  let x_580 : vec4<f32> = hlslcc_FragCoord;
  let x_582 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_580.x, x_580.y));
  let x_583 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_586 : f32 = u_xlat5.y;
  let x_589 : f32 = x_44.x_ScaleBiasRt.x;
  let x_592 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat57 = ((x_586 * x_589) + x_592);
  let x_594 : f32 = u_xlat57;
  u_xlat5.z = (-(x_594) + 1.0f);
  let x_603 : vec4<f32> = u_xlat5;
  let x_606 : f32 = x_44.x_GlobalMipBias.x;
  let x_607 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_603.x, x_603.z), x_606);
  u_xlat57 = x_607.x;
  let x_609 : f32 = u_xlat57;
  u_xlat1.x = (x_609 + -1.0f);
  let x_613 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_615 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_613 * x_615) + 1.0f);
  let x_619 : f32 = u_xlat57;
  u_xlat57 = min(x_619, 1.0f);
  let x_623 : f32 = x_244.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_623);
  let x_625 : bool = u_xlatb59;
  if (x_625) {
    let x_629 : f32 = x_244.x_MainLightShadowParams.y;
    u_xlatb59 = (x_629 == 1.0f);
    let x_631 : bool = u_xlatb59;
    if (x_631) {
      let x_634 : vec4<f32> = u_xlat3;
      let x_638 : vec4<f32> = x_244.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) + x_638);
      let x_641 : vec4<f32> = u_xlat5;
      let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
      let x_644 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_642.x, x_642.y, x_644);
      let x_656 : vec3<f32> = txVec0;
      let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_656.xy, x_656.z);
      u_xlat6.x = x_658;
      let x_661 : vec4<f32> = u_xlat5;
      let x_662 : vec2<f32> = vec2<f32>(x_661.z, x_661.w);
      let x_664 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_662.x, x_662.y, x_664);
      let x_671 : vec3<f32> = txVec1;
      let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_671.xy, x_671.z);
      u_xlat6.y = x_673;
      let x_675 : vec4<f32> = u_xlat3;
      let x_679 : vec4<f32> = x_244.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y) + x_679);
      let x_682 : vec4<f32> = u_xlat5;
      let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
      let x_685 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec2;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat6.z = x_694;
      let x_697 : vec4<f32> = u_xlat5;
      let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
      let x_700 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_698.x, x_698.y, x_700);
      let x_707 : vec3<f32> = txVec3;
      let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_707.xy, x_707.z);
      u_xlat6.w = x_709;
      let x_712 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_712, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_719 : f32 = x_244.x_MainLightShadowParams.y;
      u_xlatb60 = (x_719 == 2.0f);
      let x_721 : bool = u_xlatb60;
      if (x_721) {
        let x_724 : vec4<f32> = u_xlat3;
        let x_727 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_731 : vec2<f32> = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_727.z, x_727.w)) + vec2<f32>(0.5f, 0.5f));
        let x_732 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat5;
        let x_736 : vec2<f32> = floor(vec2<f32>(x_734.x, x_734.y));
        let x_737 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_741 : vec4<f32> = u_xlat3;
        let x_744 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_744.z, x_744.w)) + -(vec2<f32>(x_747.x, x_747.y)));
        let x_751 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_751.x, x_751.x, x_751.y, x_751.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_756 : vec4<f32> = u_xlat6;
        let x_758 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_756.x, x_756.x, x_756.z, x_756.z) * vec4<f32>(x_758.x, x_758.x, x_758.z, x_758.z));
        let x_761 : vec4<f32> = u_xlat7;
        let x_765 : vec2<f32> = (vec2<f32>(x_761.y, x_761.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_766 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_765.x, x_766.y, x_765.y, x_766.w);
        let x_768 : vec4<f32> = u_xlat7;
        let x_771 : vec2<f32> = u_xlat43;
        let x_773 : vec2<f32> = ((vec2<f32>(x_768.x, x_768.z) * vec2<f32>(0.5f, 0.5f)) + -(x_771));
        let x_774 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
        let x_777 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_777) + vec2<f32>(1.0f, 1.0f));
        let x_781 : vec2<f32> = u_xlat43;
        let x_783 : vec2<f32> = min(x_781, vec2<f32>(0.0f, 0.0f));
        let x_784 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat8;
        let x_789 : vec4<f32> = u_xlat8;
        let x_792 : vec2<f32> = u_xlat45;
        let x_793 : vec2<f32> = ((-(vec2<f32>(x_786.x, x_786.y)) * vec2<f32>(x_789.x, x_789.y)) + x_792);
        let x_794 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_796, vec2<f32>(0.0f, 0.0f));
        let x_798 : vec2<f32> = u_xlat43;
        let x_800 : vec2<f32> = u_xlat43;
        let x_802 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_798) * x_800) + vec2<f32>(x_802.y, x_802.w));
        let x_805 : vec4<f32> = u_xlat8;
        let x_807 : vec2<f32> = (vec2<f32>(x_805.x, x_805.y) + vec2<f32>(1.0f, 1.0f));
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_810 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_810 + vec2<f32>(1.0f, 1.0f));
        let x_813 : vec4<f32> = u_xlat7;
        let x_817 : vec2<f32> = (vec2<f32>(x_813.x, x_813.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_818 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec2<f32> = u_xlat45;
        let x_821 : vec2<f32> = (x_820 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat8;
        let x_826 : vec2<f32> = (vec2<f32>(x_824.x, x_824.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_830 : vec2<f32> = u_xlat43;
        let x_831 : vec2<f32> = (x_830 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_832 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_834.y, x_834.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_838 : f32 = u_xlat8.x;
        u_xlat9.z = x_838;
        let x_841 : f32 = u_xlat43.x;
        u_xlat9.w = x_841;
        let x_844 : f32 = u_xlat10.x;
        u_xlat7.z = x_844;
        let x_847 : f32 = u_xlat6.x;
        u_xlat7.w = x_847;
        let x_850 : vec4<f32> = u_xlat7;
        let x_852 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_850.z, x_850.w, x_850.x, x_850.z) + vec4<f32>(x_852.z, x_852.w, x_852.x, x_852.z));
        let x_856 : f32 = u_xlat9.y;
        u_xlat8.z = x_856;
        let x_859 : f32 = u_xlat43.y;
        u_xlat8.w = x_859;
        let x_862 : f32 = u_xlat7.y;
        u_xlat10.z = x_862;
        let x_865 : f32 = u_xlat6.z;
        u_xlat10.w = x_865;
        let x_867 : vec4<f32> = u_xlat8;
        let x_869 : vec4<f32> = u_xlat10;
        let x_871 : vec3<f32> = (vec3<f32>(x_867.z, x_867.y, x_867.w) + vec3<f32>(x_869.z, x_869.y, x_869.w));
        let x_872 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat7;
        let x_876 : vec4<f32> = u_xlat11;
        let x_878 : vec3<f32> = (vec3<f32>(x_874.x, x_874.z, x_874.w) / vec3<f32>(x_876.z, x_876.w, x_876.y));
        let x_879 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat7;
        let x_887 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat10;
        let x_892 : vec4<f32> = u_xlat6;
        let x_894 : vec3<f32> = (vec3<f32>(x_890.z, x_890.y, x_890.w) / vec3<f32>(x_892.x, x_892.y, x_892.z));
        let x_895 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat8;
        let x_899 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_900 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat7;
        let x_905 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_907 : vec3<f32> = (vec3<f32>(x_902.y, x_902.x, x_902.z) * vec3<f32>(x_905.x, x_905.x, x_905.x));
        let x_908 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat8;
        let x_913 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_915 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_913.y, x_913.y, x_913.y));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
        let x_919 : f32 = u_xlat8.x;
        u_xlat7.w = x_919;
        let x_921 : vec4<f32> = u_xlat5;
        let x_924 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_921.x, x_921.y, x_921.x, x_921.y) * vec4<f32>(x_924.x, x_924.y, x_924.x, x_924.y)) + vec4<f32>(x_927.y, x_927.w, x_927.x, x_927.w));
        let x_930 : vec4<f32> = u_xlat5;
        let x_933 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_930.x, x_930.y) * vec2<f32>(x_933.x, x_933.y)) + vec2<f32>(x_936.z, x_936.w));
        let x_940 : f32 = u_xlat7.y;
        u_xlat8.w = x_940;
        let x_942 : vec4<f32> = u_xlat8;
        let x_943 : vec2<f32> = vec2<f32>(x_942.y, x_942.z);
        let x_944 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_944.x, x_943.x, x_944.z, x_943.y);
        let x_946 : vec4<f32> = u_xlat5;
        let x_949 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_952 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y) * vec4<f32>(x_949.x, x_949.y, x_949.x, x_949.y)) + vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.y));
        let x_955 : vec4<f32> = u_xlat5;
        let x_958 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_961 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_955.x, x_955.y, x_955.x, x_955.y) * vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.y)) + vec4<f32>(x_961.w, x_961.y, x_961.w, x_961.z));
        let x_964 : vec4<f32> = u_xlat5;
        let x_967 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_964.x, x_964.y, x_964.x, x_964.y) * vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y)) + vec4<f32>(x_970.x, x_970.w, x_970.z, x_970.w));
        let x_974 : vec4<f32> = u_xlat6;
        let x_976 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_974.x, x_974.x, x_974.x, x_974.y) * vec4<f32>(x_976.z, x_976.w, x_976.y, x_976.z));
        let x_980 : vec4<f32> = u_xlat6;
        let x_982 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_980.y, x_980.y, x_980.z, x_980.z) * x_982);
        let x_986 : f32 = u_xlat6.z;
        let x_988 : f32 = u_xlat11.y;
        u_xlat60 = (x_986 * x_988);
        let x_991 : vec4<f32> = u_xlat9;
        let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
        let x_994 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1002 : vec3<f32> = txVec4;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1002.xy, x_1002.z);
        u_xlat61 = x_1004;
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1007 : vec2<f32> = vec2<f32>(x_1006.z, x_1006.w);
        let x_1009 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1007.x, x_1007.y, x_1009);
        let x_1016 : vec3<f32> = txVec5;
        let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1016.xy, x_1016.z);
        u_xlat5.x = x_1018;
        let x_1021 : f32 = u_xlat5.x;
        let x_1023 : f32 = u_xlat12.y;
        u_xlat5.x = (x_1021 * x_1023);
        let x_1027 : f32 = u_xlat12.x;
        let x_1028 : f32 = u_xlat61;
        let x_1031 : f32 = u_xlat5.x;
        u_xlat61 = ((x_1027 * x_1028) + x_1031);
        let x_1034 : vec2<f32> = u_xlat43;
        let x_1036 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1034.x, x_1034.y, x_1036);
        let x_1043 : vec3<f32> = txVec6;
        let x_1045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1043.xy, x_1043.z);
        u_xlat5.x = x_1045;
        let x_1048 : f32 = u_xlat12.z;
        let x_1050 : f32 = u_xlat5.x;
        let x_1052 : f32 = u_xlat61;
        u_xlat61 = ((x_1048 * x_1050) + x_1052);
        let x_1055 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = vec2<f32>(x_1055.x, x_1055.y);
        let x_1058 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
        let x_1065 : vec3<f32> = txVec7;
        let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1065.xy, x_1065.z);
        u_xlat5.x = x_1067;
        let x_1070 : f32 = u_xlat12.w;
        let x_1072 : f32 = u_xlat5.x;
        let x_1074 : f32 = u_xlat61;
        u_xlat61 = ((x_1070 * x_1072) + x_1074);
        let x_1077 : vec4<f32> = u_xlat10;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
        let x_1080 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec8;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1087.xy, x_1087.z);
        u_xlat5.x = x_1089;
        let x_1092 : f32 = u_xlat13.x;
        let x_1094 : f32 = u_xlat5.x;
        let x_1096 : f32 = u_xlat61;
        u_xlat61 = ((x_1092 * x_1094) + x_1096);
        let x_1099 : vec4<f32> = u_xlat10;
        let x_1100 : vec2<f32> = vec2<f32>(x_1099.z, x_1099.w);
        let x_1102 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1100.x, x_1100.y, x_1102);
        let x_1109 : vec3<f32> = txVec9;
        let x_1111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1109.xy, x_1109.z);
        u_xlat5.x = x_1111;
        let x_1114 : f32 = u_xlat13.y;
        let x_1116 : f32 = u_xlat5.x;
        let x_1118 : f32 = u_xlat61;
        u_xlat61 = ((x_1114 * x_1116) + x_1118);
        let x_1121 : vec4<f32> = u_xlat8;
        let x_1122 : vec2<f32> = vec2<f32>(x_1121.z, x_1121.w);
        let x_1124 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1122.x, x_1122.y, x_1124);
        let x_1131 : vec3<f32> = txVec10;
        let x_1133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1131.xy, x_1131.z);
        u_xlat5.x = x_1133;
        let x_1136 : f32 = u_xlat13.z;
        let x_1138 : f32 = u_xlat5.x;
        let x_1140 : f32 = u_xlat61;
        u_xlat61 = ((x_1136 * x_1138) + x_1140);
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1144 : vec2<f32> = vec2<f32>(x_1143.x, x_1143.y);
        let x_1146 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1144.x, x_1144.y, x_1146);
        let x_1153 : vec3<f32> = txVec11;
        let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1153.xy, x_1153.z);
        u_xlat5.x = x_1155;
        let x_1158 : f32 = u_xlat13.w;
        let x_1160 : f32 = u_xlat5.x;
        let x_1162 : f32 = u_xlat61;
        u_xlat61 = ((x_1158 * x_1160) + x_1162);
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.z, x_1165.w);
        let x_1168 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1175 : vec3<f32> = txVec12;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1175.xy, x_1175.z);
        u_xlat5.x = x_1177;
        let x_1179 : f32 = u_xlat60;
        let x_1181 : f32 = u_xlat5.x;
        let x_1183 : f32 = u_xlat61;
        u_xlat59 = ((x_1179 * x_1181) + x_1183);
      } else {
        let x_1186 : vec4<f32> = u_xlat3;
        let x_1189 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(x_1189.z, x_1189.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1193 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1197 : vec2<f32> = floor(vec2<f32>(x_1195.x, x_1195.y));
        let x_1198 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat3;
        let x_1203 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.z, x_1203.w)) + -(vec2<f32>(x_1206.x, x_1206.y)));
        let x_1210 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1210.x, x_1210.x, x_1210.y, x_1210.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1213 : vec4<f32> = u_xlat6;
        let x_1215 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1213.x, x_1213.x, x_1213.z, x_1213.z) * vec4<f32>(x_1215.x, x_1215.x, x_1215.z, x_1215.z));
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1222 : vec2<f32> = (vec2<f32>(x_1218.y, x_1218.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1223 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1223.x, x_1222.x, x_1223.z, x_1222.y);
        let x_1225 : vec4<f32> = u_xlat7;
        let x_1228 : vec2<f32> = u_xlat43;
        let x_1230 : vec2<f32> = ((vec2<f32>(x_1225.x, x_1225.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1228));
        let x_1231 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1230.x, x_1231.y, x_1230.y, x_1231.w);
        let x_1233 : vec2<f32> = u_xlat43;
        let x_1235 : vec2<f32> = (-(x_1233) + vec2<f32>(1.0f, 1.0f));
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1238, vec2<f32>(0.0f, 0.0f));
        let x_1240 : vec2<f32> = u_xlat45;
        let x_1242 : vec2<f32> = u_xlat45;
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1246 : vec2<f32> = ((-(x_1240) * x_1242) + vec2<f32>(x_1244.x, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1249 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1249, vec2<f32>(0.0f, 0.0f));
        let x_1252 : vec2<f32> = u_xlat45;
        let x_1254 : vec2<f32> = u_xlat45;
        let x_1256 : vec4<f32> = u_xlat6;
        let x_1258 : vec2<f32> = ((-(x_1252) * x_1254) + vec2<f32>(x_1256.y, x_1256.w));
        let x_1259 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1258.x, x_1259.y, x_1258.y);
        let x_1261 : vec4<f32> = u_xlat7;
        let x_1264 : vec2<f32> = (vec2<f32>(x_1261.x, x_1261.y) + vec2<f32>(2.0f, 2.0f));
        let x_1265 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        let x_1267 : vec3<f32> = u_xlat25;
        let x_1269 : vec2<f32> = (vec2<f32>(x_1267.x, x_1267.z) + vec2<f32>(2.0f, 2.0f));
        let x_1270 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1270.x, x_1269.x, x_1270.z, x_1269.y);
        let x_1273 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1273 * 0.081632003f);
        let x_1277 : vec4<f32> = u_xlat6;
        let x_1280 : vec3<f32> = (vec3<f32>(x_1277.z, x_1277.x, x_1277.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat7;
        let x_1286 : vec2<f32> = (vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1287 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1286.x, x_1286.y, x_1287.z, x_1287.w);
        let x_1290 : f32 = u_xlat10.y;
        u_xlat9.x = x_1290;
        let x_1292 : vec2<f32> = u_xlat43;
        let x_1299 : vec2<f32> = ((vec2<f32>(x_1292.x, x_1292.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1300.x, x_1299.x, x_1300.z, x_1299.y);
        let x_1302 : vec2<f32> = u_xlat43;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1306.x, x_1307.y, x_1306.y, x_1307.w);
        let x_1310 : f32 = u_xlat6.x;
        u_xlat7.y = x_1310;
        let x_1313 : f32 = u_xlat8.y;
        u_xlat7.w = x_1313;
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1315 + x_1316);
        let x_1318 : vec2<f32> = u_xlat43;
        let x_1321 : vec2<f32> = ((vec2<f32>(x_1318.y, x_1318.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1322 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1322.x, x_1321.x, x_1322.z, x_1321.y);
        let x_1324 : vec2<f32> = u_xlat43;
        let x_1327 : vec2<f32> = ((vec2<f32>(x_1324.y, x_1324.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1328.w);
        let x_1331 : f32 = u_xlat6.y;
        u_xlat8.y = x_1331;
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1333 + x_1334);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1336 / x_1337);
        let x_1339 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1339 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1346 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1345 / x_1346);
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1348 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1350.w, x_1350.x, x_1350.y, x_1350.z) * vec4<f32>(x_1353.x, x_1353.x, x_1353.x, x_1353.x));
        let x_1356 : vec4<f32> = u_xlat8;
        let x_1359 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1356.x, x_1356.w, x_1356.y, x_1356.z) * vec4<f32>(x_1359.y, x_1359.y, x_1359.y, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1363 : vec3<f32> = vec3<f32>(x_1362.y, x_1362.z, x_1362.w);
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1363.x, x_1364.y, x_1363.y, x_1363.z);
        let x_1367 : f32 = u_xlat8.x;
        u_xlat10.y = x_1367;
        let x_1369 : vec4<f32> = u_xlat5;
        let x_1372 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1378 : vec4<f32> = u_xlat5;
        let x_1381 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1384 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1378.x, x_1378.y) * vec2<f32>(x_1381.x, x_1381.y)) + vec2<f32>(x_1384.w, x_1384.y));
        let x_1388 : f32 = u_xlat10.y;
        u_xlat7.y = x_1388;
        let x_1391 : f32 = u_xlat8.z;
        u_xlat10.y = x_1391;
        let x_1393 : vec4<f32> = u_xlat5;
        let x_1396 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y) * vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.y)) + vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1399.y));
        let x_1402 : vec4<f32> = u_xlat5;
        let x_1405 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat10;
        let x_1410 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.w, x_1408.y));
        let x_1411 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1414 : f32 = u_xlat10.y;
        u_xlat7.z = x_1414;
        let x_1417 : vec4<f32> = u_xlat5;
        let x_1420 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.y) * vec4<f32>(x_1420.x, x_1420.y, x_1420.x, x_1420.y)) + vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.z));
        let x_1427 : f32 = u_xlat8.w;
        u_xlat10.y = x_1427;
        let x_1430 : vec4<f32> = u_xlat5;
        let x_1433 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1430.x, x_1430.y, x_1430.x, x_1430.y) * vec4<f32>(x_1433.x, x_1433.y, x_1433.x, x_1433.y)) + vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1436.y));
        let x_1440 : vec4<f32> = u_xlat5;
        let x_1443 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(x_1443.x, x_1443.y)) + vec2<f32>(x_1446.w, x_1446.y));
        let x_1450 : f32 = u_xlat10.y;
        u_xlat7.w = x_1450;
        let x_1453 : vec4<f32> = u_xlat5;
        let x_1456 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.x, x_1459.w));
        let x_1462 : vec4<f32> = u_xlat10;
        let x_1463 : vec3<f32> = vec3<f32>(x_1462.x, x_1462.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1463.x, x_1464.y, x_1463.y, x_1463.z);
        let x_1466 : vec4<f32> = u_xlat5;
        let x_1469 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1472 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.y) * vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y)) + vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1472.y));
        let x_1476 : vec4<f32> = u_xlat5;
        let x_1479 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1482 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(x_1479.x, x_1479.y)) + vec2<f32>(x_1482.w, x_1482.y));
        let x_1486 : f32 = u_xlat7.x;
        u_xlat8.x = x_1486;
        let x_1488 : vec4<f32> = u_xlat5;
        let x_1491 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1494 : vec4<f32> = u_xlat8;
        let x_1496 : vec2<f32> = ((vec2<f32>(x_1488.x, x_1488.y) * vec2<f32>(x_1491.x, x_1491.y)) + vec2<f32>(x_1494.x, x_1494.y));
        let x_1497 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1496.x, x_1496.y, x_1497.z, x_1497.w);
        let x_1500 : vec4<f32> = u_xlat6;
        let x_1502 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1500.x, x_1500.x, x_1500.x, x_1500.x) * x_1502);
        let x_1505 : vec4<f32> = u_xlat6;
        let x_1507 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1505.y, x_1505.y, x_1505.y, x_1505.y) * x_1507);
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1510.z, x_1510.z, x_1510.z, x_1510.z) * x_1512);
        let x_1514 : vec4<f32> = u_xlat6;
        let x_1516 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1514.w, x_1514.w, x_1514.w, x_1514.w) * x_1516);
        let x_1519 : vec4<f32> = u_xlat11;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec13;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1529.xy, x_1529.z);
        u_xlat60 = x_1531;
        let x_1533 : vec4<f32> = u_xlat11;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.z, x_1533.w);
        let x_1536 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec14;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat61 = x_1545;
        let x_1546 : f32 = u_xlat61;
        let x_1548 : f32 = u_xlat16.y;
        u_xlat61 = (x_1546 * x_1548);
        let x_1551 : f32 = u_xlat16.x;
        let x_1552 : f32 = u_xlat60;
        let x_1554 : f32 = u_xlat61;
        u_xlat60 = ((x_1551 * x_1552) + x_1554);
        let x_1557 : vec2<f32> = u_xlat43;
        let x_1559 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec15;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1566.xy, x_1566.z);
        u_xlat61 = x_1568;
        let x_1570 : f32 = u_xlat16.z;
        let x_1571 : f32 = u_xlat61;
        let x_1573 : f32 = u_xlat60;
        u_xlat60 = ((x_1570 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat14;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec16;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat61 = x_1588;
        let x_1590 : f32 = u_xlat16.w;
        let x_1591 : f32 = u_xlat61;
        let x_1593 : f32 = u_xlat60;
        u_xlat60 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat12;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec17;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat61 = x_1608;
        let x_1610 : f32 = u_xlat17.x;
        let x_1611 : f32 = u_xlat61;
        let x_1613 : f32 = u_xlat60;
        u_xlat60 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat12;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.z, x_1616.w);
        let x_1619 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec18;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat61 = x_1628;
        let x_1630 : f32 = u_xlat17.y;
        let x_1631 : f32 = u_xlat61;
        let x_1633 : f32 = u_xlat60;
        u_xlat60 = ((x_1630 * x_1631) + x_1633);
        let x_1636 : vec4<f32> = u_xlat13;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.x, x_1636.y);
        let x_1639 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec19;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat61 = x_1648;
        let x_1650 : f32 = u_xlat17.z;
        let x_1651 : f32 = u_xlat61;
        let x_1653 : f32 = u_xlat60;
        u_xlat60 = ((x_1650 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat14;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.z, x_1656.w);
        let x_1659 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec20;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1666.xy, x_1666.z);
        u_xlat61 = x_1668;
        let x_1670 : f32 = u_xlat17.w;
        let x_1671 : f32 = u_xlat61;
        let x_1673 : f32 = u_xlat60;
        u_xlat60 = ((x_1670 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat15;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec21;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat61 = x_1688;
        let x_1690 : f32 = u_xlat18.x;
        let x_1691 : f32 = u_xlat61;
        let x_1693 : f32 = u_xlat60;
        u_xlat60 = ((x_1690 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat15;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.z, x_1696.w);
        let x_1699 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec22;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
        u_xlat61 = x_1708;
        let x_1710 : f32 = u_xlat18.y;
        let x_1711 : f32 = u_xlat61;
        let x_1713 : f32 = u_xlat60;
        u_xlat60 = ((x_1710 * x_1711) + x_1713);
        let x_1716 : vec2<f32> = u_xlat26;
        let x_1718 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
        let x_1725 : vec3<f32> = txVec23;
        let x_1727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1725.xy, x_1725.z);
        u_xlat61 = x_1727;
        let x_1729 : f32 = u_xlat18.z;
        let x_1730 : f32 = u_xlat61;
        let x_1732 : f32 = u_xlat60;
        u_xlat60 = ((x_1729 * x_1730) + x_1732);
        let x_1735 : vec2<f32> = u_xlat51;
        let x_1737 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec24;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1744.xy, x_1744.z);
        u_xlat61 = x_1746;
        let x_1748 : f32 = u_xlat18.w;
        let x_1749 : f32 = u_xlat61;
        let x_1751 : f32 = u_xlat60;
        u_xlat60 = ((x_1748 * x_1749) + x_1751);
        let x_1754 : vec4<f32> = u_xlat10;
        let x_1755 : vec2<f32> = vec2<f32>(x_1754.x, x_1754.y);
        let x_1757 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
        let x_1764 : vec3<f32> = txVec25;
        let x_1766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1764.xy, x_1764.z);
        u_xlat61 = x_1766;
        let x_1768 : f32 = u_xlat6.x;
        let x_1769 : f32 = u_xlat61;
        let x_1771 : f32 = u_xlat60;
        u_xlat60 = ((x_1768 * x_1769) + x_1771);
        let x_1774 : vec4<f32> = u_xlat10;
        let x_1775 : vec2<f32> = vec2<f32>(x_1774.z, x_1774.w);
        let x_1777 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
        let x_1784 : vec3<f32> = txVec26;
        let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1784.xy, x_1784.z);
        u_xlat61 = x_1786;
        let x_1788 : f32 = u_xlat6.y;
        let x_1789 : f32 = u_xlat61;
        let x_1791 : f32 = u_xlat60;
        u_xlat60 = ((x_1788 * x_1789) + x_1791);
        let x_1794 : vec2<f32> = u_xlat46;
        let x_1796 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1803 : vec3<f32> = txVec27;
        let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1803.xy, x_1803.z);
        u_xlat61 = x_1805;
        let x_1807 : f32 = u_xlat6.z;
        let x_1808 : f32 = u_xlat61;
        let x_1810 : f32 = u_xlat60;
        u_xlat60 = ((x_1807 * x_1808) + x_1810);
        let x_1813 : vec4<f32> = u_xlat5;
        let x_1814 : vec2<f32> = vec2<f32>(x_1813.x, x_1813.y);
        let x_1816 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1814.x, x_1814.y, x_1816);
        let x_1823 : vec3<f32> = txVec28;
        let x_1825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1823.xy, x_1823.z);
        u_xlat61 = x_1825;
        let x_1827 : f32 = u_xlat6.w;
        let x_1828 : f32 = u_xlat61;
        let x_1830 : f32 = u_xlat60;
        u_xlat59 = ((x_1827 * x_1828) + x_1830);
      }
    }
  } else {
    let x_1834 : vec4<f32> = u_xlat3;
    let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
    let x_1837 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
    let x_1844 : vec3<f32> = txVec29;
    let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
    u_xlat59 = x_1846;
  }
  let x_1848 : f32 = x_244.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1848) + 1.0f);
  let x_1852 : f32 = u_xlat59;
  let x_1854 : f32 = x_244.x_MainLightShadowParams.x;
  let x_1857 : f32 = u_xlat3.x;
  u_xlat59 = ((x_1852 * x_1854) + x_1857);
  let x_1860 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1860);
  let x_1865 : f32 = u_xlat3.z;
  u_xlatb22 = (x_1865 >= 1.0f);
  let x_1867 : bool = u_xlatb22;
  let x_1869 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1867 | x_1869);
  let x_1873 : bool = u_xlatb3.x;
  let x_1874 : f32 = u_xlat59;
  u_xlat59 = select(x_1874, 1.0f, x_1873);
  let x_1876 : vec3<f32> = vs_TEXCOORD1;
  let x_1879 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1881 : vec3<f32> = (x_1876 + -(x_1879));
  let x_1882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1884 : vec4<f32> = u_xlat3;
  let x_1886 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1891 : f32 = u_xlat3.x;
  let x_1893 : f32 = x_244.x_MainLightShadowParams.z;
  let x_1896 : f32 = x_244.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1891 * x_1893) + x_1896);
  let x_1900 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1900, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat59;
  u_xlat22 = (-(x_1904) + 1.0f);
  let x_1908 : f32 = u_xlat3.x;
  let x_1909 : f32 = u_xlat22;
  let x_1911 : f32 = u_xlat59;
  u_xlat59 = ((x_1908 * x_1909) + x_1911);
  let x_1919 : f32 = x_1917.x_MainLightCookieTextureFormat;
  u_xlatb3.x = !((x_1919 == -1.0f));
  let x_1923 : bool = u_xlatb3.x;
  if (x_1923) {
    let x_1926 : vec3<f32> = vs_TEXCOORD1;
    let x_1929 : vec4<f32> = x_1917.x_MainLightWorldToLight[1i];
    let x_1931 : vec2<f32> = (vec2<f32>(x_1926.y, x_1926.y) * vec2<f32>(x_1929.x, x_1929.y));
    let x_1932 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1931.x, x_1931.y, x_1932.z, x_1932.w);
    let x_1935 : vec4<f32> = x_1917.x_MainLightWorldToLight[0i];
    let x_1937 : vec3<f32> = vs_TEXCOORD1;
    let x_1940 : vec4<f32> = u_xlat3;
    let x_1942 : vec2<f32> = ((vec2<f32>(x_1935.x, x_1935.y) * vec2<f32>(x_1937.x, x_1937.x)) + vec2<f32>(x_1940.x, x_1940.y));
    let x_1943 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1942.x, x_1942.y, x_1943.z, x_1943.w);
    let x_1946 : vec4<f32> = x_1917.x_MainLightWorldToLight[2i];
    let x_1948 : vec3<f32> = vs_TEXCOORD1;
    let x_1951 : vec4<f32> = u_xlat3;
    let x_1953 : vec2<f32> = ((vec2<f32>(x_1946.x, x_1946.y) * vec2<f32>(x_1948.z, x_1948.z)) + vec2<f32>(x_1951.x, x_1951.y));
    let x_1954 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1953.x, x_1953.y, x_1954.z, x_1954.w);
    let x_1956 : vec4<f32> = u_xlat3;
    let x_1959 : vec4<f32> = x_1917.x_MainLightWorldToLight[3i];
    let x_1961 : vec2<f32> = (vec2<f32>(x_1956.x, x_1956.y) + vec2<f32>(x_1959.x, x_1959.y));
    let x_1962 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1961.x, x_1961.y, x_1962.z, x_1962.w);
    let x_1964 : vec4<f32> = u_xlat3;
    let x_1967 : vec2<f32> = ((vec2<f32>(x_1964.x, x_1964.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1968 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1967.x, x_1967.y, x_1968.z, x_1968.w);
    let x_1975 : vec4<f32> = u_xlat3;
    let x_1978 : f32 = x_44.x_GlobalMipBias.x;
    let x_1979 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1975.x, x_1975.y), x_1978);
    u_xlat3 = x_1979;
    let x_1984 : f32 = x_1917.x_MainLightCookieTextureFormat;
    let x_1986 : f32 = x_1917.x_MainLightCookieTextureFormat;
    let x_1988 : f32 = x_1917.x_MainLightCookieTextureFormat;
    let x_1990 : f32 = x_1917.x_MainLightCookieTextureFormat;
    let x_1991 : vec4<f32> = vec4<f32>(x_1984, x_1986, x_1988, x_1990);
    let x_1998 : vec4<bool> = (vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1991.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1998.x, x_1998.y);
    let x_2001 : bool = u_xlatb5.y;
    if (x_2001) {
      let x_2006 : f32 = u_xlat3.w;
      x_2002 = x_2006;
    } else {
      let x_2009 : f32 = u_xlat3.x;
      x_2002 = x_2009;
    }
    let x_2010 : f32 = x_2002;
    u_xlat60 = x_2010;
    let x_2012 : bool = u_xlatb5.x;
    if (x_2012) {
      let x_2016 : vec4<f32> = u_xlat3;
      x_2013 = vec3<f32>(x_2016.x, x_2016.y, x_2016.z);
    } else {
      let x_2019 : f32 = u_xlat60;
      x_2013 = vec3<f32>(x_2019, x_2019, x_2019);
    }
    let x_2021 : vec3<f32> = x_2013;
    let x_2022 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_2028 : vec4<f32> = u_xlat3;
  let x_2031 : vec4<f32> = x_44.x_MainLightColor;
  let x_2033 : vec3<f32> = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2034 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
  let x_2036 : vec4<f32> = u_xlat1;
  let x_2038 : vec4<f32> = u_xlat3;
  let x_2040 : vec3<f32> = (vec3<f32>(x_2036.x, x_2036.x, x_2036.x) * vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
  let x_2041 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
  let x_2043 : f32 = u_xlat57;
  let x_2045 : vec4<f32> = u_xlat4;
  let x_2047 : vec3<f32> = (vec3<f32>(x_2043, x_2043, x_2043) * vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
  let x_2048 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
  let x_2050 : f32 = u_xlat59;
  let x_2052 : f32 = x_185.unity_LightData.z;
  u_xlat57 = (x_2050 * x_2052);
  let x_2054 : f32 = u_xlat57;
  let x_2056 : vec4<f32> = u_xlat3;
  let x_2058 : vec3<f32> = (vec3<f32>(x_2054, x_2054, x_2054) * vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
  let x_2059 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
  let x_2061 : vec4<f32> = u_xlat2;
  let x_2064 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat57 = dot(vec3<f32>(x_2061.x, x_2061.y, x_2061.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2067, 0.0f, 1.0f);
  let x_2069 : f32 = u_xlat57;
  let x_2071 : vec4<f32> = u_xlat3;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec4<f32> = u_xlat1;
  let x_2078 : vec4<f32> = u_xlat3;
  let x_2080 : vec3<f32> = (vec3<f32>(x_2076.y, x_2076.z, x_2076.w) * vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
  let x_2081 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
  let x_2084 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2086 : f32 = x_185.unity_LightData.y;
  u_xlat57 = min(x_2084, x_2086);
  let x_2089 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_2089));
  let x_2093 : f32 = x_1917.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2095 : f32 = x_1917.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2097 : f32 = x_1917.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2099 : f32 = x_1917.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2100 : vec4<f32> = vec4<f32>(x_2093, x_2095, x_2097, x_2099);
  let x_2106 : vec4<bool> = (vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2100.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2106.x, x_2106.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2117 : u32 = u_xlatu_loop_1;
    let x_2118 : u32 = u_xlatu57;
    if ((x_2117 < x_2118)) {
    } else {
      break;
    }
    let x_2121 : u32 = u_xlatu_loop_1;
    u_xlatu60 = (x_2121 >> 2u);
    let x_2124 : u32 = u_xlatu_loop_1;
    u_xlati61 = bitcast<i32>((x_2124 & 3u));
    let x_2127 : u32 = u_xlatu60;
    let x_2130 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2127)];
    let x_2140 : i32 = u_xlati61;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2145 : vec4<u32> = indexable[x_2140];
    u_xlat60 = dot(x_2130, bitcast<vec4<f32>>(x_2145));
    let x_2148 : f32 = u_xlat60;
    u_xlatu60 = bitcast<u32>(i32(x_2148));
    let x_2151 : vec3<f32> = vs_TEXCOORD1;
    let x_2163 : u32 = u_xlatu60;
    let x_2166 : vec4<f32> = x_2162.x_AdditionalLightsPosition[bitcast<i32>(x_2163)];
    let x_2169 : u32 = u_xlatu60;
    let x_2172 : vec4<f32> = x_2162.x_AdditionalLightsPosition[bitcast<i32>(x_2169)];
    let x_2174 : vec3<f32> = ((-(x_2151) * vec3<f32>(x_2166.w, x_2166.w, x_2166.w)) + vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
    let x_2175 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
    let x_2177 : vec4<f32> = u_xlat7;
    let x_2179 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2177.x, x_2177.y, x_2177.z), vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
    let x_2182 : f32 = u_xlat61;
    u_xlat61 = max(x_2182, 6.10351562e-05f);
    let x_2185 : f32 = u_xlat61;
    u_xlat43.x = inverseSqrt(x_2185);
    let x_2188 : vec2<f32> = u_xlat43;
    let x_2190 : vec4<f32> = u_xlat7;
    let x_2192 : vec3<f32> = (vec3<f32>(x_2188.x, x_2188.x, x_2188.x) * vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
    let x_2193 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2192.x, x_2192.y, x_2192.z, x_2193.w);
    let x_2195 : f32 = u_xlat61;
    u_xlat43.x = (1.0f / x_2195);
    let x_2198 : f32 = u_xlat61;
    let x_2199 : u32 = u_xlatu60;
    let x_2202 : f32 = x_2162.x_AdditionalLightsAttenuation[bitcast<i32>(x_2199)].x;
    u_xlat61 = (x_2198 * x_2202);
    let x_2204 : f32 = u_xlat61;
    let x_2206 : f32 = u_xlat61;
    u_xlat61 = ((-(x_2204) * x_2206) + 1.0f);
    let x_2209 : f32 = u_xlat61;
    u_xlat61 = max(x_2209, 0.0f);
    let x_2211 : f32 = u_xlat61;
    let x_2212 : f32 = u_xlat61;
    u_xlat61 = (x_2211 * x_2212);
    let x_2214 : f32 = u_xlat61;
    let x_2216 : f32 = u_xlat43.x;
    u_xlat61 = (x_2214 * x_2216);
    let x_2218 : u32 = u_xlatu60;
    let x_2221 : vec4<f32> = x_2162.x_AdditionalLightsSpotDir[bitcast<i32>(x_2218)];
    let x_2223 : vec4<f32> = u_xlat7;
    u_xlat43.x = dot(vec3<f32>(x_2221.x, x_2221.y, x_2221.z), vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
    let x_2228 : f32 = u_xlat43.x;
    let x_2229 : u32 = u_xlatu60;
    let x_2232 : f32 = x_2162.x_AdditionalLightsAttenuation[bitcast<i32>(x_2229)].z;
    let x_2234 : u32 = u_xlatu60;
    let x_2237 : f32 = x_2162.x_AdditionalLightsAttenuation[bitcast<i32>(x_2234)].w;
    u_xlat43.x = ((x_2228 * x_2232) + x_2237);
    let x_2241 : f32 = u_xlat43.x;
    u_xlat43.x = clamp(x_2241, 0.0f, 1.0f);
    let x_2245 : f32 = u_xlat43.x;
    let x_2247 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2245 * x_2247);
    let x_2250 : f32 = u_xlat61;
    let x_2252 : f32 = u_xlat43.x;
    u_xlat61 = (x_2250 * x_2252);
    let x_2255 : u32 = u_xlatu60;
    u_xlatu43 = (x_2255 >> 5u);
    let x_2258 : u32 = u_xlatu60;
    u_xlati62 = (1i << bitcast<u32>((bitcast<i32>(x_2258) & 31i)));
    let x_2264 : i32 = u_xlati62;
    let x_2266 : u32 = u_xlatu43;
    let x_2269 : f32 = x_1917.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2266)].el;
    u_xlati43 = bitcast<i32>((bitcast<u32>(x_2264) & bitcast<u32>(x_2269)));
    let x_2273 : i32 = u_xlati43;
    if ((x_2273 != 0i)) {
      let x_2283 : u32 = u_xlatu60;
      let x_2286 : f32 = x_2282.x_AdditionalLightsLightTypes[bitcast<i32>(x_2283)].el;
      u_xlati43 = i32(x_2286);
      let x_2288 : i32 = u_xlati43;
      u_xlati62 = select(1i, 0i, (x_2288 != 0i));
      let x_2292 : u32 = u_xlatu60;
      u_xlati63 = (bitcast<i32>(x_2292) << bitcast<u32>(2i));
      let x_2295 : i32 = u_xlati62;
      if ((x_2295 != 0i)) {
        let x_2299 : vec3<f32> = vs_TEXCOORD1;
        let x_2301 : i32 = u_xlati63;
        let x_2304 : i32 = u_xlati63;
        let x_2308 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2301 + 1i) / 4i)][((x_2304 + 1i) % 4i)];
        let x_2310 : vec3<f32> = (vec3<f32>(x_2299.y, x_2299.y, x_2299.y) * vec3<f32>(x_2308.x, x_2308.y, x_2308.w));
        let x_2311 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
        let x_2313 : i32 = u_xlati63;
        let x_2315 : i32 = u_xlati63;
        let x_2318 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[(x_2313 / 4i)][(x_2315 % 4i)];
        let x_2320 : vec3<f32> = vs_TEXCOORD1;
        let x_2323 : vec4<f32> = u_xlat8;
        let x_2325 : vec3<f32> = ((vec3<f32>(x_2318.x, x_2318.y, x_2318.w) * vec3<f32>(x_2320.x, x_2320.x, x_2320.x)) + vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
        let x_2326 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
        let x_2328 : i32 = u_xlati63;
        let x_2331 : i32 = u_xlati63;
        let x_2335 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2328 + 2i) / 4i)][((x_2331 + 2i) % 4i)];
        let x_2337 : vec3<f32> = vs_TEXCOORD1;
        let x_2340 : vec4<f32> = u_xlat8;
        let x_2342 : vec3<f32> = ((vec3<f32>(x_2335.x, x_2335.y, x_2335.w) * vec3<f32>(x_2337.z, x_2337.z, x_2337.z)) + vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
        let x_2343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
        let x_2345 : vec4<f32> = u_xlat8;
        let x_2347 : i32 = u_xlati63;
        let x_2350 : i32 = u_xlati63;
        let x_2354 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2347 + 3i) / 4i)][((x_2350 + 3i) % 4i)];
        let x_2356 : vec3<f32> = (vec3<f32>(x_2345.x, x_2345.y, x_2345.z) + vec3<f32>(x_2354.x, x_2354.y, x_2354.w));
        let x_2357 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
        let x_2359 : vec4<f32> = u_xlat8;
        let x_2361 : vec4<f32> = u_xlat8;
        let x_2363 : vec2<f32> = (vec2<f32>(x_2359.x, x_2359.y) / vec2<f32>(x_2361.z, x_2361.z));
        let x_2364 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
        let x_2366 : vec4<f32> = u_xlat8;
        let x_2369 : vec2<f32> = ((vec2<f32>(x_2366.x, x_2366.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2369.x, x_2369.y, x_2370.z, x_2370.w);
        let x_2372 : vec4<f32> = u_xlat8;
        let x_2376 : vec2<f32> = clamp(vec2<f32>(x_2372.x, x_2372.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2377 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2376.x, x_2376.y, x_2377.z, x_2377.w);
        let x_2379 : u32 = u_xlatu60;
        let x_2382 : vec4<f32> = x_2282.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2379)];
        let x_2384 : vec4<f32> = u_xlat8;
        let x_2387 : u32 = u_xlatu60;
        let x_2390 : vec4<f32> = x_2282.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2387)];
        let x_2392 : vec2<f32> = ((vec2<f32>(x_2382.x, x_2382.y) * vec2<f32>(x_2384.x, x_2384.y)) + vec2<f32>(x_2390.z, x_2390.w));
        let x_2393 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
      } else {
        let x_2397 : i32 = u_xlati43;
        u_xlatb43 = (x_2397 == 1i);
        let x_2399 : bool = u_xlatb43;
        u_xlati43 = select(0i, 1i, x_2399);
        let x_2401 : i32 = u_xlati43;
        if ((x_2401 != 0i)) {
          let x_2405 : vec3<f32> = vs_TEXCOORD1;
          let x_2407 : i32 = u_xlati63;
          let x_2410 : i32 = u_xlati63;
          let x_2414 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2407 + 1i) / 4i)][((x_2410 + 1i) % 4i)];
          u_xlat43 = (vec2<f32>(x_2405.y, x_2405.y) * vec2<f32>(x_2414.x, x_2414.y));
          let x_2417 : i32 = u_xlati63;
          let x_2419 : i32 = u_xlati63;
          let x_2422 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[(x_2417 / 4i)][(x_2419 % 4i)];
          let x_2424 : vec3<f32> = vs_TEXCOORD1;
          let x_2427 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2422.x, x_2422.y) * vec2<f32>(x_2424.x, x_2424.x)) + x_2427);
          let x_2429 : i32 = u_xlati63;
          let x_2432 : i32 = u_xlati63;
          let x_2436 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2429 + 2i) / 4i)][((x_2432 + 2i) % 4i)];
          let x_2438 : vec3<f32> = vs_TEXCOORD1;
          let x_2441 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2436.x, x_2436.y) * vec2<f32>(x_2438.z, x_2438.z)) + x_2441);
          let x_2443 : vec2<f32> = u_xlat43;
          let x_2444 : i32 = u_xlati63;
          let x_2447 : i32 = u_xlati63;
          let x_2451 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2444 + 3i) / 4i)][((x_2447 + 3i) % 4i)];
          u_xlat43 = (x_2443 + vec2<f32>(x_2451.x, x_2451.y));
          let x_2454 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2454 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2457 : vec2<f32> = u_xlat43;
          u_xlat43 = fract(x_2457);
          let x_2459 : u32 = u_xlatu60;
          let x_2462 : vec4<f32> = x_2282.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2459)];
          let x_2464 : vec2<f32> = u_xlat43;
          let x_2466 : u32 = u_xlatu60;
          let x_2469 : vec4<f32> = x_2282.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2466)];
          let x_2471 : vec2<f32> = ((vec2<f32>(x_2462.x, x_2462.y) * x_2464) + vec2<f32>(x_2469.z, x_2469.w));
          let x_2472 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
        } else {
          let x_2475 : vec3<f32> = vs_TEXCOORD1;
          let x_2477 : i32 = u_xlati63;
          let x_2480 : i32 = u_xlati63;
          let x_2484 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2477 + 1i) / 4i)][((x_2480 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2475.y, x_2475.y, x_2475.y, x_2475.y) * x_2484);
          let x_2486 : i32 = u_xlati63;
          let x_2488 : i32 = u_xlati63;
          let x_2491 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[(x_2486 / 4i)][(x_2488 % 4i)];
          let x_2492 : vec3<f32> = vs_TEXCOORD1;
          let x_2495 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2491 * vec4<f32>(x_2492.x, x_2492.x, x_2492.x, x_2492.x)) + x_2495);
          let x_2497 : i32 = u_xlati63;
          let x_2500 : i32 = u_xlati63;
          let x_2504 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2497 + 2i) / 4i)][((x_2500 + 2i) % 4i)];
          let x_2505 : vec3<f32> = vs_TEXCOORD1;
          let x_2508 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2504 * vec4<f32>(x_2505.z, x_2505.z, x_2505.z, x_2505.z)) + x_2508);
          let x_2510 : vec4<f32> = u_xlat9;
          let x_2511 : i32 = u_xlati63;
          let x_2514 : i32 = u_xlati63;
          let x_2518 : vec4<f32> = x_2282.x_AdditionalLightsWorldToLights[((x_2511 + 3i) / 4i)][((x_2514 + 3i) % 4i)];
          u_xlat9 = (x_2510 + x_2518);
          let x_2520 : vec4<f32> = u_xlat9;
          let x_2522 : vec4<f32> = u_xlat9;
          let x_2524 : vec3<f32> = (vec3<f32>(x_2520.x, x_2520.y, x_2520.z) / vec3<f32>(x_2522.w, x_2522.w, x_2522.w));
          let x_2525 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
          let x_2527 : vec4<f32> = u_xlat9;
          let x_2529 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(vec3<f32>(x_2527.x, x_2527.y, x_2527.z), vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
          let x_2534 : f32 = u_xlat43.x;
          u_xlat43.x = inverseSqrt(x_2534);
          let x_2537 : vec2<f32> = u_xlat43;
          let x_2539 : vec4<f32> = u_xlat9;
          let x_2541 : vec3<f32> = (vec3<f32>(x_2537.x, x_2537.x, x_2537.x) * vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
          let x_2542 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
          let x_2544 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(abs(vec3<f32>(x_2544.x, x_2544.y, x_2544.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2551 : f32 = u_xlat43.x;
          u_xlat43.x = max(x_2551, 0.000001f);
          let x_2556 : f32 = u_xlat43.x;
          u_xlat43.x = (1.0f / x_2556);
          let x_2559 : vec2<f32> = u_xlat43;
          let x_2561 : vec4<f32> = u_xlat9;
          let x_2563 : vec3<f32> = (vec3<f32>(x_2559.x, x_2559.x, x_2559.x) * vec3<f32>(x_2561.z, x_2561.x, x_2561.y));
          let x_2564 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);
          let x_2567 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2567);
          let x_2571 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2571, 0.0f, 1.0f);
          let x_2575 : vec4<f32> = u_xlat10;
          let x_2578 : vec4<bool> = (vec4<f32>(x_2575.y, x_2575.z, x_2575.y, x_2575.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb46 = vec2<bool>(x_2578.x, x_2578.y);
          let x_2581 : bool = u_xlatb46.x;
          if (x_2581) {
            let x_2586 : f32 = u_xlat10.x;
            x_2582 = x_2586;
          } else {
            let x_2589 : f32 = u_xlat10.x;
            x_2582 = -(x_2589);
          }
          let x_2591 : f32 = x_2582;
          u_xlat46.x = x_2591;
          let x_2594 : bool = u_xlatb46.y;
          if (x_2594) {
            let x_2599 : f32 = u_xlat10.x;
            x_2595 = x_2599;
          } else {
            let x_2602 : f32 = u_xlat10.x;
            x_2595 = -(x_2602);
          }
          let x_2604 : f32 = x_2595;
          u_xlat46.y = x_2604;
          let x_2606 : vec4<f32> = u_xlat9;
          let x_2608 : vec2<f32> = u_xlat43;
          let x_2611 : vec2<f32> = u_xlat46;
          u_xlat43 = ((vec2<f32>(x_2606.x, x_2606.y) * vec2<f32>(x_2608.x, x_2608.x)) + x_2611);
          let x_2613 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2613 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2616 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2616, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2620 : u32 = u_xlatu60;
          let x_2623 : vec4<f32> = x_2282.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2620)];
          let x_2625 : vec2<f32> = u_xlat43;
          let x_2627 : u32 = u_xlatu60;
          let x_2630 : vec4<f32> = x_2282.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2627)];
          let x_2632 : vec2<f32> = ((vec2<f32>(x_2623.x, x_2623.y) * x_2625) + vec2<f32>(x_2630.z, x_2630.w));
          let x_2633 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
        }
      }
      let x_2640 : vec4<f32> = u_xlat8;
      let x_2643 : f32 = x_44.x_GlobalMipBias.x;
      let x_2644 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2640.x, x_2640.y), x_2643);
      u_xlat8 = x_2644;
      let x_2646 : bool = u_xlatb5.y;
      if (x_2646) {
        let x_2651 : f32 = u_xlat8.w;
        x_2647 = x_2651;
      } else {
        let x_2654 : f32 = u_xlat8.x;
        x_2647 = x_2654;
      }
      let x_2655 : f32 = x_2647;
      u_xlat43.x = x_2655;
      let x_2658 : bool = u_xlatb5.x;
      if (x_2658) {
        let x_2662 : vec4<f32> = u_xlat8;
        x_2659 = vec3<f32>(x_2662.x, x_2662.y, x_2662.z);
      } else {
        let x_2665 : vec2<f32> = u_xlat43;
        x_2659 = vec3<f32>(x_2665.x, x_2665.x, x_2665.x);
      }
      let x_2667 : vec3<f32> = x_2659;
      let x_2668 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2674 : vec4<f32> = u_xlat8;
    let x_2676 : u32 = u_xlatu60;
    let x_2679 : vec4<f32> = x_2162.x_AdditionalLightsColor[bitcast<i32>(x_2676)];
    let x_2681 : vec3<f32> = (vec3<f32>(x_2674.x, x_2674.y, x_2674.z) * vec3<f32>(x_2679.x, x_2679.y, x_2679.z));
    let x_2682 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
    let x_2684 : vec4<f32> = u_xlat1;
    let x_2686 : vec4<f32> = u_xlat8;
    let x_2688 : vec3<f32> = (vec3<f32>(x_2684.x, x_2684.x, x_2684.x) * vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
    let x_2689 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
    let x_2691 : f32 = u_xlat61;
    let x_2693 : vec4<f32> = u_xlat8;
    let x_2695 : vec3<f32> = (vec3<f32>(x_2691, x_2691, x_2691) * vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
    let x_2696 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
    let x_2698 : vec4<f32> = u_xlat2;
    let x_2700 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_2698.x, x_2698.y, x_2698.z), vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
    let x_2703 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2703, 0.0f, 1.0f);
    let x_2705 : f32 = u_xlat60;
    let x_2707 : vec4<f32> = u_xlat8;
    let x_2709 : vec3<f32> = (vec3<f32>(x_2705, x_2705, x_2705) * vec3<f32>(x_2707.x, x_2707.y, x_2707.z));
    let x_2710 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2709.x, x_2709.y, x_2709.z, x_2710.w);
    let x_2712 : vec4<f32> = u_xlat7;
    let x_2714 : vec4<f32> = u_xlat1;
    let x_2717 : vec4<f32> = u_xlat6;
    let x_2719 : vec3<f32> = ((vec3<f32>(x_2712.x, x_2712.y, x_2712.z) * vec3<f32>(x_2714.y, x_2714.z, x_2714.w)) + vec3<f32>(x_2717.x, x_2717.y, x_2717.z));
    let x_2720 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2720.w);

    continuing {
      let x_2722 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2722 + bitcast<u32>(1i));
    }
  }
  let x_2724 : vec4<f32> = u_xlat4;
  let x_2726 : vec4<f32> = u_xlat1;
  let x_2729 : vec4<f32> = u_xlat3;
  let x_2731 : vec3<f32> = ((vec3<f32>(x_2724.x, x_2724.y, x_2724.z) * vec3<f32>(x_2726.y, x_2726.z, x_2726.w)) + vec3<f32>(x_2729.x, x_2729.y, x_2729.z));
  let x_2732 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
  let x_2734 : vec4<f32> = u_xlat6;
  let x_2736 : vec4<f32> = u_xlat1;
  let x_2738 : vec3<f32> = (vec3<f32>(x_2734.x, x_2734.y, x_2734.z) + vec3<f32>(x_2736.x, x_2736.y, x_2736.z));
  let x_2739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
  let x_2742 : f32 = u_xlat19.x;
  let x_2744 : f32 = u_xlat19.x;
  u_xlat19.x = (x_2742 * -(x_2744));
  let x_2749 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_2749);
  let x_2752 : vec4<f32> = u_xlat1;
  let x_2756 : vec4<f32> = x_44.unity_FogColor;
  let x_2759 : vec3<f32> = (vec3<f32>(x_2752.x, x_2752.y, x_2752.z) + -(vec3<f32>(x_2756.x, x_2756.y, x_2756.z)));
  let x_2760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
  let x_2764 : vec3<f32> = u_xlat19;
  let x_2766 : vec4<f32> = u_xlat1;
  let x_2770 : vec4<f32> = x_44.unity_FogColor;
  let x_2772 : vec3<f32> = ((vec3<f32>(x_2764.x, x_2764.x, x_2764.x) * vec3<f32>(x_2766.x, x_2766.y, x_2766.z)) + vec3<f32>(x_2770.x, x_2770.y, x_2770.z));
  let x_2773 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
  let x_2776 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2776 == 1.0f);
  let x_2778 : bool = u_xlatb19;
  let x_2779 : bool = u_xlatb38;
  u_xlatb19 = (x_2778 | x_2779);
  let x_2781 : bool = u_xlatb19;
  if (x_2781) {
    let x_2786 : f32 = u_xlat0.x;
    x_2782 = x_2786;
  } else {
    x_2782 = 1.0f;
  }
  let x_2788 : f32 = x_2782;
  SV_Target0.w = x_2788;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

