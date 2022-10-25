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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_242 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1849 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2093 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2213 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat2 : vec3<f32>;
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
  var x_1934 : f32;
  var x_1945 : vec3<f32>;
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
  var x_2513 : f32;
  var x_2526 : f32;
  var x_2578 : f32;
  var x_2590 : vec3<f32>;
  var x_2712 : f32;
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
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres0;
  let x_247 : vec3<f32> = (x_237 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres1;
  let x_256 : vec3<f32> = (x_251 + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_263 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres2;
  let x_266 : vec3<f32> = (x_260 + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_272 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres3;
  let x_275 : vec3<f32> = (x_270 + -(vec3<f32>(x_272.x, x_272.y, x_272.z)));
  let x_276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = u_xlat6;
  let x_299 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_306 : vec4<f32> = u_xlat3;
  let x_309 : vec4<f32> = x_242.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_306 < x_309);
  let x_312 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_312);
  let x_316 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_316);
  let x_320 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_320);
  let x_324 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_324);
  let x_328 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_328);
  let x_334 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_334);
  let x_338 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_338);
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec4<f32> = u_xlat4;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + vec3<f32>(x_343.y, x_343.z, x_343.w));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = max(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_352.x, x_351.x, x_351.y, x_351.z);
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(x_354, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_362 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_362) + 4.0f);
  let x_369 : f32 = u_xlat19.x;
  u_xlatu19 = u32(x_369);
  let x_373 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_373) << bitcast<u32>(2i));
  let x_376 : vec3<f32> = vs_TEXCOORD1;
  let x_378 : i32 = u_xlati19;
  let x_381 : i32 = u_xlati19;
  let x_385 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_378 + 1i) / 4i)][((x_381 + 1i) % 4i)];
  let x_387 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : i32 = u_xlati19;
  let x_392 : i32 = u_xlati19;
  let x_395 : vec4<f32> = x_242.x_MainLightWorldToShadow[(x_390 / 4i)][(x_392 % 4i)];
  let x_397 : vec3<f32> = vs_TEXCOORD1;
  let x_400 : vec4<f32> = u_xlat3;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.x, x_397.x)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati19;
  let x_408 : i32 = u_xlati19;
  let x_412 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_405 + 2i) / 4i)][((x_408 + 2i) % 4i)];
  let x_414 : vec3<f32> = vs_TEXCOORD1;
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : i32 = u_xlati19;
  let x_427 : i32 = u_xlati19;
  let x_431 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_424 + 3i) / 4i)][((x_427 + 3i) % 4i)];
  let x_433 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = vs_TEXCOORD1.y;
  let x_440 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat19.x = (x_437 * x_440);
  let x_444 : f32 = x_44.unity_MatrixV[0i].z;
  let x_446 : f32 = vs_TEXCOORD1.x;
  let x_449 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_444 * x_446) + x_449);
  let x_453 : f32 = x_44.unity_MatrixV[2i].z;
  let x_455 : f32 = vs_TEXCOORD1.z;
  let x_458 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_453 * x_455) + x_458);
  let x_462 : f32 = u_xlat19.x;
  let x_464 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat19.x = (x_462 + x_464);
  let x_468 : f32 = u_xlat19.x;
  let x_472 : f32 = x_44.x_ProjectionParams.y;
  u_xlat19.x = (-(x_468) + -(x_472));
  let x_477 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_477, 0.0f);
  let x_481 : f32 = u_xlat19.x;
  let x_484 : f32 = x_44.unity_FogParams.x;
  u_xlat19.x = (x_481 * x_484);
  let x_493 : vec2<f32> = vs_TEXCOORD7;
  let x_495 : f32 = x_44.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_493, x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.z);
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_502 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
  let x_507 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_503.x, x_503.y));
  let x_508 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat5;
  let x_512 : vec4<f32> = hlslcc_FragCoord;
  let x_514 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(x_512.x, x_512.y));
  let x_515 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_518 : f32 = u_xlat5.y;
  let x_521 : f32 = x_44.x_ScaleBiasRt.x;
  let x_524 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat57 = ((x_518 * x_521) + x_524);
  let x_526 : f32 = u_xlat57;
  u_xlat5.z = (-(x_526) + 1.0f);
  let x_535 : vec4<f32> = u_xlat5;
  let x_538 : f32 = x_44.x_GlobalMipBias.x;
  let x_539 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_535.x, x_535.z), x_538);
  u_xlat57 = x_539.x;
  let x_541 : f32 = u_xlat57;
  u_xlat1.x = (x_541 + -1.0f);
  let x_545 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_545 * x_547) + 1.0f);
  let x_551 : f32 = u_xlat57;
  u_xlat57 = min(x_551, 1.0f);
  let x_555 : f32 = x_242.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_555);
  let x_557 : bool = u_xlatb59;
  if (x_557) {
    let x_561 : f32 = x_242.x_MainLightShadowParams.y;
    u_xlatb59 = (x_561 == 1.0f);
    let x_563 : bool = u_xlatb59;
    if (x_563) {
      let x_566 : vec4<f32> = u_xlat3;
      let x_570 : vec4<f32> = x_242.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_566.x, x_566.y, x_566.x, x_566.y) + x_570);
      let x_573 : vec4<f32> = u_xlat5;
      let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
      let x_576 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_574.x, x_574.y, x_576);
      let x_588 : vec3<f32> = txVec0;
      let x_590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_588.xy, x_588.z);
      u_xlat6.x = x_590;
      let x_593 : vec4<f32> = u_xlat5;
      let x_594 : vec2<f32> = vec2<f32>(x_593.z, x_593.w);
      let x_596 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_594.x, x_594.y, x_596);
      let x_603 : vec3<f32> = txVec1;
      let x_605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_603.xy, x_603.z);
      u_xlat6.y = x_605;
      let x_607 : vec4<f32> = u_xlat3;
      let x_611 : vec4<f32> = x_242.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) + x_611);
      let x_614 : vec4<f32> = u_xlat5;
      let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
      let x_617 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_615.x, x_615.y, x_617);
      let x_624 : vec3<f32> = txVec2;
      let x_626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_624.xy, x_624.z);
      u_xlat6.z = x_626;
      let x_629 : vec4<f32> = u_xlat5;
      let x_630 : vec2<f32> = vec2<f32>(x_629.z, x_629.w);
      let x_632 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_630.x, x_630.y, x_632);
      let x_639 : vec3<f32> = txVec3;
      let x_641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_639.xy, x_639.z);
      u_xlat6.w = x_641;
      let x_644 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_644, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_651 : f32 = x_242.x_MainLightShadowParams.y;
      u_xlatb60 = (x_651 == 2.0f);
      let x_653 : bool = u_xlatb60;
      if (x_653) {
        let x_656 : vec4<f32> = u_xlat3;
        let x_659 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_663 : vec2<f32> = ((vec2<f32>(x_656.x, x_656.y) * vec2<f32>(x_659.z, x_659.w)) + vec2<f32>(0.5f, 0.5f));
        let x_664 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat5;
        let x_668 : vec2<f32> = floor(vec2<f32>(x_666.x, x_666.y));
        let x_669 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_673 : vec4<f32> = u_xlat3;
        let x_676 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_679 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_673.x, x_673.y) * vec2<f32>(x_676.z, x_676.w)) + -(vec2<f32>(x_679.x, x_679.y)));
        let x_683 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_683.x, x_683.x, x_683.y, x_683.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_688 : vec4<f32> = u_xlat6;
        let x_690 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_688.x, x_688.x, x_688.z, x_688.z) * vec4<f32>(x_690.x, x_690.x, x_690.z, x_690.z));
        let x_693 : vec4<f32> = u_xlat7;
        let x_697 : vec2<f32> = (vec2<f32>(x_693.y, x_693.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_698 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_697.x, x_698.y, x_697.y, x_698.w);
        let x_700 : vec4<f32> = u_xlat7;
        let x_703 : vec2<f32> = u_xlat43;
        let x_705 : vec2<f32> = ((vec2<f32>(x_700.x, x_700.z) * vec2<f32>(0.5f, 0.5f)) + -(x_703));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
        let x_709 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_709) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec2<f32> = u_xlat43;
        let x_715 : vec2<f32> = min(x_713, vec2<f32>(0.0f, 0.0f));
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat8;
        let x_721 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = u_xlat45;
        let x_725 : vec2<f32> = ((-(vec2<f32>(x_718.x, x_718.y)) * vec2<f32>(x_721.x, x_721.y)) + x_724);
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_728, vec2<f32>(0.0f, 0.0f));
        let x_730 : vec2<f32> = u_xlat43;
        let x_732 : vec2<f32> = u_xlat43;
        let x_734 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_730) * x_732) + vec2<f32>(x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat8;
        let x_739 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) + vec2<f32>(1.0f, 1.0f));
        let x_740 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_742 + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat7;
        let x_749 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_750 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_752 : vec2<f32> = u_xlat45;
        let x_753 : vec2<f32> = (x_752 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat8;
        let x_758 : vec2<f32> = (vec2<f32>(x_756.x, x_756.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_762 : vec2<f32> = u_xlat43;
        let x_763 : vec2<f32> = (x_762 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_764 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_766.y, x_766.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_770 : f32 = u_xlat8.x;
        u_xlat9.z = x_770;
        let x_773 : f32 = u_xlat43.x;
        u_xlat9.w = x_773;
        let x_776 : f32 = u_xlat10.x;
        u_xlat7.z = x_776;
        let x_779 : f32 = u_xlat6.x;
        u_xlat7.w = x_779;
        let x_782 : vec4<f32> = u_xlat7;
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_782.z, x_782.w, x_782.x, x_782.z) + vec4<f32>(x_784.z, x_784.w, x_784.x, x_784.z));
        let x_788 : f32 = u_xlat9.y;
        u_xlat8.z = x_788;
        let x_791 : f32 = u_xlat43.y;
        u_xlat8.w = x_791;
        let x_794 : f32 = u_xlat7.y;
        u_xlat10.z = x_794;
        let x_797 : f32 = u_xlat6.z;
        u_xlat10.w = x_797;
        let x_799 : vec4<f32> = u_xlat8;
        let x_801 : vec4<f32> = u_xlat10;
        let x_803 : vec3<f32> = (vec3<f32>(x_799.z, x_799.y, x_799.w) + vec3<f32>(x_801.z, x_801.y, x_801.w));
        let x_804 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat7;
        let x_808 : vec4<f32> = u_xlat11;
        let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.z, x_806.w) / vec3<f32>(x_808.z, x_808.w, x_808.y));
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
        let x_813 : vec4<f32> = u_xlat7;
        let x_819 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat10;
        let x_824 : vec4<f32> = u_xlat6;
        let x_826 : vec3<f32> = (vec3<f32>(x_822.z, x_822.y, x_822.w) / vec3<f32>(x_824.x, x_824.y, x_824.z));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat8;
        let x_831 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_832 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat7;
        let x_837 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_839 : vec3<f32> = (vec3<f32>(x_834.y, x_834.x, x_834.z) * vec3<f32>(x_837.x, x_837.x, x_837.x));
        let x_840 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat8;
        let x_845 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_845.y, x_845.y, x_845.y));
        let x_848 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_851 : f32 = u_xlat8.x;
        u_xlat7.w = x_851;
        let x_853 : vec4<f32> = u_xlat5;
        let x_856 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) * vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y)) + vec4<f32>(x_859.y, x_859.w, x_859.x, x_859.w));
        let x_862 : vec4<f32> = u_xlat5;
        let x_865 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_862.x, x_862.y) * vec2<f32>(x_865.x, x_865.y)) + vec2<f32>(x_868.z, x_868.w));
        let x_872 : f32 = u_xlat7.y;
        u_xlat8.w = x_872;
        let x_874 : vec4<f32> = u_xlat8;
        let x_875 : vec2<f32> = vec2<f32>(x_874.y, x_874.z);
        let x_876 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_878 : vec4<f32> = u_xlat5;
        let x_881 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_884 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_878.x, x_878.y, x_878.x, x_878.y) * vec4<f32>(x_881.x, x_881.y, x_881.x, x_881.y)) + vec4<f32>(x_884.x, x_884.y, x_884.z, x_884.y));
        let x_887 : vec4<f32> = u_xlat5;
        let x_890 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y) * vec4<f32>(x_890.x, x_890.y, x_890.x, x_890.y)) + vec4<f32>(x_893.w, x_893.y, x_893.w, x_893.z));
        let x_896 : vec4<f32> = u_xlat5;
        let x_899 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_902 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y) * vec4<f32>(x_899.x, x_899.y, x_899.x, x_899.y)) + vec4<f32>(x_902.x, x_902.w, x_902.z, x_902.w));
        let x_906 : vec4<f32> = u_xlat6;
        let x_908 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_906.x, x_906.x, x_906.x, x_906.y) * vec4<f32>(x_908.z, x_908.w, x_908.y, x_908.z));
        let x_912 : vec4<f32> = u_xlat6;
        let x_914 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_912.y, x_912.y, x_912.z, x_912.z) * x_914);
        let x_918 : f32 = u_xlat6.z;
        let x_920 : f32 = u_xlat11.y;
        u_xlat60 = (x_918 * x_920);
        let x_923 : vec4<f32> = u_xlat9;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_934 : vec3<f32> = txVec4;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_934.xy, x_934.z);
        u_xlat61 = x_936;
        let x_938 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = vec2<f32>(x_938.z, x_938.w);
        let x_941 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec5;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_948.xy, x_948.z);
        u_xlat5.x = x_950;
        let x_953 : f32 = u_xlat5.x;
        let x_955 : f32 = u_xlat12.y;
        u_xlat5.x = (x_953 * x_955);
        let x_959 : f32 = u_xlat12.x;
        let x_960 : f32 = u_xlat61;
        let x_963 : f32 = u_xlat5.x;
        u_xlat61 = ((x_959 * x_960) + x_963);
        let x_966 : vec2<f32> = u_xlat43;
        let x_968 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec6;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_975.xy, x_975.z);
        u_xlat5.x = x_977;
        let x_980 : f32 = u_xlat12.z;
        let x_982 : f32 = u_xlat5.x;
        let x_984 : f32 = u_xlat61;
        u_xlat61 = ((x_980 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat8;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec7;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_997.xy, x_997.z);
        u_xlat5.x = x_999;
        let x_1002 : f32 = u_xlat12.w;
        let x_1004 : f32 = u_xlat5.x;
        let x_1006 : f32 = u_xlat61;
        u_xlat61 = ((x_1002 * x_1004) + x_1006);
        let x_1009 : vec4<f32> = u_xlat10;
        let x_1010 : vec2<f32> = vec2<f32>(x_1009.x, x_1009.y);
        let x_1012 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1010.x, x_1010.y, x_1012);
        let x_1019 : vec3<f32> = txVec8;
        let x_1021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1019.xy, x_1019.z);
        u_xlat5.x = x_1021;
        let x_1024 : f32 = u_xlat13.x;
        let x_1026 : f32 = u_xlat5.x;
        let x_1028 : f32 = u_xlat61;
        u_xlat61 = ((x_1024 * x_1026) + x_1028);
        let x_1031 : vec4<f32> = u_xlat10;
        let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
        let x_1034 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
        let x_1041 : vec3<f32> = txVec9;
        let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
        u_xlat5.x = x_1043;
        let x_1046 : f32 = u_xlat13.y;
        let x_1048 : f32 = u_xlat5.x;
        let x_1050 : f32 = u_xlat61;
        u_xlat61 = ((x_1046 * x_1048) + x_1050);
        let x_1053 : vec4<f32> = u_xlat8;
        let x_1054 : vec2<f32> = vec2<f32>(x_1053.z, x_1053.w);
        let x_1056 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1054.x, x_1054.y, x_1056);
        let x_1063 : vec3<f32> = txVec10;
        let x_1065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1063.xy, x_1063.z);
        u_xlat5.x = x_1065;
        let x_1068 : f32 = u_xlat13.z;
        let x_1070 : f32 = u_xlat5.x;
        let x_1072 : f32 = u_xlat61;
        u_xlat61 = ((x_1068 * x_1070) + x_1072);
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1076 : vec2<f32> = vec2<f32>(x_1075.x, x_1075.y);
        let x_1078 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1076.x, x_1076.y, x_1078);
        let x_1085 : vec3<f32> = txVec11;
        let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1085.xy, x_1085.z);
        u_xlat5.x = x_1087;
        let x_1090 : f32 = u_xlat13.w;
        let x_1092 : f32 = u_xlat5.x;
        let x_1094 : f32 = u_xlat61;
        u_xlat61 = ((x_1090 * x_1092) + x_1094);
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1098 : vec2<f32> = vec2<f32>(x_1097.z, x_1097.w);
        let x_1100 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
        let x_1107 : vec3<f32> = txVec12;
        let x_1109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1107.xy, x_1107.z);
        u_xlat5.x = x_1109;
        let x_1111 : f32 = u_xlat60;
        let x_1113 : f32 = u_xlat5.x;
        let x_1115 : f32 = u_xlat61;
        u_xlat59 = ((x_1111 * x_1113) + x_1115);
      } else {
        let x_1118 : vec4<f32> = u_xlat3;
        let x_1121 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.z, x_1121.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1125 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat5;
        let x_1129 : vec2<f32> = floor(vec2<f32>(x_1127.x, x_1127.y));
        let x_1130 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat3;
        let x_1135 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.z, x_1135.w)) + -(vec2<f32>(x_1138.x, x_1138.y)));
        let x_1142 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1142.x, x_1142.x, x_1142.y, x_1142.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.z, x_1145.z) * vec4<f32>(x_1147.x, x_1147.x, x_1147.z, x_1147.z));
        let x_1150 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1150.y, x_1150.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1155.x, x_1154.x, x_1155.z, x_1154.y);
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = u_xlat43;
        let x_1162 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1160));
        let x_1163 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1162.x, x_1163.y, x_1162.y, x_1163.w);
        let x_1165 : vec2<f32> = u_xlat43;
        let x_1167 : vec2<f32> = (-(x_1165) + vec2<f32>(1.0f, 1.0f));
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1170, vec2<f32>(0.0f, 0.0f));
        let x_1172 : vec2<f32> = u_xlat45;
        let x_1174 : vec2<f32> = u_xlat45;
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1178 : vec2<f32> = ((-(x_1172) * x_1174) + vec2<f32>(x_1176.x, x_1176.y));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1181, vec2<f32>(0.0f, 0.0f));
        let x_1184 : vec2<f32> = u_xlat45;
        let x_1186 : vec2<f32> = u_xlat45;
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1190 : vec2<f32> = ((-(x_1184) * x_1186) + vec2<f32>(x_1188.y, x_1188.w));
        let x_1191 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1190.x, x_1191.y, x_1190.y);
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1193.x, x_1193.y) + vec2<f32>(2.0f, 2.0f));
        let x_1197 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec3<f32> = u_xlat25;
        let x_1201 : vec2<f32> = (vec2<f32>(x_1199.x, x_1199.z) + vec2<f32>(2.0f, 2.0f));
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1202.x, x_1201.x, x_1202.z, x_1201.y);
        let x_1205 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1205 * 0.081632003f);
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1209.z, x_1209.x, x_1209.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1218 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1219 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1222 : f32 = u_xlat10.y;
        u_xlat9.x = x_1222;
        let x_1224 : vec2<f32> = u_xlat43;
        let x_1231 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1231.x, x_1232.z, x_1231.y);
        let x_1234 : vec2<f32> = u_xlat43;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1234.x, x_1234.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1239 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1238.x, x_1239.y, x_1238.y, x_1239.w);
        let x_1242 : f32 = u_xlat6.x;
        u_xlat7.y = x_1242;
        let x_1245 : f32 = u_xlat8.y;
        u_xlat7.w = x_1245;
        let x_1247 : vec4<f32> = u_xlat7;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1247 + x_1248);
        let x_1250 : vec2<f32> = u_xlat43;
        let x_1253 : vec2<f32> = ((vec2<f32>(x_1250.y, x_1250.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1254 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1254.x, x_1253.x, x_1254.z, x_1253.y);
        let x_1256 : vec2<f32> = u_xlat43;
        let x_1259 : vec2<f32> = ((vec2<f32>(x_1256.y, x_1256.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1259.x, x_1260.y, x_1259.y, x_1260.w);
        let x_1263 : f32 = u_xlat6.y;
        u_xlat8.y = x_1263;
        let x_1265 : vec4<f32> = u_xlat8;
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1265 + x_1266);
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1268 / x_1269);
        let x_1271 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1271 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1278 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1277 / x_1278);
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1280 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1285 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1282.w, x_1282.x, x_1282.y, x_1282.z) * vec4<f32>(x_1285.x, x_1285.x, x_1285.x, x_1285.x));
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1291 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1288.x, x_1288.w, x_1288.y, x_1288.z) * vec4<f32>(x_1291.y, x_1291.y, x_1291.y, x_1291.y));
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1295 : vec3<f32> = vec3<f32>(x_1294.y, x_1294.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1295.x, x_1296.y, x_1295.y, x_1295.z);
        let x_1299 : f32 = u_xlat8.x;
        u_xlat10.y = x_1299;
        let x_1301 : vec4<f32> = u_xlat5;
        let x_1304 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y) * vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y)) + vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat5;
        let x_1313 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.w, x_1316.y));
        let x_1320 : f32 = u_xlat10.y;
        u_xlat7.y = x_1320;
        let x_1323 : f32 = u_xlat8.z;
        u_xlat10.y = x_1323;
        let x_1325 : vec4<f32> = u_xlat5;
        let x_1328 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y) * vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y)) + vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1331.y));
        let x_1334 : vec4<f32> = u_xlat5;
        let x_1337 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat10;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.x, x_1337.y)) + vec2<f32>(x_1340.w, x_1340.y));
        let x_1343 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1346 : f32 = u_xlat10.y;
        u_xlat7.z = x_1346;
        let x_1349 : vec4<f32> = u_xlat5;
        let x_1352 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) * vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y)) + vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.z));
        let x_1359 : f32 = u_xlat8.w;
        u_xlat10.y = x_1359;
        let x_1362 : vec4<f32> = u_xlat5;
        let x_1365 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y) * vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y)) + vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.y));
        let x_1372 : vec4<f32> = u_xlat5;
        let x_1375 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1378.w, x_1378.y));
        let x_1382 : f32 = u_xlat10.y;
        u_xlat7.w = x_1382;
        let x_1385 : vec4<f32> = u_xlat5;
        let x_1388 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.x, x_1391.w));
        let x_1394 : vec4<f32> = u_xlat10;
        let x_1395 : vec3<f32> = vec3<f32>(x_1394.x, x_1394.z, x_1394.w);
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1395.x, x_1396.y, x_1395.y, x_1395.z);
        let x_1398 : vec4<f32> = u_xlat5;
        let x_1401 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1404 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y) * vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y)) + vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1404.y));
        let x_1408 : vec4<f32> = u_xlat5;
        let x_1411 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.w, x_1414.y));
        let x_1418 : f32 = u_xlat7.x;
        u_xlat8.x = x_1418;
        let x_1420 : vec4<f32> = u_xlat5;
        let x_1423 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat8;
        let x_1428 : vec2<f32> = ((vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(x_1423.x, x_1423.y)) + vec2<f32>(x_1426.x, x_1426.y));
        let x_1429 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
        let x_1432 : vec4<f32> = u_xlat6;
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1432.x, x_1432.x, x_1432.x, x_1432.x) * x_1434);
        let x_1437 : vec4<f32> = u_xlat6;
        let x_1439 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1437.y, x_1437.y, x_1437.y, x_1437.y) * x_1439);
        let x_1442 : vec4<f32> = u_xlat6;
        let x_1444 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1442.z, x_1442.z, x_1442.z, x_1442.z) * x_1444);
        let x_1446 : vec4<f32> = u_xlat6;
        let x_1448 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1446.w, x_1446.w, x_1446.w, x_1446.w) * x_1448);
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec13;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat60 = x_1463;
        let x_1465 : vec4<f32> = u_xlat11;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.z, x_1465.w);
        let x_1468 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec14;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat61 = x_1477;
        let x_1478 : f32 = u_xlat61;
        let x_1480 : f32 = u_xlat16.y;
        u_xlat61 = (x_1478 * x_1480);
        let x_1483 : f32 = u_xlat16.x;
        let x_1484 : f32 = u_xlat60;
        let x_1486 : f32 = u_xlat61;
        u_xlat60 = ((x_1483 * x_1484) + x_1486);
        let x_1489 : vec2<f32> = u_xlat43;
        let x_1491 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec15;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat61 = x_1500;
        let x_1502 : f32 = u_xlat16.z;
        let x_1503 : f32 = u_xlat61;
        let x_1505 : f32 = u_xlat60;
        u_xlat60 = ((x_1502 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat14;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec16;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat61 = x_1520;
        let x_1522 : f32 = u_xlat16.w;
        let x_1523 : f32 = u_xlat61;
        let x_1525 : f32 = u_xlat60;
        u_xlat60 = ((x_1522 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat12;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec17;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat61 = x_1540;
        let x_1542 : f32 = u_xlat17.x;
        let x_1543 : f32 = u_xlat61;
        let x_1545 : f32 = u_xlat60;
        u_xlat60 = ((x_1542 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat12;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec18;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat61 = x_1560;
        let x_1562 : f32 = u_xlat17.y;
        let x_1563 : f32 = u_xlat61;
        let x_1565 : f32 = u_xlat60;
        u_xlat60 = ((x_1562 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat13;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec19;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat61 = x_1580;
        let x_1582 : f32 = u_xlat17.z;
        let x_1583 : f32 = u_xlat61;
        let x_1585 : f32 = u_xlat60;
        u_xlat60 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat14;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec20;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat61 = x_1600;
        let x_1602 : f32 = u_xlat17.w;
        let x_1603 : f32 = u_xlat61;
        let x_1605 : f32 = u_xlat60;
        u_xlat60 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat15;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
        let x_1611 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec21;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
        u_xlat61 = x_1620;
        let x_1622 : f32 = u_xlat18.x;
        let x_1623 : f32 = u_xlat61;
        let x_1625 : f32 = u_xlat60;
        u_xlat60 = ((x_1622 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat15;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec22;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1638.xy, x_1638.z);
        u_xlat61 = x_1640;
        let x_1642 : f32 = u_xlat18.y;
        let x_1643 : f32 = u_xlat61;
        let x_1645 : f32 = u_xlat60;
        u_xlat60 = ((x_1642 * x_1643) + x_1645);
        let x_1648 : vec2<f32> = u_xlat26;
        let x_1650 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec23;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1657.xy, x_1657.z);
        u_xlat61 = x_1659;
        let x_1661 : f32 = u_xlat18.z;
        let x_1662 : f32 = u_xlat61;
        let x_1664 : f32 = u_xlat60;
        u_xlat60 = ((x_1661 * x_1662) + x_1664);
        let x_1667 : vec2<f32> = u_xlat51;
        let x_1669 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec24;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1676.xy, x_1676.z);
        u_xlat61 = x_1678;
        let x_1680 : f32 = u_xlat18.w;
        let x_1681 : f32 = u_xlat61;
        let x_1683 : f32 = u_xlat60;
        u_xlat60 = ((x_1680 * x_1681) + x_1683);
        let x_1686 : vec4<f32> = u_xlat10;
        let x_1687 : vec2<f32> = vec2<f32>(x_1686.x, x_1686.y);
        let x_1689 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec25;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1696.xy, x_1696.z);
        u_xlat61 = x_1698;
        let x_1700 : f32 = u_xlat6.x;
        let x_1701 : f32 = u_xlat61;
        let x_1703 : f32 = u_xlat60;
        u_xlat60 = ((x_1700 * x_1701) + x_1703);
        let x_1706 : vec4<f32> = u_xlat10;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.z, x_1706.w);
        let x_1709 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec26;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat61 = x_1718;
        let x_1720 : f32 = u_xlat6.y;
        let x_1721 : f32 = u_xlat61;
        let x_1723 : f32 = u_xlat60;
        u_xlat60 = ((x_1720 * x_1721) + x_1723);
        let x_1726 : vec2<f32> = u_xlat46;
        let x_1728 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
        let x_1735 : vec3<f32> = txVec27;
        let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1735.xy, x_1735.z);
        u_xlat61 = x_1737;
        let x_1739 : f32 = u_xlat6.z;
        let x_1740 : f32 = u_xlat61;
        let x_1742 : f32 = u_xlat60;
        u_xlat60 = ((x_1739 * x_1740) + x_1742);
        let x_1745 : vec4<f32> = u_xlat5;
        let x_1746 : vec2<f32> = vec2<f32>(x_1745.x, x_1745.y);
        let x_1748 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
        let x_1755 : vec3<f32> = txVec28;
        let x_1757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1755.xy, x_1755.z);
        u_xlat61 = x_1757;
        let x_1759 : f32 = u_xlat6.w;
        let x_1760 : f32 = u_xlat61;
        let x_1762 : f32 = u_xlat60;
        u_xlat59 = ((x_1759 * x_1760) + x_1762);
      }
    }
  } else {
    let x_1766 : vec4<f32> = u_xlat3;
    let x_1767 : vec2<f32> = vec2<f32>(x_1766.x, x_1766.y);
    let x_1769 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
    let x_1776 : vec3<f32> = txVec29;
    let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1776.xy, x_1776.z);
    u_xlat59 = x_1778;
  }
  let x_1780 : f32 = x_242.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1780) + 1.0f);
  let x_1784 : f32 = u_xlat59;
  let x_1786 : f32 = x_242.x_MainLightShadowParams.x;
  let x_1789 : f32 = u_xlat3.x;
  u_xlat59 = ((x_1784 * x_1786) + x_1789);
  let x_1792 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1792);
  let x_1797 : f32 = u_xlat3.z;
  u_xlatb22 = (x_1797 >= 1.0f);
  let x_1799 : bool = u_xlatb22;
  let x_1801 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1799 | x_1801);
  let x_1805 : bool = u_xlatb3.x;
  let x_1806 : f32 = u_xlat59;
  u_xlat59 = select(x_1806, 1.0f, x_1805);
  let x_1808 : vec3<f32> = vs_TEXCOORD1;
  let x_1811 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1813 : vec3<f32> = (x_1808 + -(x_1811));
  let x_1814 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec4<f32> = u_xlat3;
  let x_1818 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1823 : f32 = u_xlat3.x;
  let x_1825 : f32 = x_242.x_MainLightShadowParams.z;
  let x_1828 : f32 = x_242.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1823 * x_1825) + x_1828);
  let x_1832 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1832, 0.0f, 1.0f);
  let x_1836 : f32 = u_xlat59;
  u_xlat22 = (-(x_1836) + 1.0f);
  let x_1840 : f32 = u_xlat3.x;
  let x_1841 : f32 = u_xlat22;
  let x_1843 : f32 = u_xlat59;
  u_xlat59 = ((x_1840 * x_1841) + x_1843);
  let x_1851 : f32 = x_1849.x_MainLightCookieTextureFormat;
  u_xlatb3.x = !((x_1851 == -1.0f));
  let x_1855 : bool = u_xlatb3.x;
  if (x_1855) {
    let x_1858 : vec3<f32> = vs_TEXCOORD1;
    let x_1861 : vec4<f32> = x_1849.x_MainLightWorldToLight[1i];
    let x_1863 : vec2<f32> = (vec2<f32>(x_1858.y, x_1858.y) * vec2<f32>(x_1861.x, x_1861.y));
    let x_1864 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1863.x, x_1863.y, x_1864.z, x_1864.w);
    let x_1867 : vec4<f32> = x_1849.x_MainLightWorldToLight[0i];
    let x_1869 : vec3<f32> = vs_TEXCOORD1;
    let x_1872 : vec4<f32> = u_xlat3;
    let x_1874 : vec2<f32> = ((vec2<f32>(x_1867.x, x_1867.y) * vec2<f32>(x_1869.x, x_1869.x)) + vec2<f32>(x_1872.x, x_1872.y));
    let x_1875 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1874.x, x_1874.y, x_1875.z, x_1875.w);
    let x_1878 : vec4<f32> = x_1849.x_MainLightWorldToLight[2i];
    let x_1880 : vec3<f32> = vs_TEXCOORD1;
    let x_1883 : vec4<f32> = u_xlat3;
    let x_1885 : vec2<f32> = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(x_1880.z, x_1880.z)) + vec2<f32>(x_1883.x, x_1883.y));
    let x_1886 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1885.x, x_1885.y, x_1886.z, x_1886.w);
    let x_1888 : vec4<f32> = u_xlat3;
    let x_1891 : vec4<f32> = x_1849.x_MainLightWorldToLight[3i];
    let x_1893 : vec2<f32> = (vec2<f32>(x_1888.x, x_1888.y) + vec2<f32>(x_1891.x, x_1891.y));
    let x_1894 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
    let x_1896 : vec4<f32> = u_xlat3;
    let x_1899 : vec2<f32> = ((vec2<f32>(x_1896.x, x_1896.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1900 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1899.x, x_1899.y, x_1900.z, x_1900.w);
    let x_1907 : vec4<f32> = u_xlat3;
    let x_1910 : f32 = x_44.x_GlobalMipBias.x;
    let x_1911 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1907.x, x_1907.y), x_1910);
    u_xlat3 = x_1911;
    let x_1916 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1918 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1920 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1922 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1923 : vec4<f32> = vec4<f32>(x_1916, x_1918, x_1920, x_1922);
    let x_1930 : vec4<bool> = (vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1923.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1930.x, x_1930.y);
    let x_1933 : bool = u_xlatb5.y;
    if (x_1933) {
      let x_1938 : f32 = u_xlat3.w;
      x_1934 = x_1938;
    } else {
      let x_1941 : f32 = u_xlat3.x;
      x_1934 = x_1941;
    }
    let x_1942 : f32 = x_1934;
    u_xlat60 = x_1942;
    let x_1944 : bool = u_xlatb5.x;
    if (x_1944) {
      let x_1948 : vec4<f32> = u_xlat3;
      x_1945 = vec3<f32>(x_1948.x, x_1948.y, x_1948.z);
    } else {
      let x_1951 : f32 = u_xlat60;
      x_1945 = vec3<f32>(x_1951, x_1951, x_1951);
    }
    let x_1953 : vec3<f32> = x_1945;
    let x_1954 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1960 : vec4<f32> = u_xlat3;
  let x_1963 : vec4<f32> = x_44.x_MainLightColor;
  let x_1965 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) * vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
  let x_1966 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
  let x_1968 : vec4<f32> = u_xlat1;
  let x_1970 : vec4<f32> = u_xlat3;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.x, x_1968.x) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : f32 = u_xlat57;
  let x_1977 : vec4<f32> = u_xlat4;
  let x_1979 : vec3<f32> = (vec3<f32>(x_1975, x_1975, x_1975) * vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1982 : f32 = u_xlat59;
  let x_1984 : f32 = x_185.unity_LightData.z;
  u_xlat57 = (x_1982 * x_1984);
  let x_1986 : f32 = u_xlat57;
  let x_1988 : vec4<f32> = u_xlat3;
  let x_1990 : vec3<f32> = (vec3<f32>(x_1986, x_1986, x_1986) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
  let x_1993 : vec3<f32> = u_xlat2;
  let x_1995 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat57 = dot(x_1993, vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
  let x_1998 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1998, 0.0f, 1.0f);
  let x_2000 : f32 = u_xlat57;
  let x_2002 : vec4<f32> = u_xlat3;
  let x_2004 : vec3<f32> = (vec3<f32>(x_2000, x_2000, x_2000) * vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : vec4<f32> = u_xlat1;
  let x_2009 : vec4<f32> = u_xlat3;
  let x_2011 : vec3<f32> = (vec3<f32>(x_2007.y, x_2007.z, x_2007.w) * vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2015 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2017 : f32 = x_185.unity_LightData.y;
  u_xlat57 = min(x_2015, x_2017);
  let x_2020 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_2020));
  let x_2024 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2026 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2028 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2030 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2031 : vec4<f32> = vec4<f32>(x_2024, x_2026, x_2028, x_2030);
  let x_2037 : vec4<bool> = (vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2031.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2037.x, x_2037.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2048 : u32 = u_xlatu_loop_1;
    let x_2049 : u32 = u_xlatu57;
    if ((x_2048 < x_2049)) {
    } else {
      break;
    }
    let x_2052 : u32 = u_xlatu_loop_1;
    u_xlatu60 = (x_2052 >> 2u);
    let x_2055 : u32 = u_xlatu_loop_1;
    u_xlati61 = bitcast<i32>((x_2055 & 3u));
    let x_2058 : u32 = u_xlatu60;
    let x_2061 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2058)];
    let x_2071 : i32 = u_xlati61;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2076 : vec4<u32> = indexable[x_2071];
    u_xlat60 = dot(x_2061, bitcast<vec4<f32>>(x_2076));
    let x_2079 : f32 = u_xlat60;
    u_xlatu60 = bitcast<u32>(i32(x_2079));
    let x_2082 : vec3<f32> = vs_TEXCOORD1;
    let x_2094 : u32 = u_xlatu60;
    let x_2097 : vec4<f32> = x_2093.x_AdditionalLightsPosition[bitcast<i32>(x_2094)];
    let x_2100 : u32 = u_xlatu60;
    let x_2103 : vec4<f32> = x_2093.x_AdditionalLightsPosition[bitcast<i32>(x_2100)];
    let x_2105 : vec3<f32> = ((-(x_2082) * vec3<f32>(x_2097.w, x_2097.w, x_2097.w)) + vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
    let x_2106 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
    let x_2108 : vec4<f32> = u_xlat7;
    let x_2110 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2108.x, x_2108.y, x_2108.z), vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
    let x_2113 : f32 = u_xlat61;
    u_xlat61 = max(x_2113, 6.10351562e-05f);
    let x_2116 : f32 = u_xlat61;
    u_xlat43.x = inverseSqrt(x_2116);
    let x_2119 : vec2<f32> = u_xlat43;
    let x_2121 : vec4<f32> = u_xlat7;
    let x_2123 : vec3<f32> = (vec3<f32>(x_2119.x, x_2119.x, x_2119.x) * vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
    let x_2124 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
    let x_2126 : f32 = u_xlat61;
    u_xlat43.x = (1.0f / x_2126);
    let x_2129 : f32 = u_xlat61;
    let x_2130 : u32 = u_xlatu60;
    let x_2133 : f32 = x_2093.x_AdditionalLightsAttenuation[bitcast<i32>(x_2130)].x;
    u_xlat61 = (x_2129 * x_2133);
    let x_2135 : f32 = u_xlat61;
    let x_2137 : f32 = u_xlat61;
    u_xlat61 = ((-(x_2135) * x_2137) + 1.0f);
    let x_2140 : f32 = u_xlat61;
    u_xlat61 = max(x_2140, 0.0f);
    let x_2142 : f32 = u_xlat61;
    let x_2143 : f32 = u_xlat61;
    u_xlat61 = (x_2142 * x_2143);
    let x_2145 : f32 = u_xlat61;
    let x_2147 : f32 = u_xlat43.x;
    u_xlat61 = (x_2145 * x_2147);
    let x_2149 : u32 = u_xlatu60;
    let x_2152 : vec4<f32> = x_2093.x_AdditionalLightsSpotDir[bitcast<i32>(x_2149)];
    let x_2154 : vec4<f32> = u_xlat7;
    u_xlat43.x = dot(vec3<f32>(x_2152.x, x_2152.y, x_2152.z), vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
    let x_2159 : f32 = u_xlat43.x;
    let x_2160 : u32 = u_xlatu60;
    let x_2163 : f32 = x_2093.x_AdditionalLightsAttenuation[bitcast<i32>(x_2160)].z;
    let x_2165 : u32 = u_xlatu60;
    let x_2168 : f32 = x_2093.x_AdditionalLightsAttenuation[bitcast<i32>(x_2165)].w;
    u_xlat43.x = ((x_2159 * x_2163) + x_2168);
    let x_2172 : f32 = u_xlat43.x;
    u_xlat43.x = clamp(x_2172, 0.0f, 1.0f);
    let x_2176 : f32 = u_xlat43.x;
    let x_2178 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2176 * x_2178);
    let x_2181 : f32 = u_xlat61;
    let x_2183 : f32 = u_xlat43.x;
    u_xlat61 = (x_2181 * x_2183);
    let x_2186 : u32 = u_xlatu60;
    u_xlatu43 = (x_2186 >> 5u);
    let x_2189 : u32 = u_xlatu60;
    u_xlati62 = (1i << bitcast<u32>((bitcast<i32>(x_2189) & 31i)));
    let x_2195 : i32 = u_xlati62;
    let x_2197 : u32 = u_xlatu43;
    let x_2200 : f32 = x_1849.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2197)].el;
    u_xlati43 = bitcast<i32>((bitcast<u32>(x_2195) & bitcast<u32>(x_2200)));
    let x_2204 : i32 = u_xlati43;
    if ((x_2204 != 0i)) {
      let x_2214 : u32 = u_xlatu60;
      let x_2217 : f32 = x_2213.x_AdditionalLightsLightTypes[bitcast<i32>(x_2214)].el;
      u_xlati43 = i32(x_2217);
      let x_2219 : i32 = u_xlati43;
      u_xlati62 = select(1i, 0i, (x_2219 != 0i));
      let x_2223 : u32 = u_xlatu60;
      u_xlati63 = (bitcast<i32>(x_2223) << bitcast<u32>(2i));
      let x_2226 : i32 = u_xlati62;
      if ((x_2226 != 0i)) {
        let x_2230 : vec3<f32> = vs_TEXCOORD1;
        let x_2232 : i32 = u_xlati63;
        let x_2235 : i32 = u_xlati63;
        let x_2239 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2232 + 1i) / 4i)][((x_2235 + 1i) % 4i)];
        let x_2241 : vec3<f32> = (vec3<f32>(x_2230.y, x_2230.y, x_2230.y) * vec3<f32>(x_2239.x, x_2239.y, x_2239.w));
        let x_2242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
        let x_2244 : i32 = u_xlati63;
        let x_2246 : i32 = u_xlati63;
        let x_2249 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[(x_2244 / 4i)][(x_2246 % 4i)];
        let x_2251 : vec3<f32> = vs_TEXCOORD1;
        let x_2254 : vec4<f32> = u_xlat8;
        let x_2256 : vec3<f32> = ((vec3<f32>(x_2249.x, x_2249.y, x_2249.w) * vec3<f32>(x_2251.x, x_2251.x, x_2251.x)) + vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
        let x_2257 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2259 : i32 = u_xlati63;
        let x_2262 : i32 = u_xlati63;
        let x_2266 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2259 + 2i) / 4i)][((x_2262 + 2i) % 4i)];
        let x_2268 : vec3<f32> = vs_TEXCOORD1;
        let x_2271 : vec4<f32> = u_xlat8;
        let x_2273 : vec3<f32> = ((vec3<f32>(x_2266.x, x_2266.y, x_2266.w) * vec3<f32>(x_2268.z, x_2268.z, x_2268.z)) + vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
        let x_2274 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
        let x_2276 : vec4<f32> = u_xlat8;
        let x_2278 : i32 = u_xlati63;
        let x_2281 : i32 = u_xlati63;
        let x_2285 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2278 + 3i) / 4i)][((x_2281 + 3i) % 4i)];
        let x_2287 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) + vec3<f32>(x_2285.x, x_2285.y, x_2285.w));
        let x_2288 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
        let x_2290 : vec4<f32> = u_xlat8;
        let x_2292 : vec4<f32> = u_xlat8;
        let x_2294 : vec2<f32> = (vec2<f32>(x_2290.x, x_2290.y) / vec2<f32>(x_2292.z, x_2292.z));
        let x_2295 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2294.x, x_2294.y, x_2295.z, x_2295.w);
        let x_2297 : vec4<f32> = u_xlat8;
        let x_2300 : vec2<f32> = ((vec2<f32>(x_2297.x, x_2297.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
        let x_2303 : vec4<f32> = u_xlat8;
        let x_2307 : vec2<f32> = clamp(vec2<f32>(x_2303.x, x_2303.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2308 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
        let x_2310 : u32 = u_xlatu60;
        let x_2313 : vec4<f32> = x_2213.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2310)];
        let x_2315 : vec4<f32> = u_xlat8;
        let x_2318 : u32 = u_xlatu60;
        let x_2321 : vec4<f32> = x_2213.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2318)];
        let x_2323 : vec2<f32> = ((vec2<f32>(x_2313.x, x_2313.y) * vec2<f32>(x_2315.x, x_2315.y)) + vec2<f32>(x_2321.z, x_2321.w));
        let x_2324 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2323.x, x_2323.y, x_2324.z, x_2324.w);
      } else {
        let x_2328 : i32 = u_xlati43;
        u_xlatb43 = (x_2328 == 1i);
        let x_2330 : bool = u_xlatb43;
        u_xlati43 = select(0i, 1i, x_2330);
        let x_2332 : i32 = u_xlati43;
        if ((x_2332 != 0i)) {
          let x_2336 : vec3<f32> = vs_TEXCOORD1;
          let x_2338 : i32 = u_xlati63;
          let x_2341 : i32 = u_xlati63;
          let x_2345 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2338 + 1i) / 4i)][((x_2341 + 1i) % 4i)];
          u_xlat43 = (vec2<f32>(x_2336.y, x_2336.y) * vec2<f32>(x_2345.x, x_2345.y));
          let x_2348 : i32 = u_xlati63;
          let x_2350 : i32 = u_xlati63;
          let x_2353 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[(x_2348 / 4i)][(x_2350 % 4i)];
          let x_2355 : vec3<f32> = vs_TEXCOORD1;
          let x_2358 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2353.x, x_2353.y) * vec2<f32>(x_2355.x, x_2355.x)) + x_2358);
          let x_2360 : i32 = u_xlati63;
          let x_2363 : i32 = u_xlati63;
          let x_2367 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2360 + 2i) / 4i)][((x_2363 + 2i) % 4i)];
          let x_2369 : vec3<f32> = vs_TEXCOORD1;
          let x_2372 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2369.z, x_2369.z)) + x_2372);
          let x_2374 : vec2<f32> = u_xlat43;
          let x_2375 : i32 = u_xlati63;
          let x_2378 : i32 = u_xlati63;
          let x_2382 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2375 + 3i) / 4i)][((x_2378 + 3i) % 4i)];
          u_xlat43 = (x_2374 + vec2<f32>(x_2382.x, x_2382.y));
          let x_2385 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2385 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2388 : vec2<f32> = u_xlat43;
          u_xlat43 = fract(x_2388);
          let x_2390 : u32 = u_xlatu60;
          let x_2393 : vec4<f32> = x_2213.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2390)];
          let x_2395 : vec2<f32> = u_xlat43;
          let x_2397 : u32 = u_xlatu60;
          let x_2400 : vec4<f32> = x_2213.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2397)];
          let x_2402 : vec2<f32> = ((vec2<f32>(x_2393.x, x_2393.y) * x_2395) + vec2<f32>(x_2400.z, x_2400.w));
          let x_2403 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
        } else {
          let x_2406 : vec3<f32> = vs_TEXCOORD1;
          let x_2408 : i32 = u_xlati63;
          let x_2411 : i32 = u_xlati63;
          let x_2415 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2408 + 1i) / 4i)][((x_2411 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2406.y, x_2406.y, x_2406.y, x_2406.y) * x_2415);
          let x_2417 : i32 = u_xlati63;
          let x_2419 : i32 = u_xlati63;
          let x_2422 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[(x_2417 / 4i)][(x_2419 % 4i)];
          let x_2423 : vec3<f32> = vs_TEXCOORD1;
          let x_2426 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2422 * vec4<f32>(x_2423.x, x_2423.x, x_2423.x, x_2423.x)) + x_2426);
          let x_2428 : i32 = u_xlati63;
          let x_2431 : i32 = u_xlati63;
          let x_2435 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2428 + 2i) / 4i)][((x_2431 + 2i) % 4i)];
          let x_2436 : vec3<f32> = vs_TEXCOORD1;
          let x_2439 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2435 * vec4<f32>(x_2436.z, x_2436.z, x_2436.z, x_2436.z)) + x_2439);
          let x_2441 : vec4<f32> = u_xlat9;
          let x_2442 : i32 = u_xlati63;
          let x_2445 : i32 = u_xlati63;
          let x_2449 : vec4<f32> = x_2213.x_AdditionalLightsWorldToLights[((x_2442 + 3i) / 4i)][((x_2445 + 3i) % 4i)];
          u_xlat9 = (x_2441 + x_2449);
          let x_2451 : vec4<f32> = u_xlat9;
          let x_2453 : vec4<f32> = u_xlat9;
          let x_2455 : vec3<f32> = (vec3<f32>(x_2451.x, x_2451.y, x_2451.z) / vec3<f32>(x_2453.w, x_2453.w, x_2453.w));
          let x_2456 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
          let x_2458 : vec4<f32> = u_xlat9;
          let x_2460 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(vec3<f32>(x_2458.x, x_2458.y, x_2458.z), vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
          let x_2465 : f32 = u_xlat43.x;
          u_xlat43.x = inverseSqrt(x_2465);
          let x_2468 : vec2<f32> = u_xlat43;
          let x_2470 : vec4<f32> = u_xlat9;
          let x_2472 : vec3<f32> = (vec3<f32>(x_2468.x, x_2468.x, x_2468.x) * vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
          let x_2473 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2472.x, x_2472.y, x_2472.z, x_2473.w);
          let x_2475 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(abs(vec3<f32>(x_2475.x, x_2475.y, x_2475.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2482 : f32 = u_xlat43.x;
          u_xlat43.x = max(x_2482, 0.000001f);
          let x_2487 : f32 = u_xlat43.x;
          u_xlat43.x = (1.0f / x_2487);
          let x_2490 : vec2<f32> = u_xlat43;
          let x_2492 : vec4<f32> = u_xlat9;
          let x_2494 : vec3<f32> = (vec3<f32>(x_2490.x, x_2490.x, x_2490.x) * vec3<f32>(x_2492.z, x_2492.x, x_2492.y));
          let x_2495 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
          let x_2498 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2498);
          let x_2502 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2502, 0.0f, 1.0f);
          let x_2506 : vec4<f32> = u_xlat10;
          let x_2509 : vec4<bool> = (vec4<f32>(x_2506.y, x_2506.z, x_2506.y, x_2506.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb46 = vec2<bool>(x_2509.x, x_2509.y);
          let x_2512 : bool = u_xlatb46.x;
          if (x_2512) {
            let x_2517 : f32 = u_xlat10.x;
            x_2513 = x_2517;
          } else {
            let x_2520 : f32 = u_xlat10.x;
            x_2513 = -(x_2520);
          }
          let x_2522 : f32 = x_2513;
          u_xlat46.x = x_2522;
          let x_2525 : bool = u_xlatb46.y;
          if (x_2525) {
            let x_2530 : f32 = u_xlat10.x;
            x_2526 = x_2530;
          } else {
            let x_2533 : f32 = u_xlat10.x;
            x_2526 = -(x_2533);
          }
          let x_2535 : f32 = x_2526;
          u_xlat46.y = x_2535;
          let x_2537 : vec4<f32> = u_xlat9;
          let x_2539 : vec2<f32> = u_xlat43;
          let x_2542 : vec2<f32> = u_xlat46;
          u_xlat43 = ((vec2<f32>(x_2537.x, x_2537.y) * vec2<f32>(x_2539.x, x_2539.x)) + x_2542);
          let x_2544 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2544 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2547 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2547, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2551 : u32 = u_xlatu60;
          let x_2554 : vec4<f32> = x_2213.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2551)];
          let x_2556 : vec2<f32> = u_xlat43;
          let x_2558 : u32 = u_xlatu60;
          let x_2561 : vec4<f32> = x_2213.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2558)];
          let x_2563 : vec2<f32> = ((vec2<f32>(x_2554.x, x_2554.y) * x_2556) + vec2<f32>(x_2561.z, x_2561.w));
          let x_2564 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2563.x, x_2563.y, x_2564.z, x_2564.w);
        }
      }
      let x_2571 : vec4<f32> = u_xlat8;
      let x_2574 : f32 = x_44.x_GlobalMipBias.x;
      let x_2575 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2571.x, x_2571.y), x_2574);
      u_xlat8 = x_2575;
      let x_2577 : bool = u_xlatb5.y;
      if (x_2577) {
        let x_2582 : f32 = u_xlat8.w;
        x_2578 = x_2582;
      } else {
        let x_2585 : f32 = u_xlat8.x;
        x_2578 = x_2585;
      }
      let x_2586 : f32 = x_2578;
      u_xlat43.x = x_2586;
      let x_2589 : bool = u_xlatb5.x;
      if (x_2589) {
        let x_2593 : vec4<f32> = u_xlat8;
        x_2590 = vec3<f32>(x_2593.x, x_2593.y, x_2593.z);
      } else {
        let x_2596 : vec2<f32> = u_xlat43;
        x_2590 = vec3<f32>(x_2596.x, x_2596.x, x_2596.x);
      }
      let x_2598 : vec3<f32> = x_2590;
      let x_2599 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2605 : vec4<f32> = u_xlat8;
    let x_2607 : u32 = u_xlatu60;
    let x_2610 : vec4<f32> = x_2093.x_AdditionalLightsColor[bitcast<i32>(x_2607)];
    let x_2612 : vec3<f32> = (vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
    let x_2613 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
    let x_2615 : vec4<f32> = u_xlat1;
    let x_2617 : vec4<f32> = u_xlat8;
    let x_2619 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.x, x_2615.x) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
    let x_2620 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
    let x_2622 : f32 = u_xlat61;
    let x_2624 : vec4<f32> = u_xlat8;
    let x_2626 : vec3<f32> = (vec3<f32>(x_2622, x_2622, x_2622) * vec3<f32>(x_2624.x, x_2624.y, x_2624.z));
    let x_2627 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
    let x_2629 : vec3<f32> = u_xlat2;
    let x_2630 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(x_2629, vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2633, 0.0f, 1.0f);
    let x_2635 : f32 = u_xlat60;
    let x_2637 : vec4<f32> = u_xlat8;
    let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
    let x_2642 : vec4<f32> = u_xlat7;
    let x_2644 : vec4<f32> = u_xlat1;
    let x_2647 : vec4<f32> = u_xlat6;
    let x_2649 : vec3<f32> = ((vec3<f32>(x_2642.x, x_2642.y, x_2642.z) * vec3<f32>(x_2644.y, x_2644.z, x_2644.w)) + vec3<f32>(x_2647.x, x_2647.y, x_2647.z));
    let x_2650 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);

    continuing {
      let x_2652 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2652 + bitcast<u32>(1i));
    }
  }
  let x_2654 : vec4<f32> = u_xlat4;
  let x_2656 : vec4<f32> = u_xlat1;
  let x_2659 : vec4<f32> = u_xlat3;
  let x_2661 : vec3<f32> = ((vec3<f32>(x_2654.x, x_2654.y, x_2654.z) * vec3<f32>(x_2656.y, x_2656.z, x_2656.w)) + vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
  let x_2662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2664 : vec4<f32> = u_xlat6;
  let x_2666 : vec4<f32> = u_xlat1;
  let x_2668 : vec3<f32> = (vec3<f32>(x_2664.x, x_2664.y, x_2664.z) + vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
  let x_2669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
  let x_2672 : f32 = u_xlat19.x;
  let x_2674 : f32 = u_xlat19.x;
  u_xlat19.x = (x_2672 * -(x_2674));
  let x_2679 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_2679);
  let x_2682 : vec4<f32> = u_xlat1;
  let x_2686 : vec4<f32> = x_44.unity_FogColor;
  let x_2689 : vec3<f32> = (vec3<f32>(x_2682.x, x_2682.y, x_2682.z) + -(vec3<f32>(x_2686.x, x_2686.y, x_2686.z)));
  let x_2690 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2689.x, x_2689.y, x_2689.z, x_2690.w);
  let x_2694 : vec3<f32> = u_xlat19;
  let x_2696 : vec4<f32> = u_xlat1;
  let x_2700 : vec4<f32> = x_44.unity_FogColor;
  let x_2702 : vec3<f32> = ((vec3<f32>(x_2694.x, x_2694.x, x_2694.x) * vec3<f32>(x_2696.x, x_2696.y, x_2696.z)) + vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
  let x_2703 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
  let x_2706 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2706 == 1.0f);
  let x_2708 : bool = u_xlatb19;
  let x_2709 : bool = u_xlatb38;
  u_xlatb19 = (x_2708 | x_2709);
  let x_2711 : bool = u_xlatb19;
  if (x_2711) {
    let x_2716 : f32 = u_xlat0.x;
    x_2712 = x_2716;
  } else {
    x_2712 = 1.0f;
  }
  let x_2718 : f32 = x_2712;
  SV_Target0.w = x_2718;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

