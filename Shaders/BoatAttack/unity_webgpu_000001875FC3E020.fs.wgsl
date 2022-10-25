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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_168 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1759 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1896 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2007 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2127 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat19 : f32;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_123 : f32;
  var u_xlatb19 : bool;
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
  var x_1844 : f32;
  var x_1855 : vec3<f32>;
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
  var x_2427 : f32;
  var x_2440 : f32;
  var x_2492 : f32;
  var x_2504 : vec3<f32>;
  var x_2621 : f32;
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
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat19 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat57;
  let x_103 : f32 = u_xlat38;
  u_xlat38 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat38;
  u_xlat38 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat19;
  let x_110 : f32 = u_xlat38;
  u_xlat19 = (x_109 / x_110);
  let x_112 : f32 = u_xlat19;
  u_xlat19 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat19;
  u_xlat19 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb38;
  if (x_122) {
    let x_126 : f32 = u_xlat19;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat19 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat19;
  u_xlatb19 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb19;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat19;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres0;
  let x_173 : vec3<f32> = (x_163 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres1;
  let x_182 : vec3<f32> = (x_177 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres2;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec3<f32> = vs_TEXCOORD1;
  let x_198 : vec4<f32> = x_168.x_CascadeShadowSplitSpheres3;
  let x_201 : vec3<f32> = (x_196 + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_217 : vec4<f32> = u_xlat5;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec4<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_233 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = x_168.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_233 < x_236);
  let x_239 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_247);
  let x_251 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_255);
  let x_261 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_261);
  let x_265 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_265);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat4;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = max(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_278.x, x_278.y, x_278.z);
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_281, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_287 : f32 = u_xlat19;
  u_xlat19 = (-(x_287) + 4.0f);
  let x_292 : f32 = u_xlat19;
  u_xlatu19 = u32(x_292);
  let x_296 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_296) << bitcast<u32>(2i));
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : i32 = u_xlati19;
  let x_304 : i32 = u_xlati19;
  let x_308 : vec4<f32> = x_168.x_MainLightWorldToShadow[((x_301 + 1i) / 4i)][((x_304 + 1i) % 4i)];
  let x_310 : vec3<f32> = (vec3<f32>(x_299.y, x_299.y, x_299.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : i32 = u_xlati19;
  let x_315 : i32 = u_xlati19;
  let x_318 : vec4<f32> = x_168.x_MainLightWorldToShadow[(x_313 / 4i)][(x_315 % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.x, x_320.x)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : i32 = u_xlati19;
  let x_331 : i32 = u_xlati19;
  let x_335 : vec4<f32> = x_168.x_MainLightWorldToShadow[((x_328 + 2i) / 4i)][((x_331 + 2i) % 4i)];
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = u_xlat3;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.z, x_337.z, x_337.z)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat3;
  let x_347 : i32 = u_xlati19;
  let x_350 : i32 = u_xlati19;
  let x_354 : vec4<f32> = x_168.x_MainLightWorldToShadow[((x_347 + 3i) / 4i)][((x_350 + 3i) % 4i)];
  let x_356 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : f32 = vs_TEXCOORD1.y;
  let x_363 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat19 = (x_360 * x_363);
  let x_366 : f32 = x_44.unity_MatrixV[0i].z;
  let x_368 : f32 = vs_TEXCOORD1.x;
  let x_370 : f32 = u_xlat19;
  u_xlat19 = ((x_366 * x_368) + x_370);
  let x_373 : f32 = x_44.unity_MatrixV[2i].z;
  let x_375 : f32 = vs_TEXCOORD1.z;
  let x_377 : f32 = u_xlat19;
  u_xlat19 = ((x_373 * x_375) + x_377);
  let x_379 : f32 = u_xlat19;
  let x_381 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat19 = (x_379 + x_381);
  let x_383 : f32 = u_xlat19;
  let x_387 : f32 = x_44.x_ProjectionParams.y;
  u_xlat19 = (-(x_383) + -(x_387));
  let x_390 : f32 = u_xlat19;
  u_xlat19 = max(x_390, 0.0f);
  let x_392 : f32 = u_xlat19;
  let x_395 : f32 = x_44.unity_FogParams.x;
  u_xlat19 = (x_392 * x_395);
  let x_403 : vec2<f32> = vs_TEXCOORD7;
  let x_405 : f32 = x_44.x_GlobalMipBias.x;
  let x_406 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_403, x_405);
  let x_407 : vec3<f32> = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_412 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_413 : vec2<f32> = vec2<f32>(x_412.x, x_412.y);
  let x_417 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_413.x, x_413.y));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec4<f32> = hlslcc_FragCoord;
  let x_424 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_422.x, x_422.y));
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_428 : f32 = u_xlat5.y;
  let x_431 : f32 = x_44.x_ScaleBiasRt.x;
  let x_434 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat57 = ((x_428 * x_431) + x_434);
  let x_436 : f32 = u_xlat57;
  u_xlat5.z = (-(x_436) + 1.0f);
  let x_445 : vec4<f32> = u_xlat5;
  let x_448 : f32 = x_44.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_445.x, x_445.z), x_448);
  u_xlat57 = x_449.x;
  let x_451 : f32 = u_xlat57;
  u_xlat1.x = (x_451 + -1.0f);
  let x_455 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_457 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_455 * x_457) + 1.0f);
  let x_461 : f32 = u_xlat57;
  u_xlat57 = min(x_461, 1.0f);
  let x_465 : f32 = x_168.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_465);
  let x_467 : bool = u_xlatb59;
  if (x_467) {
    let x_471 : f32 = x_168.x_MainLightShadowParams.y;
    u_xlatb59 = (x_471 == 1.0f);
    let x_473 : bool = u_xlatb59;
    if (x_473) {
      let x_476 : vec4<f32> = u_xlat3;
      let x_480 : vec4<f32> = x_168.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_476.x, x_476.y, x_476.x, x_476.y) + x_480);
      let x_483 : vec4<f32> = u_xlat5;
      let x_484 : vec2<f32> = vec2<f32>(x_483.x, x_483.y);
      let x_486 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_484.x, x_484.y, x_486);
      let x_498 : vec3<f32> = txVec0;
      let x_500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_498.xy, x_498.z);
      u_xlat6.x = x_500;
      let x_503 : vec4<f32> = u_xlat5;
      let x_504 : vec2<f32> = vec2<f32>(x_503.z, x_503.w);
      let x_506 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_504.x, x_504.y, x_506);
      let x_513 : vec3<f32> = txVec1;
      let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_513.xy, x_513.z);
      u_xlat6.y = x_515;
      let x_517 : vec4<f32> = u_xlat3;
      let x_521 : vec4<f32> = x_168.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) + x_521);
      let x_524 : vec4<f32> = u_xlat5;
      let x_525 : vec2<f32> = vec2<f32>(x_524.x, x_524.y);
      let x_527 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_525.x, x_525.y, x_527);
      let x_534 : vec3<f32> = txVec2;
      let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_534.xy, x_534.z);
      u_xlat6.z = x_536;
      let x_539 : vec4<f32> = u_xlat5;
      let x_540 : vec2<f32> = vec2<f32>(x_539.z, x_539.w);
      let x_542 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_540.x, x_540.y, x_542);
      let x_549 : vec3<f32> = txVec3;
      let x_551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_549.xy, x_549.z);
      u_xlat6.w = x_551;
      let x_554 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_554, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_561 : f32 = x_168.x_MainLightShadowParams.y;
      u_xlatb60 = (x_561 == 2.0f);
      let x_563 : bool = u_xlatb60;
      if (x_563) {
        let x_566 : vec4<f32> = u_xlat3;
        let x_569 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_573 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_569.z, x_569.w)) + vec2<f32>(0.5f, 0.5f));
        let x_574 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat5;
        let x_578 : vec2<f32> = floor(vec2<f32>(x_576.x, x_576.y));
        let x_579 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
        let x_583 : vec4<f32> = u_xlat3;
        let x_586 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_589 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_586.z, x_586.w)) + -(vec2<f32>(x_589.x, x_589.y)));
        let x_593 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_593.x, x_593.x, x_593.y, x_593.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_598 : vec4<f32> = u_xlat6;
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_598.x, x_598.x, x_598.z, x_598.z) * vec4<f32>(x_600.x, x_600.x, x_600.z, x_600.z));
        let x_603 : vec4<f32> = u_xlat7;
        let x_607 : vec2<f32> = (vec2<f32>(x_603.y, x_603.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_608 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_607.x, x_608.y, x_607.y, x_608.w);
        let x_610 : vec4<f32> = u_xlat7;
        let x_613 : vec2<f32> = u_xlat43;
        let x_615 : vec2<f32> = ((vec2<f32>(x_610.x, x_610.z) * vec2<f32>(0.5f, 0.5f)) + -(x_613));
        let x_616 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
        let x_619 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_619) + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec2<f32> = u_xlat43;
        let x_625 : vec2<f32> = min(x_623, vec2<f32>(0.0f, 0.0f));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat8;
        let x_631 : vec4<f32> = u_xlat8;
        let x_634 : vec2<f32> = u_xlat45;
        let x_635 : vec2<f32> = ((-(vec2<f32>(x_628.x, x_628.y)) * vec2<f32>(x_631.x, x_631.y)) + x_634);
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_638, vec2<f32>(0.0f, 0.0f));
        let x_640 : vec2<f32> = u_xlat43;
        let x_642 : vec2<f32> = u_xlat43;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_640) * x_642) + vec2<f32>(x_644.y, x_644.w));
        let x_647 : vec4<f32> = u_xlat8;
        let x_649 : vec2<f32> = (vec2<f32>(x_647.x, x_647.y) + vec2<f32>(1.0f, 1.0f));
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_652 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_652 + vec2<f32>(1.0f, 1.0f));
        let x_655 : vec4<f32> = u_xlat7;
        let x_659 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_660 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec2<f32> = u_xlat45;
        let x_663 : vec2<f32> = (x_662 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_664 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_672 : vec2<f32> = u_xlat43;
        let x_673 : vec2<f32> = (x_672 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_674 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_676.y, x_676.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_680 : f32 = u_xlat8.x;
        u_xlat9.z = x_680;
        let x_683 : f32 = u_xlat43.x;
        u_xlat9.w = x_683;
        let x_686 : f32 = u_xlat10.x;
        u_xlat7.z = x_686;
        let x_689 : f32 = u_xlat6.x;
        u_xlat7.w = x_689;
        let x_692 : vec4<f32> = u_xlat7;
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_692.z, x_692.w, x_692.x, x_692.z) + vec4<f32>(x_694.z, x_694.w, x_694.x, x_694.z));
        let x_698 : f32 = u_xlat9.y;
        u_xlat8.z = x_698;
        let x_701 : f32 = u_xlat43.y;
        u_xlat8.w = x_701;
        let x_704 : f32 = u_xlat7.y;
        u_xlat10.z = x_704;
        let x_707 : f32 = u_xlat6.z;
        u_xlat10.w = x_707;
        let x_709 : vec4<f32> = u_xlat8;
        let x_711 : vec4<f32> = u_xlat10;
        let x_713 : vec3<f32> = (vec3<f32>(x_709.z, x_709.y, x_709.w) + vec3<f32>(x_711.z, x_711.y, x_711.w));
        let x_714 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
        let x_716 : vec4<f32> = u_xlat7;
        let x_718 : vec4<f32> = u_xlat11;
        let x_720 : vec3<f32> = (vec3<f32>(x_716.x, x_716.z, x_716.w) / vec3<f32>(x_718.z, x_718.w, x_718.y));
        let x_721 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat7;
        let x_729 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_730 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat10;
        let x_734 : vec4<f32> = u_xlat6;
        let x_736 : vec3<f32> = (vec3<f32>(x_732.z, x_732.y, x_732.w) / vec3<f32>(x_734.x, x_734.y, x_734.z));
        let x_737 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat8;
        let x_741 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat7;
        let x_747 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_749 : vec3<f32> = (vec3<f32>(x_744.y, x_744.x, x_744.z) * vec3<f32>(x_747.x, x_747.x, x_747.x));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat8;
        let x_755 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_757 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_755.y, x_755.y, x_755.y));
        let x_758 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
        let x_761 : f32 = u_xlat8.x;
        u_xlat7.w = x_761;
        let x_763 : vec4<f32> = u_xlat5;
        let x_766 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_769 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_763.x, x_763.y, x_763.x, x_763.y) * vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y)) + vec4<f32>(x_769.y, x_769.w, x_769.x, x_769.w));
        let x_772 : vec4<f32> = u_xlat5;
        let x_775 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_778 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_772.x, x_772.y) * vec2<f32>(x_775.x, x_775.y)) + vec2<f32>(x_778.z, x_778.w));
        let x_782 : f32 = u_xlat7.y;
        u_xlat8.w = x_782;
        let x_784 : vec4<f32> = u_xlat8;
        let x_785 : vec2<f32> = vec2<f32>(x_784.y, x_784.z);
        let x_786 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_786.x, x_785.x, x_786.z, x_785.y);
        let x_788 : vec4<f32> = u_xlat5;
        let x_791 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_794 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y) * vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.y)) + vec4<f32>(x_794.x, x_794.y, x_794.z, x_794.y));
        let x_797 : vec4<f32> = u_xlat5;
        let x_800 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y) * vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y)) + vec4<f32>(x_803.w, x_803.y, x_803.w, x_803.z));
        let x_806 : vec4<f32> = u_xlat5;
        let x_809 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y) * vec4<f32>(x_809.x, x_809.y, x_809.x, x_809.y)) + vec4<f32>(x_812.x, x_812.w, x_812.z, x_812.w));
        let x_816 : vec4<f32> = u_xlat6;
        let x_818 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_816.x, x_816.x, x_816.x, x_816.y) * vec4<f32>(x_818.z, x_818.w, x_818.y, x_818.z));
        let x_822 : vec4<f32> = u_xlat6;
        let x_824 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_822.y, x_822.y, x_822.z, x_822.z) * x_824);
        let x_828 : f32 = u_xlat6.z;
        let x_830 : f32 = u_xlat11.y;
        u_xlat60 = (x_828 * x_830);
        let x_833 : vec4<f32> = u_xlat9;
        let x_834 : vec2<f32> = vec2<f32>(x_833.x, x_833.y);
        let x_836 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_834.x, x_834.y, x_836);
        let x_844 : vec3<f32> = txVec4;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_844.xy, x_844.z);
        u_xlat61 = x_846;
        let x_848 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = vec2<f32>(x_848.z, x_848.w);
        let x_851 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec5;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_858.xy, x_858.z);
        u_xlat5.x = x_860;
        let x_863 : f32 = u_xlat5.x;
        let x_865 : f32 = u_xlat12.y;
        u_xlat5.x = (x_863 * x_865);
        let x_869 : f32 = u_xlat12.x;
        let x_870 : f32 = u_xlat61;
        let x_873 : f32 = u_xlat5.x;
        u_xlat61 = ((x_869 * x_870) + x_873);
        let x_876 : vec2<f32> = u_xlat43;
        let x_878 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec6;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_885.xy, x_885.z);
        u_xlat5.x = x_887;
        let x_890 : f32 = u_xlat12.z;
        let x_892 : f32 = u_xlat5.x;
        let x_894 : f32 = u_xlat61;
        u_xlat61 = ((x_890 * x_892) + x_894);
        let x_897 : vec4<f32> = u_xlat8;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec7;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_907.xy, x_907.z);
        u_xlat5.x = x_909;
        let x_912 : f32 = u_xlat12.w;
        let x_914 : f32 = u_xlat5.x;
        let x_916 : f32 = u_xlat61;
        u_xlat61 = ((x_912 * x_914) + x_916);
        let x_919 : vec4<f32> = u_xlat10;
        let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
        let x_922 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_929 : vec3<f32> = txVec8;
        let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_929.xy, x_929.z);
        u_xlat5.x = x_931;
        let x_934 : f32 = u_xlat13.x;
        let x_936 : f32 = u_xlat5.x;
        let x_938 : f32 = u_xlat61;
        u_xlat61 = ((x_934 * x_936) + x_938);
        let x_941 : vec4<f32> = u_xlat10;
        let x_942 : vec2<f32> = vec2<f32>(x_941.z, x_941.w);
        let x_944 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec9;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_951.xy, x_951.z);
        u_xlat5.x = x_953;
        let x_956 : f32 = u_xlat13.y;
        let x_958 : f32 = u_xlat5.x;
        let x_960 : f32 = u_xlat61;
        u_xlat61 = ((x_956 * x_958) + x_960);
        let x_963 : vec4<f32> = u_xlat8;
        let x_964 : vec2<f32> = vec2<f32>(x_963.z, x_963.w);
        let x_966 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec10;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_973.xy, x_973.z);
        u_xlat5.x = x_975;
        let x_978 : f32 = u_xlat13.z;
        let x_980 : f32 = u_xlat5.x;
        let x_982 : f32 = u_xlat61;
        u_xlat61 = ((x_978 * x_980) + x_982);
        let x_985 : vec4<f32> = u_xlat7;
        let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
        let x_988 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec11;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
        u_xlat5.x = x_997;
        let x_1000 : f32 = u_xlat13.w;
        let x_1002 : f32 = u_xlat5.x;
        let x_1004 : f32 = u_xlat61;
        u_xlat61 = ((x_1000 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec12;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
        u_xlat5.x = x_1019;
        let x_1021 : f32 = u_xlat60;
        let x_1023 : f32 = u_xlat5.x;
        let x_1025 : f32 = u_xlat61;
        u_xlat59 = ((x_1021 * x_1023) + x_1025);
      } else {
        let x_1028 : vec4<f32> = u_xlat3;
        let x_1031 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1031.z, x_1031.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1035 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat5;
        let x_1039 : vec2<f32> = floor(vec2<f32>(x_1037.x, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat3;
        let x_1045 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + -(vec2<f32>(x_1048.x, x_1048.y)));
        let x_1052 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1052.x, x_1052.x, x_1052.y, x_1052.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1055.x, x_1055.x, x_1055.z, x_1055.z) * vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1060.y, x_1060.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec4<f32> = u_xlat7;
        let x_1070 : vec2<f32> = u_xlat43;
        let x_1072 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1070));
        let x_1073 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1072.x, x_1073.y, x_1072.y, x_1073.w);
        let x_1075 : vec2<f32> = u_xlat43;
        let x_1077 : vec2<f32> = (-(x_1075) + vec2<f32>(1.0f, 1.0f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1080, vec2<f32>(0.0f, 0.0f));
        let x_1082 : vec2<f32> = u_xlat45;
        let x_1084 : vec2<f32> = u_xlat45;
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1088 : vec2<f32> = ((-(x_1082) * x_1084) + vec2<f32>(x_1086.x, x_1086.y));
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1091 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1091, vec2<f32>(0.0f, 0.0f));
        let x_1094 : vec2<f32> = u_xlat45;
        let x_1096 : vec2<f32> = u_xlat45;
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1100 : vec2<f32> = ((-(x_1094) * x_1096) + vec2<f32>(x_1098.y, x_1098.w));
        let x_1101 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1100.x, x_1101.y, x_1100.y);
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.y) + vec2<f32>(2.0f, 2.0f));
        let x_1107 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec3<f32> = u_xlat25;
        let x_1111 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.z) + vec2<f32>(2.0f, 2.0f));
        let x_1112 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1112.x, x_1111.x, x_1112.z, x_1111.y);
        let x_1115 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1115 * 0.081632003f);
        let x_1119 : vec4<f32> = u_xlat6;
        let x_1122 : vec3<f32> = (vec3<f32>(x_1119.z, x_1119.x, x_1119.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat7;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1129 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1132 : f32 = u_xlat10.y;
        u_xlat9.x = x_1132;
        let x_1134 : vec2<f32> = u_xlat43;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1134.x, x_1134.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1144 : vec2<f32> = u_xlat43;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1149 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1149.w);
        let x_1152 : f32 = u_xlat6.x;
        u_xlat7.y = x_1152;
        let x_1155 : f32 = u_xlat8.y;
        u_xlat7.w = x_1155;
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1157 + x_1158);
        let x_1160 : vec2<f32> = u_xlat43;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.y, x_1160.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1163.x, x_1164.z, x_1163.y);
        let x_1166 : vec2<f32> = u_xlat43;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1166.y, x_1166.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1170.w);
        let x_1173 : f32 = u_xlat6.y;
        u_xlat8.y = x_1173;
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1175 + x_1176);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1178 / x_1179);
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1181 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1187 / x_1188);
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1190 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1192.w, x_1192.x, x_1192.y, x_1192.z) * vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1198.x, x_1198.w, x_1198.y, x_1198.z) * vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1205 : vec3<f32> = vec3<f32>(x_1204.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
        let x_1209 : f32 = u_xlat8.x;
        u_xlat10.y = x_1209;
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat5;
        let x_1223 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.w, x_1226.y));
        let x_1230 : f32 = u_xlat10.y;
        u_xlat7.y = x_1230;
        let x_1233 : f32 = u_xlat8.z;
        u_xlat10.y = x_1233;
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1238 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) * vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y)) + vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1241.y));
        let x_1244 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat10;
        let x_1252 : vec2<f32> = ((vec2<f32>(x_1244.x, x_1244.y) * vec2<f32>(x_1247.x, x_1247.y)) + vec2<f32>(x_1250.w, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
        let x_1256 : f32 = u_xlat10.y;
        u_xlat7.z = x_1256;
        let x_1259 : vec4<f32> = u_xlat5;
        let x_1262 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.z));
        let x_1269 : f32 = u_xlat8.w;
        u_xlat10.y = x_1269;
        let x_1272 : vec4<f32> = u_xlat5;
        let x_1275 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1282 : vec4<f32> = u_xlat5;
        let x_1285 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1288.w, x_1288.y));
        let x_1292 : f32 = u_xlat10.y;
        u_xlat7.w = x_1292;
        let x_1295 : vec4<f32> = u_xlat5;
        let x_1298 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1298.x, x_1298.y)) + vec2<f32>(x_1301.x, x_1301.w));
        let x_1304 : vec4<f32> = u_xlat10;
        let x_1305 : vec3<f32> = vec3<f32>(x_1304.x, x_1304.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1305.z);
        let x_1308 : vec4<f32> = u_xlat5;
        let x_1311 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.y));
        let x_1318 : vec4<f32> = u_xlat5;
        let x_1321 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.x, x_1321.y)) + vec2<f32>(x_1324.w, x_1324.y));
        let x_1328 : f32 = u_xlat7.x;
        u_xlat8.x = x_1328;
        let x_1330 : vec4<f32> = u_xlat5;
        let x_1333 : vec4<f32> = x_168.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1330.x, x_1330.y) * vec2<f32>(x_1333.x, x_1333.y)) + vec2<f32>(x_1336.x, x_1336.y));
        let x_1339 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1342 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1342.x, x_1342.x, x_1342.x, x_1342.x) * x_1344);
        let x_1347 : vec4<f32> = u_xlat6;
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1347.y, x_1347.y, x_1347.y, x_1347.y) * x_1349);
        let x_1352 : vec4<f32> = u_xlat6;
        let x_1354 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1352.z, x_1352.z, x_1352.z, x_1352.z) * x_1354);
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1358 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1356.w, x_1356.w, x_1356.w, x_1356.w) * x_1358);
        let x_1361 : vec4<f32> = u_xlat11;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec13;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat60 = x_1373;
        let x_1375 : vec4<f32> = u_xlat11;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec14;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1385.xy, x_1385.z);
        u_xlat61 = x_1387;
        let x_1388 : f32 = u_xlat61;
        let x_1390 : f32 = u_xlat16.y;
        u_xlat61 = (x_1388 * x_1390);
        let x_1393 : f32 = u_xlat16.x;
        let x_1394 : f32 = u_xlat60;
        let x_1396 : f32 = u_xlat61;
        u_xlat60 = ((x_1393 * x_1394) + x_1396);
        let x_1399 : vec2<f32> = u_xlat43;
        let x_1401 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec15;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat61 = x_1410;
        let x_1412 : f32 = u_xlat16.z;
        let x_1413 : f32 = u_xlat61;
        let x_1415 : f32 = u_xlat60;
        u_xlat60 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat14;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec16;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat61 = x_1430;
        let x_1432 : f32 = u_xlat16.w;
        let x_1433 : f32 = u_xlat61;
        let x_1435 : f32 = u_xlat60;
        u_xlat60 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat12;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec17;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1448.xy, x_1448.z);
        u_xlat61 = x_1450;
        let x_1452 : f32 = u_xlat17.x;
        let x_1453 : f32 = u_xlat61;
        let x_1455 : f32 = u_xlat60;
        u_xlat60 = ((x_1452 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec18;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat61 = x_1470;
        let x_1472 : f32 = u_xlat17.y;
        let x_1473 : f32 = u_xlat61;
        let x_1475 : f32 = u_xlat60;
        u_xlat60 = ((x_1472 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat13;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec19;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat61 = x_1490;
        let x_1492 : f32 = u_xlat17.z;
        let x_1493 : f32 = u_xlat61;
        let x_1495 : f32 = u_xlat60;
        u_xlat60 = ((x_1492 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat14;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.z, x_1498.w);
        let x_1501 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec20;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat61 = x_1510;
        let x_1512 : f32 = u_xlat17.w;
        let x_1513 : f32 = u_xlat61;
        let x_1515 : f32 = u_xlat60;
        u_xlat60 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat15;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec21;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1528.xy, x_1528.z);
        u_xlat61 = x_1530;
        let x_1532 : f32 = u_xlat18.x;
        let x_1533 : f32 = u_xlat61;
        let x_1535 : f32 = u_xlat60;
        u_xlat60 = ((x_1532 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat15;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec22;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat61 = x_1550;
        let x_1552 : f32 = u_xlat18.y;
        let x_1553 : f32 = u_xlat61;
        let x_1555 : f32 = u_xlat60;
        u_xlat60 = ((x_1552 * x_1553) + x_1555);
        let x_1558 : vec2<f32> = u_xlat26;
        let x_1560 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec23;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat61 = x_1569;
        let x_1571 : f32 = u_xlat18.z;
        let x_1572 : f32 = u_xlat61;
        let x_1574 : f32 = u_xlat60;
        u_xlat60 = ((x_1571 * x_1572) + x_1574);
        let x_1577 : vec2<f32> = u_xlat51;
        let x_1579 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec24;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat61 = x_1588;
        let x_1590 : f32 = u_xlat18.w;
        let x_1591 : f32 = u_xlat61;
        let x_1593 : f32 = u_xlat60;
        u_xlat60 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec25;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat61 = x_1608;
        let x_1610 : f32 = u_xlat6.x;
        let x_1611 : f32 = u_xlat61;
        let x_1613 : f32 = u_xlat60;
        u_xlat60 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat10;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.z, x_1616.w);
        let x_1619 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec26;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat61 = x_1628;
        let x_1630 : f32 = u_xlat6.y;
        let x_1631 : f32 = u_xlat61;
        let x_1633 : f32 = u_xlat60;
        u_xlat60 = ((x_1630 * x_1631) + x_1633);
        let x_1636 : vec2<f32> = u_xlat46;
        let x_1638 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec27;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1645.xy, x_1645.z);
        u_xlat61 = x_1647;
        let x_1649 : f32 = u_xlat6.z;
        let x_1650 : f32 = u_xlat61;
        let x_1652 : f32 = u_xlat60;
        u_xlat60 = ((x_1649 * x_1650) + x_1652);
        let x_1655 : vec4<f32> = u_xlat5;
        let x_1656 : vec2<f32> = vec2<f32>(x_1655.x, x_1655.y);
        let x_1658 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1665 : vec3<f32> = txVec28;
        let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1665.xy, x_1665.z);
        u_xlat61 = x_1667;
        let x_1669 : f32 = u_xlat6.w;
        let x_1670 : f32 = u_xlat61;
        let x_1672 : f32 = u_xlat60;
        u_xlat59 = ((x_1669 * x_1670) + x_1672);
      }
    }
  } else {
    let x_1676 : vec4<f32> = u_xlat3;
    let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
    let x_1679 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
    let x_1686 : vec3<f32> = txVec29;
    let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
    u_xlat59 = x_1688;
  }
  let x_1690 : f32 = x_168.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1690) + 1.0f);
  let x_1694 : f32 = u_xlat59;
  let x_1696 : f32 = x_168.x_MainLightShadowParams.x;
  let x_1699 : f32 = u_xlat3.x;
  u_xlat59 = ((x_1694 * x_1696) + x_1699);
  let x_1702 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1702);
  let x_1707 : f32 = u_xlat3.z;
  u_xlatb22 = (x_1707 >= 1.0f);
  let x_1709 : bool = u_xlatb22;
  let x_1711 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1709 | x_1711);
  let x_1715 : bool = u_xlatb3.x;
  let x_1716 : f32 = u_xlat59;
  u_xlat59 = select(x_1716, 1.0f, x_1715);
  let x_1718 : vec3<f32> = vs_TEXCOORD1;
  let x_1721 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1723 : vec3<f32> = (x_1718 + -(x_1721));
  let x_1724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
  let x_1726 : vec4<f32> = u_xlat3;
  let x_1728 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1726.x, x_1726.y, x_1726.z), vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1733 : f32 = u_xlat3.x;
  let x_1735 : f32 = x_168.x_MainLightShadowParams.z;
  let x_1738 : f32 = x_168.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1733 * x_1735) + x_1738);
  let x_1742 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1742, 0.0f, 1.0f);
  let x_1746 : f32 = u_xlat59;
  u_xlat22 = (-(x_1746) + 1.0f);
  let x_1750 : f32 = u_xlat3.x;
  let x_1751 : f32 = u_xlat22;
  let x_1753 : f32 = u_xlat59;
  u_xlat59 = ((x_1750 * x_1751) + x_1753);
  let x_1761 : f32 = x_1759.x_MainLightCookieTextureFormat;
  u_xlatb3.x = !((x_1761 == -1.0f));
  let x_1765 : bool = u_xlatb3.x;
  if (x_1765) {
    let x_1768 : vec3<f32> = vs_TEXCOORD1;
    let x_1771 : vec4<f32> = x_1759.x_MainLightWorldToLight[1i];
    let x_1773 : vec2<f32> = (vec2<f32>(x_1768.y, x_1768.y) * vec2<f32>(x_1771.x, x_1771.y));
    let x_1774 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1773.x, x_1773.y, x_1774.z, x_1774.w);
    let x_1777 : vec4<f32> = x_1759.x_MainLightWorldToLight[0i];
    let x_1779 : vec3<f32> = vs_TEXCOORD1;
    let x_1782 : vec4<f32> = u_xlat3;
    let x_1784 : vec2<f32> = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1779.x, x_1779.x)) + vec2<f32>(x_1782.x, x_1782.y));
    let x_1785 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1784.x, x_1784.y, x_1785.z, x_1785.w);
    let x_1788 : vec4<f32> = x_1759.x_MainLightWorldToLight[2i];
    let x_1790 : vec3<f32> = vs_TEXCOORD1;
    let x_1793 : vec4<f32> = u_xlat3;
    let x_1795 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1790.z, x_1790.z)) + vec2<f32>(x_1793.x, x_1793.y));
    let x_1796 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1795.x, x_1795.y, x_1796.z, x_1796.w);
    let x_1798 : vec4<f32> = u_xlat3;
    let x_1801 : vec4<f32> = x_1759.x_MainLightWorldToLight[3i];
    let x_1803 : vec2<f32> = (vec2<f32>(x_1798.x, x_1798.y) + vec2<f32>(x_1801.x, x_1801.y));
    let x_1804 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1803.x, x_1803.y, x_1804.z, x_1804.w);
    let x_1806 : vec4<f32> = u_xlat3;
    let x_1809 : vec2<f32> = ((vec2<f32>(x_1806.x, x_1806.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1810 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1809.x, x_1809.y, x_1810.z, x_1810.w);
    let x_1817 : vec4<f32> = u_xlat3;
    let x_1820 : f32 = x_44.x_GlobalMipBias.x;
    let x_1821 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1817.x, x_1817.y), x_1820);
    u_xlat3 = x_1821;
    let x_1826 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1828 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1830 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1832 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1833 : vec4<f32> = vec4<f32>(x_1826, x_1828, x_1830, x_1832);
    let x_1840 : vec4<bool> = (vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1833.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1840.x, x_1840.y);
    let x_1843 : bool = u_xlatb5.y;
    if (x_1843) {
      let x_1848 : f32 = u_xlat3.w;
      x_1844 = x_1848;
    } else {
      let x_1851 : f32 = u_xlat3.x;
      x_1844 = x_1851;
    }
    let x_1852 : f32 = x_1844;
    u_xlat60 = x_1852;
    let x_1854 : bool = u_xlatb5.x;
    if (x_1854) {
      let x_1858 : vec4<f32> = u_xlat3;
      x_1855 = vec3<f32>(x_1858.x, x_1858.y, x_1858.z);
    } else {
      let x_1861 : f32 = u_xlat60;
      x_1855 = vec3<f32>(x_1861, x_1861, x_1861);
    }
    let x_1863 : vec3<f32> = x_1855;
    let x_1864 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1870 : vec4<f32> = u_xlat3;
  let x_1873 : vec4<f32> = x_44.x_MainLightColor;
  let x_1875 : vec3<f32> = (vec3<f32>(x_1870.x, x_1870.y, x_1870.z) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
  let x_1878 : vec4<f32> = u_xlat1;
  let x_1880 : vec4<f32> = u_xlat3;
  let x_1882 : vec3<f32> = (vec3<f32>(x_1878.x, x_1878.x, x_1878.x) * vec3<f32>(x_1880.x, x_1880.y, x_1880.z));
  let x_1883 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
  let x_1885 : f32 = u_xlat57;
  let x_1887 : vec4<f32> = u_xlat4;
  let x_1889 : vec3<f32> = (vec3<f32>(x_1885, x_1885, x_1885) * vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1892 : f32 = u_xlat59;
  let x_1898 : f32 = x_1896.unity_LightData.z;
  u_xlat57 = (x_1892 * x_1898);
  let x_1900 : f32 = u_xlat57;
  let x_1902 : vec4<f32> = u_xlat3;
  let x_1904 : vec3<f32> = (vec3<f32>(x_1900, x_1900, x_1900) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1907 : vec3<f32> = u_xlat2;
  let x_1909 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat57 = dot(x_1907, vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1912, 0.0f, 1.0f);
  let x_1914 : f32 = u_xlat57;
  let x_1916 : vec4<f32> = u_xlat3;
  let x_1918 : vec3<f32> = (vec3<f32>(x_1914, x_1914, x_1914) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
  let x_1921 : vec4<f32> = u_xlat1;
  let x_1923 : vec4<f32> = u_xlat3;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1921.y, x_1921.z, x_1921.w) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
  let x_1929 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1931 : f32 = x_1896.unity_LightData.y;
  u_xlat57 = min(x_1929, x_1931);
  let x_1934 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_1934));
  let x_1938 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1940 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1942 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1944 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1945 : vec4<f32> = vec4<f32>(x_1938, x_1940, x_1942, x_1944);
  let x_1951 : vec4<bool> = (vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1945.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1951.x, x_1951.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1962 : u32 = u_xlatu_loop_1;
    let x_1963 : u32 = u_xlatu57;
    if ((x_1962 < x_1963)) {
    } else {
      break;
    }
    let x_1966 : u32 = u_xlatu_loop_1;
    u_xlatu60 = (x_1966 >> 2u);
    let x_1969 : u32 = u_xlatu_loop_1;
    u_xlati61 = bitcast<i32>((x_1969 & 3u));
    let x_1972 : u32 = u_xlatu60;
    let x_1975 : vec4<f32> = x_1896.unity_LightIndices[bitcast<i32>(x_1972)];
    let x_1985 : i32 = u_xlati61;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1990 : vec4<u32> = indexable[x_1985];
    u_xlat60 = dot(x_1975, bitcast<vec4<f32>>(x_1990));
    let x_1993 : f32 = u_xlat60;
    u_xlatu60 = bitcast<u32>(i32(x_1993));
    let x_1996 : vec3<f32> = vs_TEXCOORD1;
    let x_2008 : u32 = u_xlatu60;
    let x_2011 : vec4<f32> = x_2007.x_AdditionalLightsPosition[bitcast<i32>(x_2008)];
    let x_2014 : u32 = u_xlatu60;
    let x_2017 : vec4<f32> = x_2007.x_AdditionalLightsPosition[bitcast<i32>(x_2014)];
    let x_2019 : vec3<f32> = ((-(x_1996) * vec3<f32>(x_2011.w, x_2011.w, x_2011.w)) + vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
    let x_2020 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
    let x_2022 : vec4<f32> = u_xlat7;
    let x_2024 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2022.x, x_2022.y, x_2022.z), vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : f32 = u_xlat61;
    u_xlat61 = max(x_2027, 6.10351562e-05f);
    let x_2030 : f32 = u_xlat61;
    u_xlat43.x = inverseSqrt(x_2030);
    let x_2033 : vec2<f32> = u_xlat43;
    let x_2035 : vec4<f32> = u_xlat7;
    let x_2037 : vec3<f32> = (vec3<f32>(x_2033.x, x_2033.x, x_2033.x) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
    let x_2038 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
    let x_2040 : f32 = u_xlat61;
    u_xlat43.x = (1.0f / x_2040);
    let x_2043 : f32 = u_xlat61;
    let x_2044 : u32 = u_xlatu60;
    let x_2047 : f32 = x_2007.x_AdditionalLightsAttenuation[bitcast<i32>(x_2044)].x;
    u_xlat61 = (x_2043 * x_2047);
    let x_2049 : f32 = u_xlat61;
    let x_2051 : f32 = u_xlat61;
    u_xlat61 = ((-(x_2049) * x_2051) + 1.0f);
    let x_2054 : f32 = u_xlat61;
    u_xlat61 = max(x_2054, 0.0f);
    let x_2056 : f32 = u_xlat61;
    let x_2057 : f32 = u_xlat61;
    u_xlat61 = (x_2056 * x_2057);
    let x_2059 : f32 = u_xlat61;
    let x_2061 : f32 = u_xlat43.x;
    u_xlat61 = (x_2059 * x_2061);
    let x_2063 : u32 = u_xlatu60;
    let x_2066 : vec4<f32> = x_2007.x_AdditionalLightsSpotDir[bitcast<i32>(x_2063)];
    let x_2068 : vec4<f32> = u_xlat7;
    u_xlat43.x = dot(vec3<f32>(x_2066.x, x_2066.y, x_2066.z), vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
    let x_2073 : f32 = u_xlat43.x;
    let x_2074 : u32 = u_xlatu60;
    let x_2077 : f32 = x_2007.x_AdditionalLightsAttenuation[bitcast<i32>(x_2074)].z;
    let x_2079 : u32 = u_xlatu60;
    let x_2082 : f32 = x_2007.x_AdditionalLightsAttenuation[bitcast<i32>(x_2079)].w;
    u_xlat43.x = ((x_2073 * x_2077) + x_2082);
    let x_2086 : f32 = u_xlat43.x;
    u_xlat43.x = clamp(x_2086, 0.0f, 1.0f);
    let x_2090 : f32 = u_xlat43.x;
    let x_2092 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2090 * x_2092);
    let x_2095 : f32 = u_xlat61;
    let x_2097 : f32 = u_xlat43.x;
    u_xlat61 = (x_2095 * x_2097);
    let x_2100 : u32 = u_xlatu60;
    u_xlatu43 = (x_2100 >> 5u);
    let x_2103 : u32 = u_xlatu60;
    u_xlati62 = (1i << bitcast<u32>((bitcast<i32>(x_2103) & 31i)));
    let x_2109 : i32 = u_xlati62;
    let x_2111 : u32 = u_xlatu43;
    let x_2114 : f32 = x_1759.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2111)].el;
    u_xlati43 = bitcast<i32>((bitcast<u32>(x_2109) & bitcast<u32>(x_2114)));
    let x_2118 : i32 = u_xlati43;
    if ((x_2118 != 0i)) {
      let x_2128 : u32 = u_xlatu60;
      let x_2131 : f32 = x_2127.x_AdditionalLightsLightTypes[bitcast<i32>(x_2128)].el;
      u_xlati43 = i32(x_2131);
      let x_2133 : i32 = u_xlati43;
      u_xlati62 = select(1i, 0i, (x_2133 != 0i));
      let x_2137 : u32 = u_xlatu60;
      u_xlati63 = (bitcast<i32>(x_2137) << bitcast<u32>(2i));
      let x_2140 : i32 = u_xlati62;
      if ((x_2140 != 0i)) {
        let x_2144 : vec3<f32> = vs_TEXCOORD1;
        let x_2146 : i32 = u_xlati63;
        let x_2149 : i32 = u_xlati63;
        let x_2153 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2146 + 1i) / 4i)][((x_2149 + 1i) % 4i)];
        let x_2155 : vec3<f32> = (vec3<f32>(x_2144.y, x_2144.y, x_2144.y) * vec3<f32>(x_2153.x, x_2153.y, x_2153.w));
        let x_2156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
        let x_2158 : i32 = u_xlati63;
        let x_2160 : i32 = u_xlati63;
        let x_2163 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[(x_2158 / 4i)][(x_2160 % 4i)];
        let x_2165 : vec3<f32> = vs_TEXCOORD1;
        let x_2168 : vec4<f32> = u_xlat8;
        let x_2170 : vec3<f32> = ((vec3<f32>(x_2163.x, x_2163.y, x_2163.w) * vec3<f32>(x_2165.x, x_2165.x, x_2165.x)) + vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
        let x_2171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
        let x_2173 : i32 = u_xlati63;
        let x_2176 : i32 = u_xlati63;
        let x_2180 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2173 + 2i) / 4i)][((x_2176 + 2i) % 4i)];
        let x_2182 : vec3<f32> = vs_TEXCOORD1;
        let x_2185 : vec4<f32> = u_xlat8;
        let x_2187 : vec3<f32> = ((vec3<f32>(x_2180.x, x_2180.y, x_2180.w) * vec3<f32>(x_2182.z, x_2182.z, x_2182.z)) + vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
        let x_2188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
        let x_2190 : vec4<f32> = u_xlat8;
        let x_2192 : i32 = u_xlati63;
        let x_2195 : i32 = u_xlati63;
        let x_2199 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2192 + 3i) / 4i)][((x_2195 + 3i) % 4i)];
        let x_2201 : vec3<f32> = (vec3<f32>(x_2190.x, x_2190.y, x_2190.z) + vec3<f32>(x_2199.x, x_2199.y, x_2199.w));
        let x_2202 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
        let x_2204 : vec4<f32> = u_xlat8;
        let x_2206 : vec4<f32> = u_xlat8;
        let x_2208 : vec2<f32> = (vec2<f32>(x_2204.x, x_2204.y) / vec2<f32>(x_2206.z, x_2206.z));
        let x_2209 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2208.x, x_2208.y, x_2209.z, x_2209.w);
        let x_2211 : vec4<f32> = u_xlat8;
        let x_2214 : vec2<f32> = ((vec2<f32>(x_2211.x, x_2211.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2215 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        let x_2217 : vec4<f32> = u_xlat8;
        let x_2221 : vec2<f32> = clamp(vec2<f32>(x_2217.x, x_2217.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
        let x_2224 : u32 = u_xlatu60;
        let x_2227 : vec4<f32> = x_2127.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2224)];
        let x_2229 : vec4<f32> = u_xlat8;
        let x_2232 : u32 = u_xlatu60;
        let x_2235 : vec4<f32> = x_2127.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2232)];
        let x_2237 : vec2<f32> = ((vec2<f32>(x_2227.x, x_2227.y) * vec2<f32>(x_2229.x, x_2229.y)) + vec2<f32>(x_2235.z, x_2235.w));
        let x_2238 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2237.x, x_2237.y, x_2238.z, x_2238.w);
      } else {
        let x_2242 : i32 = u_xlati43;
        u_xlatb43 = (x_2242 == 1i);
        let x_2244 : bool = u_xlatb43;
        u_xlati43 = select(0i, 1i, x_2244);
        let x_2246 : i32 = u_xlati43;
        if ((x_2246 != 0i)) {
          let x_2250 : vec3<f32> = vs_TEXCOORD1;
          let x_2252 : i32 = u_xlati63;
          let x_2255 : i32 = u_xlati63;
          let x_2259 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2252 + 1i) / 4i)][((x_2255 + 1i) % 4i)];
          u_xlat43 = (vec2<f32>(x_2250.y, x_2250.y) * vec2<f32>(x_2259.x, x_2259.y));
          let x_2262 : i32 = u_xlati63;
          let x_2264 : i32 = u_xlati63;
          let x_2267 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[(x_2262 / 4i)][(x_2264 % 4i)];
          let x_2269 : vec3<f32> = vs_TEXCOORD1;
          let x_2272 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2269.x, x_2269.x)) + x_2272);
          let x_2274 : i32 = u_xlati63;
          let x_2277 : i32 = u_xlati63;
          let x_2281 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2274 + 2i) / 4i)][((x_2277 + 2i) % 4i)];
          let x_2283 : vec3<f32> = vs_TEXCOORD1;
          let x_2286 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2281.x, x_2281.y) * vec2<f32>(x_2283.z, x_2283.z)) + x_2286);
          let x_2288 : vec2<f32> = u_xlat43;
          let x_2289 : i32 = u_xlati63;
          let x_2292 : i32 = u_xlati63;
          let x_2296 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2289 + 3i) / 4i)][((x_2292 + 3i) % 4i)];
          u_xlat43 = (x_2288 + vec2<f32>(x_2296.x, x_2296.y));
          let x_2299 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2299 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2302 : vec2<f32> = u_xlat43;
          u_xlat43 = fract(x_2302);
          let x_2304 : u32 = u_xlatu60;
          let x_2307 : vec4<f32> = x_2127.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2304)];
          let x_2309 : vec2<f32> = u_xlat43;
          let x_2311 : u32 = u_xlatu60;
          let x_2314 : vec4<f32> = x_2127.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2311)];
          let x_2316 : vec2<f32> = ((vec2<f32>(x_2307.x, x_2307.y) * x_2309) + vec2<f32>(x_2314.z, x_2314.w));
          let x_2317 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
        } else {
          let x_2320 : vec3<f32> = vs_TEXCOORD1;
          let x_2322 : i32 = u_xlati63;
          let x_2325 : i32 = u_xlati63;
          let x_2329 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2322 + 1i) / 4i)][((x_2325 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2320.y, x_2320.y, x_2320.y, x_2320.y) * x_2329);
          let x_2331 : i32 = u_xlati63;
          let x_2333 : i32 = u_xlati63;
          let x_2336 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[(x_2331 / 4i)][(x_2333 % 4i)];
          let x_2337 : vec3<f32> = vs_TEXCOORD1;
          let x_2340 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2336 * vec4<f32>(x_2337.x, x_2337.x, x_2337.x, x_2337.x)) + x_2340);
          let x_2342 : i32 = u_xlati63;
          let x_2345 : i32 = u_xlati63;
          let x_2349 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2342 + 2i) / 4i)][((x_2345 + 2i) % 4i)];
          let x_2350 : vec3<f32> = vs_TEXCOORD1;
          let x_2353 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2349 * vec4<f32>(x_2350.z, x_2350.z, x_2350.z, x_2350.z)) + x_2353);
          let x_2355 : vec4<f32> = u_xlat9;
          let x_2356 : i32 = u_xlati63;
          let x_2359 : i32 = u_xlati63;
          let x_2363 : vec4<f32> = x_2127.x_AdditionalLightsWorldToLights[((x_2356 + 3i) / 4i)][((x_2359 + 3i) % 4i)];
          u_xlat9 = (x_2355 + x_2363);
          let x_2365 : vec4<f32> = u_xlat9;
          let x_2367 : vec4<f32> = u_xlat9;
          let x_2369 : vec3<f32> = (vec3<f32>(x_2365.x, x_2365.y, x_2365.z) / vec3<f32>(x_2367.w, x_2367.w, x_2367.w));
          let x_2370 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
          let x_2372 : vec4<f32> = u_xlat9;
          let x_2374 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(vec3<f32>(x_2372.x, x_2372.y, x_2372.z), vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
          let x_2379 : f32 = u_xlat43.x;
          u_xlat43.x = inverseSqrt(x_2379);
          let x_2382 : vec2<f32> = u_xlat43;
          let x_2384 : vec4<f32> = u_xlat9;
          let x_2386 : vec3<f32> = (vec3<f32>(x_2382.x, x_2382.x, x_2382.x) * vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
          let x_2387 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
          let x_2389 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(abs(vec3<f32>(x_2389.x, x_2389.y, x_2389.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2396 : f32 = u_xlat43.x;
          u_xlat43.x = max(x_2396, 0.000001f);
          let x_2401 : f32 = u_xlat43.x;
          u_xlat43.x = (1.0f / x_2401);
          let x_2404 : vec2<f32> = u_xlat43;
          let x_2406 : vec4<f32> = u_xlat9;
          let x_2408 : vec3<f32> = (vec3<f32>(x_2404.x, x_2404.x, x_2404.x) * vec3<f32>(x_2406.z, x_2406.x, x_2406.y));
          let x_2409 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
          let x_2412 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2412);
          let x_2416 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2416, 0.0f, 1.0f);
          let x_2420 : vec4<f32> = u_xlat10;
          let x_2423 : vec4<bool> = (vec4<f32>(x_2420.y, x_2420.z, x_2420.y, x_2420.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb46 = vec2<bool>(x_2423.x, x_2423.y);
          let x_2426 : bool = u_xlatb46.x;
          if (x_2426) {
            let x_2431 : f32 = u_xlat10.x;
            x_2427 = x_2431;
          } else {
            let x_2434 : f32 = u_xlat10.x;
            x_2427 = -(x_2434);
          }
          let x_2436 : f32 = x_2427;
          u_xlat46.x = x_2436;
          let x_2439 : bool = u_xlatb46.y;
          if (x_2439) {
            let x_2444 : f32 = u_xlat10.x;
            x_2440 = x_2444;
          } else {
            let x_2447 : f32 = u_xlat10.x;
            x_2440 = -(x_2447);
          }
          let x_2449 : f32 = x_2440;
          u_xlat46.y = x_2449;
          let x_2451 : vec4<f32> = u_xlat9;
          let x_2453 : vec2<f32> = u_xlat43;
          let x_2456 : vec2<f32> = u_xlat46;
          u_xlat43 = ((vec2<f32>(x_2451.x, x_2451.y) * vec2<f32>(x_2453.x, x_2453.x)) + x_2456);
          let x_2458 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2458 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2461 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2461, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2465 : u32 = u_xlatu60;
          let x_2468 : vec4<f32> = x_2127.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2465)];
          let x_2470 : vec2<f32> = u_xlat43;
          let x_2472 : u32 = u_xlatu60;
          let x_2475 : vec4<f32> = x_2127.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2472)];
          let x_2477 : vec2<f32> = ((vec2<f32>(x_2468.x, x_2468.y) * x_2470) + vec2<f32>(x_2475.z, x_2475.w));
          let x_2478 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
        }
      }
      let x_2485 : vec4<f32> = u_xlat8;
      let x_2488 : f32 = x_44.x_GlobalMipBias.x;
      let x_2489 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2485.x, x_2485.y), x_2488);
      u_xlat8 = x_2489;
      let x_2491 : bool = u_xlatb5.y;
      if (x_2491) {
        let x_2496 : f32 = u_xlat8.w;
        x_2492 = x_2496;
      } else {
        let x_2499 : f32 = u_xlat8.x;
        x_2492 = x_2499;
      }
      let x_2500 : f32 = x_2492;
      u_xlat43.x = x_2500;
      let x_2503 : bool = u_xlatb5.x;
      if (x_2503) {
        let x_2507 : vec4<f32> = u_xlat8;
        x_2504 = vec3<f32>(x_2507.x, x_2507.y, x_2507.z);
      } else {
        let x_2510 : vec2<f32> = u_xlat43;
        x_2504 = vec3<f32>(x_2510.x, x_2510.x, x_2510.x);
      }
      let x_2512 : vec3<f32> = x_2504;
      let x_2513 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2519 : vec4<f32> = u_xlat8;
    let x_2521 : u32 = u_xlatu60;
    let x_2524 : vec4<f32> = x_2007.x_AdditionalLightsColor[bitcast<i32>(x_2521)];
    let x_2526 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2527 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
    let x_2529 : vec4<f32> = u_xlat1;
    let x_2531 : vec4<f32> = u_xlat8;
    let x_2533 : vec3<f32> = (vec3<f32>(x_2529.x, x_2529.x, x_2529.x) * vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
    let x_2534 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2533.x, x_2533.y, x_2533.z, x_2534.w);
    let x_2536 : f32 = u_xlat61;
    let x_2538 : vec4<f32> = u_xlat8;
    let x_2540 : vec3<f32> = (vec3<f32>(x_2536, x_2536, x_2536) * vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2541 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
    let x_2543 : vec3<f32> = u_xlat2;
    let x_2544 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(x_2543, vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
    let x_2547 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2547, 0.0f, 1.0f);
    let x_2549 : f32 = u_xlat60;
    let x_2551 : vec4<f32> = u_xlat8;
    let x_2553 : vec3<f32> = (vec3<f32>(x_2549, x_2549, x_2549) * vec3<f32>(x_2551.x, x_2551.y, x_2551.z));
    let x_2554 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2554.w);
    let x_2556 : vec4<f32> = u_xlat7;
    let x_2558 : vec4<f32> = u_xlat1;
    let x_2561 : vec4<f32> = u_xlat6;
    let x_2563 : vec3<f32> = ((vec3<f32>(x_2556.x, x_2556.y, x_2556.z) * vec3<f32>(x_2558.y, x_2558.z, x_2558.w)) + vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
    let x_2564 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);

    continuing {
      let x_2566 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2566 + bitcast<u32>(1i));
    }
  }
  let x_2568 : vec4<f32> = u_xlat4;
  let x_2570 : vec4<f32> = u_xlat1;
  let x_2573 : vec4<f32> = u_xlat3;
  let x_2575 : vec3<f32> = ((vec3<f32>(x_2568.x, x_2568.y, x_2568.z) * vec3<f32>(x_2570.y, x_2570.z, x_2570.w)) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2578 : vec4<f32> = u_xlat6;
  let x_2580 : vec4<f32> = u_xlat1;
  let x_2582 : vec3<f32> = (vec3<f32>(x_2578.x, x_2578.y, x_2578.z) + vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
  let x_2585 : f32 = u_xlat19;
  let x_2586 : f32 = u_xlat19;
  u_xlat19 = (x_2585 * -(x_2586));
  let x_2589 : f32 = u_xlat19;
  u_xlat19 = exp2(x_2589);
  let x_2591 : vec4<f32> = u_xlat1;
  let x_2595 : vec4<f32> = x_44.unity_FogColor;
  let x_2598 : vec3<f32> = (vec3<f32>(x_2591.x, x_2591.y, x_2591.z) + -(vec3<f32>(x_2595.x, x_2595.y, x_2595.z)));
  let x_2599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
  let x_2603 : f32 = u_xlat19;
  let x_2605 : vec4<f32> = u_xlat1;
  let x_2609 : vec4<f32> = x_44.unity_FogColor;
  let x_2611 : vec3<f32> = ((vec3<f32>(x_2603, x_2603, x_2603) * vec3<f32>(x_2605.x, x_2605.y, x_2605.z)) + vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
  let x_2612 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
  let x_2615 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2615 == 1.0f);
  let x_2617 : bool = u_xlatb19;
  let x_2618 : bool = u_xlatb38;
  u_xlatb19 = (x_2617 | x_2618);
  let x_2620 : bool = u_xlatb19;
  if (x_2620) {
    let x_2625 : f32 = u_xlat0.x;
    x_2621 = x_2625;
  } else {
    x_2621 = 1.0f;
  }
  let x_2627 : f32 = x_2621;
  SV_Target0.w = x_2627;
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

