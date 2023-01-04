struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_71 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_349 : MainLightShadows;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2130 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2625 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2753 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat63 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlatb45 : bool;
  var x_193 : f32;
  var u_xlatb24 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec4<f32>;
  var x_268 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat64 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat22 : vec2<f32>;
  var u_xlat68 : f32;
  var u_xlat69 : f32;
  var u_xlatb68 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb26 : vec2<bool>;
  var u_xlatb47 : bool;
  var x_2082 : f32;
  var u_xlat26 : vec3<f32>;
  var u_xlat47 : f32;
  var x_2212 : f32;
  var x_2223 : vec3<f32>;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat71 : f32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var u_xlati71 : i32;
  var u_xlati73 : i32;
  var u_xlatb71 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3046 : f32;
  var x_3059 : f32;
  var x_3111 : f32;
  var x_3122 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_3318 : f32;
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
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  let x_63 : vec2<f32> = vec2<f32>(x_62.x, x_62.w);
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_63.x, x_63.y, x_64.z);
  let x_67 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_71.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_67.w, x_67.x, x_67.y, x_67.z) * vec4<f32>(x_75.w, x_75.x, x_75.y, x_75.z));
  let x_84 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : f32 = x_44.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_84, x_86);
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat3.z;
  u_xlat3.x = (x_91 * x_94);
  let x_99 : vec3<f32> = u_xlat3;
  u_xlat43 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec2<f32> = u_xlat43;
  let x_109 : vec2<f32> = u_xlat43;
  u_xlat63 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat63;
  u_xlat63 = min(x_111, 1.0f);
  let x_113 : f32 = u_xlat63;
  u_xlat63 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_116);
  let x_118 : f32 = u_xlat63;
  u_xlat63 = max(x_118, 1.00000002e-16f);
  let x_121 : vec2<f32> = u_xlat43;
  let x_124 : f32 = x_71.x_BumpScale;
  let x_126 : f32 = x_71.x_BumpScale;
  let x_127 : vec2<f32> = vec2<f32>(x_124, x_126);
  u_xlat43 = (x_121 * vec2<f32>(x_127.x, x_127.y));
  let x_137 : vec2<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_137, x_139);
  u_xlat3.x = x_140.y;
  let x_147 : f32 = x_71.x_OcclusionStrength;
  u_xlat24.x = (-(x_147) + 1.0f);
  let x_152 : f32 = u_xlat3.x;
  let x_154 : f32 = x_71.x_OcclusionStrength;
  let x_157 : f32 = u_xlat24.x;
  u_xlat3.x = ((x_152 * x_154) + x_157);
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_44.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat24;
  u_xlat24 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_174 : vec3<f32> = u_xlat24;
  let x_177 : f32 = x_44.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_174.x, x_174.y), x_177);
  u_xlat24.x = x_178.w;
  let x_189 : f32 = x_187.unity_LODFade.x;
  u_xlatb45 = (x_189 >= 0.0f);
  let x_192 : bool = u_xlatb45;
  if (x_192) {
    let x_197 : f32 = u_xlat24.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat24.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat24.x = x_204;
  let x_207 : f32 = u_xlat24.x;
  let x_210 : f32 = x_187.unity_LODFade.x;
  u_xlat24.x = (-(x_207) + x_210);
  let x_215 : f32 = u_xlat24.x;
  u_xlatb24 = (x_215 < 0.0f);
  let x_217 : bool = u_xlatb24;
  if (((select(0i, 1i, x_217) * -1i) != 0i)) {
    discard;
  }
  let x_227 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb24 = (x_227 == 0.0f);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_238 : vec3<f32> = (-(x_232) + x_237);
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_247);
  let x_249 : f32 = u_xlat45;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_259 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_265 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_265;
  let x_267 : bool = u_xlatb24;
  if (x_267) {
    let x_271 : vec4<f32> = u_xlat4;
    x_268 = vec3<f32>(x_271.x, x_271.y, x_271.z);
  } else {
    let x_274 : vec4<f32> = u_xlat5;
    x_268 = vec3<f32>(x_274.x, x_274.y, x_274.z);
  }
  let x_276 : vec3<f32> = x_268;
  u_xlat24 = x_276;
  let x_278 : vec3<f32> = vs_TEXCOORD2;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_283 : vec3<f32> = (vec3<f32>(x_278.z, x_278.x, x_278.y) * vec3<f32>(x_281.y, x_281.z, x_281.x));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = vs_TEXCOORD2;
  let x_288 : vec4<f32> = vs_TEXCOORD3;
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_286.y, x_286.z, x_286.x) * vec3<f32>(x_288.z, x_288.x, x_288.y)) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.w, x_299.w, x_299.w));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec2<f32> = u_xlat43;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec2<f32> = u_xlat43;
  let x_313 : vec4<f32> = vs_TEXCOORD3;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : f32 = u_xlat63;
  let x_323 : vec3<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec3<f32> = ((vec3<f32>(x_321, x_321, x_321) * x_323) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat63;
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec3<f32> = vs_TEXCOORD1;
  let x_351 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres0;
  let x_354 : vec3<f32> = (x_344 + -(vec3<f32>(x_351.x, x_351.y, x_351.z)));
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres1;
  let x_363 : vec3<f32> = (x_358 + -(vec3<f32>(x_360.x, x_360.y, x_360.z)));
  let x_364 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres2;
  let x_373 : vec3<f32> = (x_367 + -(vec3<f32>(x_370.x, x_370.y, x_370.z)));
  let x_374 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres3;
  let x_383 : vec3<f32> = (x_377 + -(vec3<f32>(x_380.x, x_380.y, x_380.z)));
  let x_384 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : vec4<f32> = u_xlat7;
  let x_400 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_404 : vec4<f32> = u_xlat8;
  let x_406 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_413 : vec4<f32> = u_xlat5;
  let x_416 : vec4<f32> = x_349.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_413 < x_416);
  let x_419 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_419);
  let x_423 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_423);
  let x_427 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_427);
  let x_431 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_431);
  let x_435 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_435);
  let x_440 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_440);
  let x_444 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_444);
  let x_447 : vec4<f32> = u_xlat5;
  let x_449 : vec4<f32> = u_xlat6;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(x_449.y, x_449.z, x_449.w));
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat5;
  let x_457 : vec3<f32> = max(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_458 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_457.z);
  let x_460 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(x_460, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_465 : f32 = u_xlat63;
  u_xlat63 = (-(x_465) + 4.0f);
  let x_470 : f32 = u_xlat63;
  u_xlatu63 = u32(x_470);
  let x_474 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_474) << bitcast<u32>(2i));
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  let x_479 : i32 = u_xlati63;
  let x_482 : i32 = u_xlati63;
  let x_486 : vec4<f32> = x_349.x_MainLightWorldToShadow[((x_479 + 1i) / 4i)][((x_482 + 1i) % 4i)];
  let x_488 : vec3<f32> = (vec3<f32>(x_477.y, x_477.y, x_477.y) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : i32 = u_xlati63;
  let x_493 : i32 = u_xlati63;
  let x_496 : vec4<f32> = x_349.x_MainLightWorldToShadow[(x_491 / 4i)][(x_493 % 4i)];
  let x_498 : vec3<f32> = vs_TEXCOORD1;
  let x_501 : vec4<f32> = u_xlat5;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498.x, x_498.x, x_498.x)) + vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : i32 = u_xlati63;
  let x_509 : i32 = u_xlati63;
  let x_513 : vec4<f32> = x_349.x_MainLightWorldToShadow[((x_506 + 2i) / 4i)][((x_509 + 2i) % 4i)];
  let x_515 : vec3<f32> = vs_TEXCOORD1;
  let x_518 : vec4<f32> = u_xlat5;
  let x_520 : vec3<f32> = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515.z, x_515.z, x_515.z)) + vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat5;
  let x_525 : i32 = u_xlati63;
  let x_528 : i32 = u_xlati63;
  let x_532 : vec4<f32> = x_349.x_MainLightWorldToShadow[((x_525 + 3i) / 4i)][((x_528 + 3i) % 4i)];
  let x_534 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = vs_TEXCOORD1.y;
  let x_540 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_538 * x_540);
  let x_543 : f32 = x_44.unity_MatrixV[0i].z;
  let x_545 : f32 = vs_TEXCOORD1.x;
  let x_547 : f32 = u_xlat63;
  u_xlat63 = ((x_543 * x_545) + x_547);
  let x_550 : f32 = x_44.unity_MatrixV[2i].z;
  let x_552 : f32 = vs_TEXCOORD1.z;
  let x_554 : f32 = u_xlat63;
  u_xlat63 = ((x_550 * x_552) + x_554);
  let x_556 : f32 = u_xlat63;
  let x_558 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_556 + x_558);
  let x_560 : f32 = u_xlat63;
  let x_564 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_560) + -(x_564));
  let x_567 : f32 = u_xlat63;
  u_xlat63 = max(x_567, 0.0f);
  let x_569 : f32 = u_xlat63;
  let x_571 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_569 * x_571);
  u_xlat4.w = 1.0f;
  let x_576 : vec4<f32> = x_187.unity_SHAr;
  let x_577 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_576, x_577);
  let x_582 : vec4<f32> = x_187.unity_SHAg;
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_582, x_583);
  let x_588 : vec4<f32> = x_187.unity_SHAb;
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_588, x_589);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_592.y, x_592.z, x_592.z, x_592.x) * vec4<f32>(x_594.x, x_594.y, x_594.z, x_594.z));
  let x_599 : vec4<f32> = x_187.unity_SHBr;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_599, x_600);
  let x_605 : vec4<f32> = x_187.unity_SHBg;
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_605, x_606);
  let x_611 : vec4<f32> = x_187.unity_SHBb;
  let x_612 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_611, x_612);
  let x_616 : f32 = u_xlat4.y;
  let x_618 : f32 = u_xlat4.y;
  u_xlat43.x = (x_616 * x_618);
  let x_622 : f32 = u_xlat4.x;
  let x_624 : f32 = u_xlat4.x;
  let x_627 : f32 = u_xlat43.x;
  u_xlat43.x = ((x_622 * x_624) + -(x_627));
  let x_633 : vec4<f32> = x_187.unity_SHC;
  let x_635 : vec2<f32> = u_xlat43;
  let x_638 : vec4<f32> = u_xlat8;
  let x_640 : vec3<f32> = ((vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_635.x, x_635.x, x_635.x)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat6;
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = max(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_657 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_658 : vec2<f32> = vec2<f32>(x_657.x, x_657.y);
  u_xlat43 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_658.x, x_658.y));
  let x_663 : vec2<f32> = u_xlat43;
  let x_664 : vec4<f32> = hlslcc_FragCoord;
  let x_666 : vec2<f32> = (x_663 * vec2<f32>(x_664.x, x_664.y));
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
  let x_670 : f32 = u_xlat7.y;
  let x_673 : f32 = x_44.x_ScaleBiasRt.x;
  let x_676 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat43.x = ((x_670 * x_673) + x_676);
  let x_680 : f32 = u_xlat43.x;
  u_xlat7.z = (-(x_680) + 1.0f);
  let x_685 : f32 = u_xlat1.x;
  u_xlat43.x = ((-(x_685) * 0.959999979f) + 0.959999979f);
  let x_693 : f32 = u_xlat43.x;
  u_xlat64 = (-(x_693) + 1.0f);
  let x_697 : vec2<f32> = u_xlat43;
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat23 = (vec3<f32>(x_697.x, x_697.x, x_697.x) * vec3<f32>(x_699.y, x_699.z, x_699.w));
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : vec4<f32> = x_71.x_BaseColor;
  let x_710 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_705.x, x_705.y, x_705.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat0;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat1.y;
  let x_727 : f32 = x_71.x_Smoothness;
  u_xlat1.x = ((-(x_724) * x_727) + 1.0f);
  let x_732 : f32 = u_xlat1.x;
  let x_734 : f32 = u_xlat1.x;
  u_xlat43.x = (x_732 * x_734);
  let x_738 : f32 = u_xlat43.x;
  u_xlat43.x = max(x_738, 0.0078125f);
  let x_744 : f32 = u_xlat43.x;
  let x_746 : f32 = u_xlat43.x;
  u_xlat67 = (x_744 * x_746);
  let x_750 : f32 = u_xlat1.y;
  let x_752 : f32 = x_71.x_Smoothness;
  let x_754 : f32 = u_xlat64;
  u_xlat22.x = ((x_750 * x_752) + x_754);
  let x_758 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_758, 0.0f, 1.0f);
  let x_762 : f32 = u_xlat43.x;
  u_xlat64 = ((x_762 * 4.0f) + 2.0f);
  let x_771 : vec4<f32> = u_xlat7;
  let x_774 : f32 = x_44.x_GlobalMipBias.x;
  let x_775 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_771.x, x_771.z), x_774);
  u_xlat68 = x_775.x;
  let x_778 : f32 = u_xlat68;
  u_xlat69 = (x_778 + -1.0f);
  let x_781 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_782 : f32 = u_xlat69;
  u_xlat69 = ((x_781 * x_782) + 1.0f);
  let x_786 : f32 = u_xlat3.x;
  let x_787 : f32 = u_xlat68;
  u_xlat3.x = min(x_786, x_787);
  let x_792 : f32 = x_349.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_792);
  let x_794 : bool = u_xlatb68;
  if (x_794) {
    let x_798 : f32 = x_349.x_MainLightShadowParams.y;
    u_xlatb68 = (x_798 == 1.0f);
    let x_800 : bool = u_xlatb68;
    if (x_800) {
      let x_803 : vec4<f32> = u_xlat5;
      let x_806 : vec4<f32> = x_349.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) + x_806);
      let x_809 : vec4<f32> = u_xlat7;
      let x_810 : vec2<f32> = vec2<f32>(x_809.x, x_809.y);
      let x_812 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_810.x, x_810.y, x_812);
      let x_824 : vec3<f32> = txVec0;
      let x_826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_824.xy, x_824.z);
      u_xlat8.x = x_826;
      let x_829 : vec4<f32> = u_xlat7;
      let x_830 : vec2<f32> = vec2<f32>(x_829.z, x_829.w);
      let x_832 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_830.x, x_830.y, x_832);
      let x_839 : vec3<f32> = txVec1;
      let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_839.xy, x_839.z);
      u_xlat8.y = x_841;
      let x_843 : vec4<f32> = u_xlat5;
      let x_846 : vec4<f32> = x_349.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_843.x, x_843.y, x_843.x, x_843.y) + x_846);
      let x_849 : vec4<f32> = u_xlat7;
      let x_850 : vec2<f32> = vec2<f32>(x_849.x, x_849.y);
      let x_852 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_850.x, x_850.y, x_852);
      let x_859 : vec3<f32> = txVec2;
      let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_859.xy, x_859.z);
      u_xlat8.z = x_861;
      let x_864 : vec4<f32> = u_xlat7;
      let x_865 : vec2<f32> = vec2<f32>(x_864.z, x_864.w);
      let x_867 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_865.x, x_865.y, x_867);
      let x_874 : vec3<f32> = txVec3;
      let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
      u_xlat8.w = x_876;
      let x_878 : vec4<f32> = u_xlat8;
      u_xlat68 = dot(x_878, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_887 : f32 = x_349.x_MainLightShadowParams.y;
      u_xlatb7.x = (x_887 == 2.0f);
      let x_891 : bool = u_xlatb7.x;
      if (x_891) {
        let x_894 : vec4<f32> = u_xlat5;
        let x_897 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_902 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat7;
        let x_907 : vec2<f32> = floor(vec2<f32>(x_905.x, x_905.y));
        let x_908 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_911 : vec4<f32> = u_xlat5;
        let x_914 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_914.z, x_914.w)) + -(vec2<f32>(x_917.x, x_917.y)));
        let x_921 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_921.x, x_921.x, x_921.y, x_921.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_926 : vec4<f32> = u_xlat8;
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_926.x, x_926.x, x_926.z, x_926.z) * vec4<f32>(x_928.x, x_928.x, x_928.z, x_928.z));
        let x_931 : vec4<f32> = u_xlat9;
        let x_935 : vec2<f32> = (vec2<f32>(x_931.y, x_931.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_936 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_935.x, x_936.y, x_935.y, x_936.w);
        let x_938 : vec4<f32> = u_xlat9;
        let x_941 : vec2<f32> = u_xlat49;
        let x_943 : vec2<f32> = ((vec2<f32>(x_938.x, x_938.z) * vec2<f32>(0.5f, 0.5f)) + -(x_941));
        let x_944 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_947 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_947) + vec2<f32>(1.0f, 1.0f));
        let x_951 : vec2<f32> = u_xlat49;
        let x_953 : vec2<f32> = min(x_951, vec2<f32>(0.0f, 0.0f));
        let x_954 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat10;
        let x_959 : vec4<f32> = u_xlat10;
        let x_962 : vec2<f32> = u_xlat51;
        let x_963 : vec2<f32> = ((-(vec2<f32>(x_956.x, x_956.y)) * vec2<f32>(x_959.x, x_959.y)) + x_962);
        let x_964 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_966 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_966, vec2<f32>(0.0f, 0.0f));
        let x_968 : vec2<f32> = u_xlat49;
        let x_970 : vec2<f32> = u_xlat49;
        let x_972 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_968) * x_970) + vec2<f32>(x_972.y, x_972.w));
        let x_975 : vec4<f32> = u_xlat10;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.y) + vec2<f32>(1.0f, 1.0f));
        let x_978 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_980 + vec2<f32>(1.0f, 1.0f));
        let x_983 : vec4<f32> = u_xlat9;
        let x_987 : vec2<f32> = (vec2<f32>(x_983.x, x_983.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_988 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec2<f32> = u_xlat51;
        let x_991 : vec2<f32> = (x_990 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat10;
        let x_996 : vec2<f32> = (vec2<f32>(x_994.x, x_994.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_997 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : vec2<f32> = u_xlat49;
        let x_1001 : vec2<f32> = (x_1000 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1002 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1004.y, x_1004.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1008 : f32 = u_xlat10.x;
        u_xlat11.z = x_1008;
        let x_1011 : f32 = u_xlat49.x;
        u_xlat11.w = x_1011;
        let x_1014 : f32 = u_xlat12.x;
        u_xlat9.z = x_1014;
        let x_1017 : f32 = u_xlat8.x;
        u_xlat9.w = x_1017;
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1022 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1020.z, x_1020.w, x_1020.x, x_1020.z) + vec4<f32>(x_1022.z, x_1022.w, x_1022.x, x_1022.z));
        let x_1026 : f32 = u_xlat11.y;
        u_xlat10.z = x_1026;
        let x_1029 : f32 = u_xlat49.y;
        u_xlat10.w = x_1029;
        let x_1032 : f32 = u_xlat9.y;
        u_xlat12.z = x_1032;
        let x_1035 : f32 = u_xlat8.z;
        u_xlat12.w = x_1035;
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1039 : vec4<f32> = u_xlat12;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1037.z, x_1037.y, x_1037.w) + vec3<f32>(x_1039.z, x_1039.y, x_1039.w));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1046 : vec4<f32> = u_xlat13;
        let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.z, x_1044.w) / vec3<f32>(x_1046.z, x_1046.w, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1057 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat12;
        let x_1062 : vec4<f32> = u_xlat8;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1060.z, x_1060.y, x_1060.w) / vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1070 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1075 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1072.y, x_1072.x, x_1072.z) * vec3<f32>(x_1075.x, x_1075.x, x_1075.x));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat10;
        let x_1083 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1085 : vec3<f32> = (vec3<f32>(x_1080.x, x_1080.y, x_1080.z) * vec3<f32>(x_1083.y, x_1083.y, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
        let x_1089 : f32 = u_xlat10.x;
        u_xlat9.w = x_1089;
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y) * vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y)) + vec4<f32>(x_1097.y, x_1097.w, x_1097.x, x_1097.w));
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1103 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.x, x_1103.y)) + vec2<f32>(x_1106.z, x_1106.w));
        let x_1110 : f32 = u_xlat9.y;
        u_xlat10.w = x_1110;
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.y, x_1112.z);
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1113.x, x_1114.z, x_1113.y);
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y) * vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y)) + vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1122.y));
        let x_1125 : vec4<f32> = u_xlat7;
        let x_1128 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.w, x_1131.y, x_1131.w, x_1131.z));
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1137 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y) * vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y)) + vec4<f32>(x_1140.x, x_1140.w, x_1140.z, x_1140.w));
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1146 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1144.x, x_1144.x, x_1144.x, x_1144.y) * vec4<f32>(x_1146.z, x_1146.w, x_1146.y, x_1146.z));
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1150.y, x_1150.y, x_1150.z, x_1150.z) * x_1152);
        let x_1155 : f32 = u_xlat8.z;
        let x_1157 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1155 * x_1157);
        let x_1161 : vec4<f32> = u_xlat11;
        let x_1162 : vec2<f32> = vec2<f32>(x_1161.x, x_1161.y);
        let x_1164 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1162.x, x_1162.y, x_1164);
        let x_1172 : vec3<f32> = txVec4;
        let x_1174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1172.xy, x_1172.z);
        u_xlat28 = x_1174;
        let x_1176 : vec4<f32> = u_xlat11;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.z, x_1176.w);
        let x_1179 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec5;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1186.xy, x_1186.z);
        u_xlat8.x = x_1188;
        let x_1191 : f32 = u_xlat8.x;
        let x_1193 : f32 = u_xlat14.y;
        u_xlat8.x = (x_1191 * x_1193);
        let x_1197 : f32 = u_xlat14.x;
        let x_1198 : f32 = u_xlat28;
        let x_1201 : f32 = u_xlat8.x;
        u_xlat28 = ((x_1197 * x_1198) + x_1201);
        let x_1204 : vec2<f32> = u_xlat49;
        let x_1206 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
        let x_1213 : vec3<f32> = txVec6;
        let x_1215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1213.xy, x_1213.z);
        u_xlat49.x = x_1215;
        let x_1218 : f32 = u_xlat14.z;
        let x_1220 : f32 = u_xlat49.x;
        let x_1222 : f32 = u_xlat28;
        u_xlat28 = ((x_1218 * x_1220) + x_1222);
        let x_1225 : vec4<f32> = u_xlat10;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
        let x_1228 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1235 : vec3<f32> = txVec7;
        let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1235.xy, x_1235.z);
        u_xlat49.x = x_1237;
        let x_1240 : f32 = u_xlat14.w;
        let x_1242 : f32 = u_xlat49.x;
        let x_1244 : f32 = u_xlat28;
        u_xlat28 = ((x_1240 * x_1242) + x_1244);
        let x_1247 : vec4<f32> = u_xlat12;
        let x_1248 : vec2<f32> = vec2<f32>(x_1247.x, x_1247.y);
        let x_1250 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1248.x, x_1248.y, x_1250);
        let x_1257 : vec3<f32> = txVec8;
        let x_1259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1257.xy, x_1257.z);
        u_xlat49.x = x_1259;
        let x_1262 : f32 = u_xlat15.x;
        let x_1264 : f32 = u_xlat49.x;
        let x_1266 : f32 = u_xlat28;
        u_xlat28 = ((x_1262 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat12;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.z, x_1269.w);
        let x_1272 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec9;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1279.xy, x_1279.z);
        u_xlat49.x = x_1281;
        let x_1284 : f32 = u_xlat15.y;
        let x_1286 : f32 = u_xlat49.x;
        let x_1288 : f32 = u_xlat28;
        u_xlat28 = ((x_1284 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat10;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.z, x_1291.w);
        let x_1294 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec10;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1301.xy, x_1301.z);
        u_xlat49.x = x_1303;
        let x_1306 : f32 = u_xlat15.z;
        let x_1308 : f32 = u_xlat49.x;
        let x_1310 : f32 = u_xlat28;
        u_xlat28 = ((x_1306 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec11;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat49.x = x_1325;
        let x_1328 : f32 = u_xlat15.w;
        let x_1330 : f32 = u_xlat49.x;
        let x_1332 : f32 = u_xlat28;
        u_xlat28 = ((x_1328 * x_1330) + x_1332);
        let x_1335 : vec4<f32> = u_xlat9;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.z, x_1335.w);
        let x_1338 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec12;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1345.xy, x_1345.z);
        u_xlat49.x = x_1347;
        let x_1350 : f32 = u_xlat7.x;
        let x_1352 : f32 = u_xlat49.x;
        let x_1354 : f32 = u_xlat28;
        u_xlat68 = ((x_1350 * x_1352) + x_1354);
      } else {
        let x_1357 : vec4<f32> = u_xlat5;
        let x_1360 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1363 : vec2<f32> = ((vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(x_1360.z, x_1360.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1364 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat7;
        let x_1368 : vec2<f32> = floor(vec2<f32>(x_1366.x, x_1366.y));
        let x_1369 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1371 : vec4<f32> = u_xlat5;
        let x_1374 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(x_1374.z, x_1374.w)) + -(vec2<f32>(x_1377.x, x_1377.y)));
        let x_1381 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1381.x, x_1381.x, x_1381.y, x_1381.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1384.x, x_1384.x, x_1384.z, x_1384.z) * vec4<f32>(x_1386.x, x_1386.x, x_1386.z, x_1386.z));
        let x_1389 : vec4<f32> = u_xlat9;
        let x_1393 : vec2<f32> = (vec2<f32>(x_1389.y, x_1389.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1394 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1394.x, x_1393.x, x_1394.z, x_1393.y);
        let x_1396 : vec4<f32> = u_xlat9;
        let x_1399 : vec2<f32> = u_xlat49;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1396.x, x_1396.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1399));
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1401.x, x_1402.y, x_1401.y, x_1402.w);
        let x_1404 : vec2<f32> = u_xlat49;
        let x_1406 : vec2<f32> = (-(x_1404) + vec2<f32>(1.0f, 1.0f));
        let x_1407 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1406.x, x_1406.y, x_1407.z, x_1407.w);
        let x_1409 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1409, vec2<f32>(0.0f, 0.0f));
        let x_1411 : vec2<f32> = u_xlat51;
        let x_1413 : vec2<f32> = u_xlat51;
        let x_1415 : vec4<f32> = u_xlat9;
        let x_1417 : vec2<f32> = ((-(x_1411) * x_1413) + vec2<f32>(x_1415.x, x_1415.y));
        let x_1418 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1418.z, x_1418.w);
        let x_1420 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1420, vec2<f32>(0.0f, 0.0f));
        let x_1423 : vec2<f32> = u_xlat51;
        let x_1425 : vec2<f32> = u_xlat51;
        let x_1427 : vec4<f32> = u_xlat8;
        let x_1429 : vec2<f32> = ((-(x_1423) * x_1425) + vec2<f32>(x_1427.y, x_1427.w));
        let x_1430 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1429.x, x_1430.y, x_1429.y);
        let x_1432 : vec4<f32> = u_xlat9;
        let x_1434 : vec2<f32> = (vec2<f32>(x_1432.x, x_1432.y) + vec2<f32>(2.0f, 2.0f));
        let x_1435 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1434.x, x_1434.y, x_1435.z, x_1435.w);
        let x_1437 : vec3<f32> = u_xlat29;
        let x_1439 : vec2<f32> = (vec2<f32>(x_1437.x, x_1437.z) + vec2<f32>(2.0f, 2.0f));
        let x_1440 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1443 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1443 * 0.081632003f);
        let x_1447 : vec4<f32> = u_xlat8;
        let x_1450 : vec3<f32> = (vec3<f32>(x_1447.z, x_1447.x, x_1447.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1451 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1456 : vec2<f32> = (vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1457 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1456.x, x_1456.y, x_1457.z, x_1457.w);
        let x_1460 : f32 = u_xlat12.y;
        u_xlat11.x = x_1460;
        let x_1462 : vec2<f32> = u_xlat49;
        let x_1469 : vec2<f32> = ((vec2<f32>(x_1462.x, x_1462.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1470 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1470.x, x_1469.x, x_1470.z, x_1469.y);
        let x_1472 : vec2<f32> = u_xlat49;
        let x_1476 : vec2<f32> = ((vec2<f32>(x_1472.x, x_1472.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1476.x, x_1477.y, x_1476.y, x_1477.w);
        let x_1480 : f32 = u_xlat8.x;
        u_xlat9.y = x_1480;
        let x_1483 : f32 = u_xlat10.y;
        u_xlat9.w = x_1483;
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1485 + x_1486);
        let x_1488 : vec2<f32> = u_xlat49;
        let x_1491 : vec2<f32> = ((vec2<f32>(x_1488.y, x_1488.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1492 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1492.x, x_1491.x, x_1492.z, x_1491.y);
        let x_1494 : vec2<f32> = u_xlat49;
        let x_1497 : vec2<f32> = ((vec2<f32>(x_1494.y, x_1494.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1498 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1497.x, x_1498.y, x_1497.y, x_1498.w);
        let x_1501 : f32 = u_xlat8.y;
        u_xlat10.y = x_1501;
        let x_1503 : vec4<f32> = u_xlat10;
        let x_1504 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1503 + x_1504);
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1507 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1506 / x_1507);
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1509 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1515 : vec4<f32> = u_xlat10;
        let x_1516 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1515 / x_1516);
        let x_1518 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1518 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1523 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1520.w, x_1520.x, x_1520.y, x_1520.z) * vec4<f32>(x_1523.x, x_1523.x, x_1523.x, x_1523.x));
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1529 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1526.x, x_1526.w, x_1526.y, x_1526.z) * vec4<f32>(x_1529.y, x_1529.y, x_1529.y, x_1529.y));
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1533 : vec3<f32> = vec3<f32>(x_1532.y, x_1532.z, x_1532.w);
        let x_1534 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1533.x, x_1534.y, x_1533.y, x_1533.z);
        let x_1537 : f32 = u_xlat10.x;
        u_xlat12.y = x_1537;
        let x_1539 : vec4<f32> = u_xlat7;
        let x_1542 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y) * vec4<f32>(x_1542.x, x_1542.y, x_1542.x, x_1542.y)) + vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1545.y));
        let x_1548 : vec4<f32> = u_xlat7;
        let x_1551 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1551.x, x_1551.y)) + vec2<f32>(x_1554.w, x_1554.y));
        let x_1558 : f32 = u_xlat12.y;
        u_xlat9.y = x_1558;
        let x_1561 : f32 = u_xlat10.z;
        u_xlat12.y = x_1561;
        let x_1563 : vec4<f32> = u_xlat7;
        let x_1566 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1569 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.y) * vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.y)) + vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1569.y));
        let x_1572 : vec4<f32> = u_xlat7;
        let x_1575 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1578 : vec4<f32> = u_xlat12;
        let x_1580 : vec2<f32> = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(x_1575.x, x_1575.y)) + vec2<f32>(x_1578.w, x_1578.y));
        let x_1581 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
        let x_1584 : f32 = u_xlat12.y;
        u_xlat9.z = x_1584;
        let x_1587 : vec4<f32> = u_xlat7;
        let x_1590 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1593 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1587.x, x_1587.y, x_1587.x, x_1587.y) * vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.y)) + vec4<f32>(x_1593.x, x_1593.y, x_1593.x, x_1593.z));
        let x_1597 : f32 = u_xlat10.w;
        u_xlat12.y = x_1597;
        let x_1600 : vec4<f32> = u_xlat7;
        let x_1603 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1600.x, x_1600.y, x_1600.x, x_1600.y) * vec4<f32>(x_1603.x, x_1603.y, x_1603.x, x_1603.y)) + vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1606.y));
        let x_1610 : vec4<f32> = u_xlat7;
        let x_1613 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1616 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(x_1613.x, x_1613.y)) + vec2<f32>(x_1616.w, x_1616.y));
        let x_1620 : f32 = u_xlat12.y;
        u_xlat9.w = x_1620;
        let x_1623 : vec4<f32> = u_xlat7;
        let x_1626 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1629 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1623.x, x_1623.y) * vec2<f32>(x_1626.x, x_1626.y)) + vec2<f32>(x_1629.x, x_1629.w));
        let x_1632 : vec4<f32> = u_xlat12;
        let x_1633 : vec3<f32> = vec3<f32>(x_1632.x, x_1632.z, x_1632.w);
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1633.z);
        let x_1636 : vec4<f32> = u_xlat7;
        let x_1639 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1642 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1636.x, x_1636.y, x_1636.x, x_1636.y) * vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.y)) + vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1642.y));
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1649 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1646.x, x_1646.y) * vec2<f32>(x_1649.x, x_1649.y)) + vec2<f32>(x_1652.w, x_1652.y));
        let x_1656 : f32 = u_xlat9.x;
        u_xlat10.x = x_1656;
        let x_1658 : vec4<f32> = u_xlat7;
        let x_1661 : vec4<f32> = x_349.x_MainLightShadowmapSize;
        let x_1664 : vec4<f32> = u_xlat10;
        let x_1666 : vec2<f32> = ((vec2<f32>(x_1658.x, x_1658.y) * vec2<f32>(x_1661.x, x_1661.y)) + vec2<f32>(x_1664.x, x_1664.y));
        let x_1667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1666.x, x_1666.y, x_1667.z, x_1667.w);
        let x_1670 : vec4<f32> = u_xlat8;
        let x_1672 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1670.x, x_1670.x, x_1670.x, x_1670.x) * x_1672);
        let x_1675 : vec4<f32> = u_xlat8;
        let x_1677 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1675.y, x_1675.y, x_1675.y, x_1675.y) * x_1677);
        let x_1680 : vec4<f32> = u_xlat8;
        let x_1682 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1680.z, x_1680.z, x_1680.z, x_1680.z) * x_1682);
        let x_1684 : vec4<f32> = u_xlat8;
        let x_1686 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1684.w, x_1684.w, x_1684.w, x_1684.w) * x_1686);
        let x_1689 : vec4<f32> = u_xlat13;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
        let x_1692 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec13;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat9.x = x_1701;
        let x_1704 : vec4<f32> = u_xlat13;
        let x_1705 : vec2<f32> = vec2<f32>(x_1704.z, x_1704.w);
        let x_1707 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1715 : vec3<f32> = txVec14;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat72 = x_1717;
        let x_1718 : f32 = u_xlat72;
        let x_1720 : f32 = u_xlat18.y;
        u_xlat72 = (x_1718 * x_1720);
        let x_1723 : f32 = u_xlat18.x;
        let x_1725 : f32 = u_xlat9.x;
        let x_1727 : f32 = u_xlat72;
        u_xlat9.x = ((x_1723 * x_1725) + x_1727);
        let x_1731 : vec2<f32> = u_xlat49;
        let x_1733 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec15;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1740.xy, x_1740.z);
        u_xlat49.x = x_1742;
        let x_1745 : f32 = u_xlat18.z;
        let x_1747 : f32 = u_xlat49.x;
        let x_1750 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1745 * x_1747) + x_1750);
        let x_1754 : vec4<f32> = u_xlat16;
        let x_1755 : vec2<f32> = vec2<f32>(x_1754.x, x_1754.y);
        let x_1757 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
        let x_1765 : vec3<f32> = txVec16;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1765.xy, x_1765.z);
        u_xlat70 = x_1767;
        let x_1769 : f32 = u_xlat18.w;
        let x_1770 : f32 = u_xlat70;
        let x_1773 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1769 * x_1770) + x_1773);
        let x_1777 : vec4<f32> = u_xlat14;
        let x_1778 : vec2<f32> = vec2<f32>(x_1777.x, x_1777.y);
        let x_1780 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
        let x_1787 : vec3<f32> = txVec17;
        let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1787.xy, x_1787.z);
        u_xlat70 = x_1789;
        let x_1791 : f32 = u_xlat19.x;
        let x_1792 : f32 = u_xlat70;
        let x_1795 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1791 * x_1792) + x_1795);
        let x_1799 : vec4<f32> = u_xlat14;
        let x_1800 : vec2<f32> = vec2<f32>(x_1799.z, x_1799.w);
        let x_1802 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec18;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1809.xy, x_1809.z);
        u_xlat70 = x_1811;
        let x_1813 : f32 = u_xlat19.y;
        let x_1814 : f32 = u_xlat70;
        let x_1817 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1813 * x_1814) + x_1817);
        let x_1821 : vec4<f32> = u_xlat15;
        let x_1822 : vec2<f32> = vec2<f32>(x_1821.x, x_1821.y);
        let x_1824 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec19;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1831.xy, x_1831.z);
        u_xlat70 = x_1833;
        let x_1835 : f32 = u_xlat19.z;
        let x_1836 : f32 = u_xlat70;
        let x_1839 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1835 * x_1836) + x_1839);
        let x_1843 : vec4<f32> = u_xlat16;
        let x_1844 : vec2<f32> = vec2<f32>(x_1843.z, x_1843.w);
        let x_1846 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1844.x, x_1844.y, x_1846);
        let x_1853 : vec3<f32> = txVec20;
        let x_1855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1853.xy, x_1853.z);
        u_xlat70 = x_1855;
        let x_1857 : f32 = u_xlat19.w;
        let x_1858 : f32 = u_xlat70;
        let x_1861 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1857 * x_1858) + x_1861);
        let x_1865 : vec4<f32> = u_xlat17;
        let x_1866 : vec2<f32> = vec2<f32>(x_1865.x, x_1865.y);
        let x_1868 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1866.x, x_1866.y, x_1868);
        let x_1875 : vec3<f32> = txVec21;
        let x_1877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1875.xy, x_1875.z);
        u_xlat70 = x_1877;
        let x_1879 : f32 = u_xlat20.x;
        let x_1880 : f32 = u_xlat70;
        let x_1883 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1879 * x_1880) + x_1883);
        let x_1887 : vec4<f32> = u_xlat17;
        let x_1888 : vec2<f32> = vec2<f32>(x_1887.z, x_1887.w);
        let x_1890 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1897 : vec3<f32> = txVec22;
        let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1897.xy, x_1897.z);
        u_xlat70 = x_1899;
        let x_1901 : f32 = u_xlat20.y;
        let x_1902 : f32 = u_xlat70;
        let x_1905 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1901 * x_1902) + x_1905);
        let x_1909 : vec2<f32> = u_xlat30;
        let x_1911 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1918 : vec3<f32> = txVec23;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
        u_xlat70 = x_1920;
        let x_1922 : f32 = u_xlat20.z;
        let x_1923 : f32 = u_xlat70;
        let x_1926 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1922 * x_1923) + x_1926);
        let x_1930 : vec2<f32> = u_xlat57;
        let x_1932 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1930.x, x_1930.y, x_1932);
        let x_1939 : vec3<f32> = txVec24;
        let x_1941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1939.xy, x_1939.z);
        u_xlat70 = x_1941;
        let x_1943 : f32 = u_xlat20.w;
        let x_1944 : f32 = u_xlat70;
        let x_1947 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1943 * x_1944) + x_1947);
        let x_1951 : vec4<f32> = u_xlat12;
        let x_1952 : vec2<f32> = vec2<f32>(x_1951.x, x_1951.y);
        let x_1954 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec25;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1961.xy, x_1961.z);
        u_xlat70 = x_1963;
        let x_1965 : f32 = u_xlat8.x;
        let x_1966 : f32 = u_xlat70;
        let x_1969 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1965 * x_1966) + x_1969);
        let x_1973 : vec4<f32> = u_xlat12;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.z, x_1973.w);
        let x_1976 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec26;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1983.xy, x_1983.z);
        u_xlat70 = x_1985;
        let x_1987 : f32 = u_xlat8.y;
        let x_1988 : f32 = u_xlat70;
        let x_1991 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1987 * x_1988) + x_1991);
        let x_1995 : vec2<f32> = u_xlat52;
        let x_1997 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1995.x, x_1995.y, x_1997);
        let x_2004 : vec3<f32> = txVec27;
        let x_2006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2004.xy, x_2004.z);
        u_xlat70 = x_2006;
        let x_2008 : f32 = u_xlat8.z;
        let x_2009 : f32 = u_xlat70;
        let x_2012 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_2008 * x_2009) + x_2012);
        let x_2016 : vec4<f32> = u_xlat7;
        let x_2017 : vec2<f32> = vec2<f32>(x_2016.x, x_2016.y);
        let x_2019 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_2017.x, x_2017.y, x_2019);
        let x_2026 : vec3<f32> = txVec28;
        let x_2028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2026.xy, x_2026.z);
        u_xlat7.x = x_2028;
        let x_2031 : f32 = u_xlat8.w;
        let x_2033 : f32 = u_xlat7.x;
        let x_2036 : f32 = u_xlat49.x;
        u_xlat68 = ((x_2031 * x_2033) + x_2036);
      }
    }
  } else {
    let x_2040 : vec4<f32> = u_xlat5;
    let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
    let x_2043 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
    let x_2050 : vec3<f32> = txVec29;
    let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2050.xy, x_2050.z);
    u_xlat68 = x_2052;
  }
  let x_2054 : f32 = x_349.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2054) + 1.0f);
  let x_2058 : f32 = u_xlat68;
  let x_2060 : f32 = x_349.x_MainLightShadowParams.x;
  let x_2063 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2058 * x_2060) + x_2063);
  let x_2068 : f32 = u_xlat5.z;
  u_xlatb26.x = (0.0f >= x_2068);
  let x_2073 : f32 = u_xlat5.z;
  u_xlatb47 = (x_2073 >= 1.0f);
  let x_2075 : bool = u_xlatb47;
  let x_2077 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_2075 | x_2077);
  let x_2081 : bool = u_xlatb26.x;
  if (x_2081) {
    x_2082 = 1.0f;
  } else {
    let x_2087 : f32 = u_xlat5.x;
    x_2082 = x_2087;
  }
  let x_2088 : f32 = x_2082;
  u_xlat5.x = x_2088;
  let x_2091 : vec3<f32> = vs_TEXCOORD1;
  let x_2093 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_2091 + -(x_2093));
  let x_2096 : vec3<f32> = u_xlat26;
  let x_2097 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_2096, x_2097);
  let x_2101 : f32 = u_xlat26.x;
  let x_2103 : f32 = x_349.x_MainLightShadowParams.z;
  let x_2106 : f32 = x_349.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_2101 * x_2103) + x_2106);
  let x_2110 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2110, 0.0f, 1.0f);
  let x_2115 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_2115) + 1.0f);
  let x_2119 : f32 = u_xlat26.x;
  let x_2120 : f32 = u_xlat47;
  let x_2123 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2119 * x_2120) + x_2123);
  let x_2132 : f32 = x_2130.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_2132 == -1.0f));
  let x_2136 : bool = u_xlatb26.x;
  if (x_2136) {
    let x_2139 : vec3<f32> = vs_TEXCOORD1;
    let x_2142 : vec4<f32> = x_2130.x_MainLightWorldToLight[1i];
    let x_2144 : vec2<f32> = (vec2<f32>(x_2139.y, x_2139.y) * vec2<f32>(x_2142.x, x_2142.y));
    let x_2145 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2144.x, x_2144.y, x_2145.z);
    let x_2148 : vec4<f32> = x_2130.x_MainLightWorldToLight[0i];
    let x_2150 : vec3<f32> = vs_TEXCOORD1;
    let x_2153 : vec3<f32> = u_xlat26;
    let x_2155 : vec2<f32> = ((vec2<f32>(x_2148.x, x_2148.y) * vec2<f32>(x_2150.x, x_2150.x)) + vec2<f32>(x_2153.x, x_2153.y));
    let x_2156 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2155.x, x_2155.y, x_2156.z);
    let x_2159 : vec4<f32> = x_2130.x_MainLightWorldToLight[2i];
    let x_2161 : vec3<f32> = vs_TEXCOORD1;
    let x_2164 : vec3<f32> = u_xlat26;
    let x_2166 : vec2<f32> = ((vec2<f32>(x_2159.x, x_2159.y) * vec2<f32>(x_2161.z, x_2161.z)) + vec2<f32>(x_2164.x, x_2164.y));
    let x_2167 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2166.x, x_2166.y, x_2167.z);
    let x_2169 : vec3<f32> = u_xlat26;
    let x_2172 : vec4<f32> = x_2130.x_MainLightWorldToLight[3i];
    let x_2174 : vec2<f32> = (vec2<f32>(x_2169.x, x_2169.y) + vec2<f32>(x_2172.x, x_2172.y));
    let x_2175 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2174.x, x_2174.y, x_2175.z);
    let x_2177 : vec3<f32> = u_xlat26;
    let x_2180 : vec2<f32> = ((vec2<f32>(x_2177.x, x_2177.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2181 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2180.x, x_2180.y, x_2181.z);
    let x_2188 : vec3<f32> = u_xlat26;
    let x_2191 : f32 = x_44.x_GlobalMipBias.x;
    let x_2192 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2188.x, x_2188.y), x_2191);
    u_xlat7 = x_2192;
    let x_2194 : f32 = x_2130.x_MainLightCookieTextureFormat;
    let x_2196 : f32 = x_2130.x_MainLightCookieTextureFormat;
    let x_2198 : f32 = x_2130.x_MainLightCookieTextureFormat;
    let x_2200 : f32 = x_2130.x_MainLightCookieTextureFormat;
    let x_2201 : vec4<f32> = vec4<f32>(x_2194, x_2196, x_2198, x_2200);
    let x_2208 : vec4<bool> = (vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2201.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2208.x, x_2208.y);
    let x_2211 : bool = u_xlatb26.y;
    if (x_2211) {
      let x_2216 : f32 = u_xlat7.w;
      x_2212 = x_2216;
    } else {
      let x_2219 : f32 = u_xlat7.x;
      x_2212 = x_2219;
    }
    let x_2220 : f32 = x_2212;
    u_xlat47 = x_2220;
    let x_2222 : bool = u_xlatb26.x;
    if (x_2222) {
      let x_2226 : vec4<f32> = u_xlat7;
      x_2223 = vec3<f32>(x_2226.x, x_2226.y, x_2226.z);
    } else {
      let x_2229 : f32 = u_xlat47;
      x_2223 = vec3<f32>(x_2229, x_2229, x_2229);
    }
    let x_2231 : vec3<f32> = x_2223;
    u_xlat26 = x_2231;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2236 : vec3<f32> = u_xlat26;
  let x_2238 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2236 * vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
  let x_2241 : f32 = u_xlat69;
  let x_2243 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2241, x_2241, x_2241) * x_2243);
  let x_2245 : vec3<f32> = u_xlat24;
  let x_2247 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_2245), vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2252 : f32 = u_xlat7.x;
  let x_2254 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2252 + x_2254);
  let x_2257 : vec4<f32> = u_xlat4;
  let x_2259 : vec4<f32> = u_xlat7;
  let x_2263 : vec3<f32> = u_xlat24;
  let x_2265 : vec3<f32> = ((vec3<f32>(x_2257.x, x_2257.y, x_2257.z) * -(vec3<f32>(x_2259.x, x_2259.x, x_2259.x))) + -(x_2263));
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat4;
  let x_2270 : vec3<f32> = u_xlat24;
  u_xlat70 = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), x_2270);
  let x_2272 : f32 = u_xlat70;
  u_xlat70 = clamp(x_2272, 0.0f, 1.0f);
  let x_2274 : f32 = u_xlat70;
  u_xlat70 = (-(x_2274) + 1.0f);
  let x_2277 : f32 = u_xlat70;
  let x_2278 : f32 = u_xlat70;
  u_xlat70 = (x_2277 * x_2278);
  let x_2280 : f32 = u_xlat70;
  let x_2281 : f32 = u_xlat70;
  u_xlat70 = (x_2280 * x_2281);
  let x_2284 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_2284) * 0.699999988f) + 1.700000048f);
  let x_2292 : f32 = u_xlat1.x;
  let x_2294 : f32 = u_xlat8.x;
  u_xlat1.x = (x_2292 * x_2294);
  let x_2298 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2298 * 6.0f);
  let x_2310 : vec4<f32> = u_xlat7;
  let x_2313 : f32 = u_xlat1.x;
  let x_2314 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2310.x, x_2310.y, x_2310.z), x_2313);
  u_xlat8 = x_2314;
  let x_2316 : f32 = u_xlat8.w;
  u_xlat1.x = (x_2316 + -1.0f);
  let x_2320 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_2322 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2320 * x_2322) + 1.0f);
  let x_2327 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2327, 0.0f);
  let x_2331 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2331);
  let x_2335 : f32 = u_xlat1.x;
  let x_2337 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2335 * x_2337);
  let x_2341 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2341);
  let x_2345 : f32 = u_xlat1.x;
  let x_2347 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2345 * x_2347);
  let x_2350 : vec4<f32> = u_xlat8;
  let x_2352 : vec3<f32> = u_xlat1;
  let x_2354 : vec3<f32> = (vec3<f32>(x_2350.x, x_2350.y, x_2350.z) * vec3<f32>(x_2352.x, x_2352.x, x_2352.x));
  let x_2355 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
  let x_2357 : vec2<f32> = u_xlat43;
  let x_2359 : vec2<f32> = u_xlat43;
  let x_2363 : vec2<f32> = ((vec2<f32>(x_2357.x, x_2357.x) * vec2<f32>(x_2359.x, x_2359.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2364 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_2363.x, x_2364.y, x_2363.y);
  let x_2367 : f32 = u_xlat1.z;
  u_xlat43.x = (1.0f / x_2367);
  let x_2370 : vec4<f32> = u_xlat0;
  let x_2373 : vec2<f32> = u_xlat22;
  let x_2375 : vec3<f32> = (-(vec3<f32>(x_2370.x, x_2370.y, x_2370.z)) + vec3<f32>(x_2373.x, x_2373.x, x_2373.x));
  let x_2376 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
  let x_2378 : f32 = u_xlat70;
  let x_2380 : vec4<f32> = u_xlat8;
  let x_2383 : vec4<f32> = u_xlat0;
  let x_2385 : vec3<f32> = ((vec3<f32>(x_2378, x_2378, x_2378) * vec3<f32>(x_2380.x, x_2380.y, x_2380.z)) + vec3<f32>(x_2383.x, x_2383.y, x_2383.z));
  let x_2386 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
  let x_2388 : vec2<f32> = u_xlat43;
  let x_2390 : vec4<f32> = u_xlat8;
  let x_2392 : vec3<f32> = (vec3<f32>(x_2388.x, x_2388.x, x_2388.x) * vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
  let x_2393 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
  let x_2395 : vec4<f32> = u_xlat7;
  let x_2397 : vec4<f32> = u_xlat8;
  let x_2399 : vec3<f32> = (vec3<f32>(x_2395.x, x_2395.y, x_2395.z) * vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : vec4<f32> = u_xlat6;
  let x_2404 : vec3<f32> = u_xlat23;
  let x_2406 : vec4<f32> = u_xlat7;
  let x_2408 : vec3<f32> = ((vec3<f32>(x_2402.x, x_2402.y, x_2402.z) * x_2404) + vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2409 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
  let x_2412 : f32 = u_xlat5.x;
  let x_2414 : f32 = x_187.unity_LightData.z;
  u_xlat22.x = (x_2412 * x_2414);
  let x_2417 : vec4<f32> = u_xlat4;
  let x_2420 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43.x = dot(vec3<f32>(x_2417.x, x_2417.y, x_2417.z), vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
  let x_2425 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_2425, 0.0f, 1.0f);
  let x_2429 : f32 = u_xlat43.x;
  let x_2431 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2429 * x_2431);
  let x_2434 : vec2<f32> = u_xlat22;
  let x_2436 : vec3<f32> = u_xlat26;
  let x_2437 : vec3<f32> = (vec3<f32>(x_2434.x, x_2434.x, x_2434.x) * x_2436);
  let x_2438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
  let x_2440 : vec3<f32> = u_xlat24;
  let x_2442 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2444 : vec3<f32> = (x_2440 + vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
  let x_2445 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : vec4<f32> = u_xlat7;
  let x_2449 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(vec3<f32>(x_2447.x, x_2447.y, x_2447.z), vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2454 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_2454, 1.17549435e-37f);
  let x_2459 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_2459);
  let x_2462 : vec2<f32> = u_xlat22;
  let x_2464 : vec4<f32> = u_xlat7;
  let x_2466 : vec3<f32> = (vec3<f32>(x_2462.x, x_2462.x, x_2462.x) * vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
  let x_2467 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  let x_2469 : vec4<f32> = u_xlat4;
  let x_2471 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(vec3<f32>(x_2469.x, x_2469.y, x_2469.z), vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
  let x_2476 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2476, 0.0f, 1.0f);
  let x_2480 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2482 : vec4<f32> = u_xlat7;
  u_xlat22.y = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2487 : f32 = u_xlat22.y;
  u_xlat22.y = clamp(x_2487, 0.0f, 1.0f);
  let x_2490 : vec2<f32> = u_xlat22;
  let x_2491 : vec2<f32> = u_xlat22;
  u_xlat22 = (x_2490 * x_2491);
  let x_2494 : f32 = u_xlat22.x;
  let x_2496 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_2494 * x_2496) + 1.000010014f);
  let x_2502 : f32 = u_xlat22.x;
  let x_2504 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2502 * x_2504);
  let x_2508 : f32 = u_xlat22.y;
  u_xlat43.x = max(x_2508, 0.100000001f);
  let x_2513 : f32 = u_xlat43.x;
  let x_2515 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2513 * x_2515);
  let x_2518 : f32 = u_xlat64;
  let x_2520 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2518 * x_2520);
  let x_2523 : f32 = u_xlat67;
  let x_2525 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2523 / x_2525);
  let x_2528 : vec4<f32> = u_xlat0;
  let x_2530 : vec2<f32> = u_xlat22;
  let x_2533 : vec3<f32> = u_xlat23;
  let x_2534 : vec3<f32> = ((vec3<f32>(x_2528.x, x_2528.y, x_2528.z) * vec3<f32>(x_2530.x, x_2530.x, x_2530.x)) + x_2533);
  let x_2535 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
  let x_2537 : vec4<f32> = u_xlat5;
  let x_2539 : vec4<f32> = u_xlat7;
  let x_2541 : vec3<f32> = (vec3<f32>(x_2537.x, x_2537.y, x_2537.z) * vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2542 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
  let x_2545 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2547 : f32 = x_187.unity_LightData.y;
  u_xlat22.x = min(x_2545, x_2547);
  let x_2552 : f32 = u_xlat22.x;
  u_xlatu22 = bitcast<u32>(i32(x_2552));
  let x_2556 : f32 = x_2130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2558 : f32 = x_2130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2560 : f32 = x_2130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2562 : f32 = x_2130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2563 : vec4<f32> = vec4<f32>(x_2556, x_2558, x_2560, x_2562);
  let x_2569 : vec4<bool> = (vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2563.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2569.x, x_2569.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2580 : u32 = u_xlatu_loop_1;
    let x_2581 : u32 = u_xlatu22;
    if ((x_2580 < x_2581)) {
    } else {
      break;
    }
    let x_2584 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2584 >> 2u);
    let x_2587 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_2587 & 3u));
    let x_2590 : u32 = u_xlatu68;
    let x_2593 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_2590)];
    let x_2603 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2608 : vec4<u32> = indexable[x_2603];
    u_xlat68 = dot(x_2593, bitcast<vec4<f32>>(x_2608));
    let x_2611 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2611));
    let x_2614 : vec3<f32> = vs_TEXCOORD1;
    let x_2626 : u32 = u_xlatu68;
    let x_2629 : vec4<f32> = x_2625.x_AdditionalLightsPosition[bitcast<i32>(x_2626)];
    let x_2632 : u32 = u_xlatu68;
    let x_2635 : vec4<f32> = x_2625.x_AdditionalLightsPosition[bitcast<i32>(x_2632)];
    let x_2637 : vec3<f32> = ((-(x_2614) * vec3<f32>(x_2629.w, x_2629.w, x_2629.w)) + vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
    let x_2638 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2637.x, x_2637.y, x_2637.z, x_2638.w);
    let x_2640 : vec4<f32> = u_xlat9;
    let x_2642 : vec4<f32> = u_xlat9;
    u_xlat49.x = dot(vec3<f32>(x_2640.x, x_2640.y, x_2640.z), vec3<f32>(x_2642.x, x_2642.y, x_2642.z));
    let x_2647 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2647, 6.10351562e-05f);
    let x_2652 : f32 = u_xlat49.x;
    u_xlat70 = inverseSqrt(x_2652);
    let x_2654 : f32 = u_xlat70;
    let x_2656 : vec4<f32> = u_xlat9;
    let x_2658 : vec3<f32> = (vec3<f32>(x_2654, x_2654, x_2654) * vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
    let x_2659 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2658.x, x_2658.y, x_2658.z, x_2659.w);
    let x_2663 : f32 = u_xlat49.x;
    u_xlat71 = (1.0f / x_2663);
    let x_2666 : f32 = u_xlat49.x;
    let x_2667 : u32 = u_xlatu68;
    let x_2670 : f32 = x_2625.x_AdditionalLightsAttenuation[bitcast<i32>(x_2667)].x;
    u_xlat49.x = (x_2666 * x_2670);
    let x_2674 : f32 = u_xlat49.x;
    let x_2677 : f32 = u_xlat49.x;
    u_xlat49.x = ((-(x_2674) * x_2677) + 1.0f);
    let x_2682 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2682, 0.0f);
    let x_2686 : f32 = u_xlat49.x;
    let x_2688 : f32 = u_xlat49.x;
    u_xlat49.x = (x_2686 * x_2688);
    let x_2692 : f32 = u_xlat49.x;
    let x_2693 : f32 = u_xlat71;
    u_xlat49.x = (x_2692 * x_2693);
    let x_2696 : u32 = u_xlatu68;
    let x_2699 : vec4<f32> = x_2625.x_AdditionalLightsSpotDir[bitcast<i32>(x_2696)];
    let x_2701 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
    let x_2704 : f32 = u_xlat71;
    let x_2705 : u32 = u_xlatu68;
    let x_2708 : f32 = x_2625.x_AdditionalLightsAttenuation[bitcast<i32>(x_2705)].z;
    let x_2710 : u32 = u_xlatu68;
    let x_2713 : f32 = x_2625.x_AdditionalLightsAttenuation[bitcast<i32>(x_2710)].w;
    u_xlat71 = ((x_2704 * x_2708) + x_2713);
    let x_2715 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2715, 0.0f, 1.0f);
    let x_2717 : f32 = u_xlat71;
    let x_2718 : f32 = u_xlat71;
    u_xlat71 = (x_2717 * x_2718);
    let x_2721 : f32 = u_xlat49.x;
    let x_2722 : f32 = u_xlat71;
    u_xlat49.x = (x_2721 * x_2722);
    let x_2726 : u32 = u_xlatu68;
    u_xlatu71 = (x_2726 >> 5u);
    let x_2729 : u32 = u_xlatu68;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2729) & 31i)));
    let x_2735 : i32 = u_xlati72;
    let x_2737 : u32 = u_xlatu71;
    let x_2740 : f32 = x_2130.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2737)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_2735) & bitcast<u32>(x_2740)));
    let x_2744 : i32 = u_xlati71;
    if ((x_2744 != 0i)) {
      let x_2754 : u32 = u_xlatu68;
      let x_2757 : f32 = x_2753.x_AdditionalLightsLightTypes[bitcast<i32>(x_2754)].el;
      u_xlati71 = i32(x_2757);
      let x_2759 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_2759 != 0i));
      let x_2763 : u32 = u_xlatu68;
      u_xlati73 = (bitcast<i32>(x_2763) << bitcast<u32>(2i));
      let x_2766 : i32 = u_xlati72;
      if ((x_2766 != 0i)) {
        let x_2770 : vec3<f32> = vs_TEXCOORD1;
        let x_2772 : i32 = u_xlati73;
        let x_2775 : i32 = u_xlati73;
        let x_2779 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2772 + 1i) / 4i)][((x_2775 + 1i) % 4i)];
        let x_2781 : vec3<f32> = (vec3<f32>(x_2770.y, x_2770.y, x_2770.y) * vec3<f32>(x_2779.x, x_2779.y, x_2779.w));
        let x_2782 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2781.x, x_2781.y, x_2781.z, x_2782.w);
        let x_2784 : i32 = u_xlati73;
        let x_2786 : i32 = u_xlati73;
        let x_2789 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[(x_2784 / 4i)][(x_2786 % 4i)];
        let x_2791 : vec3<f32> = vs_TEXCOORD1;
        let x_2794 : vec4<f32> = u_xlat11;
        let x_2796 : vec3<f32> = ((vec3<f32>(x_2789.x, x_2789.y, x_2789.w) * vec3<f32>(x_2791.x, x_2791.x, x_2791.x)) + vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
        let x_2797 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
        let x_2799 : i32 = u_xlati73;
        let x_2802 : i32 = u_xlati73;
        let x_2806 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2799 + 2i) / 4i)][((x_2802 + 2i) % 4i)];
        let x_2808 : vec3<f32> = vs_TEXCOORD1;
        let x_2811 : vec4<f32> = u_xlat11;
        let x_2813 : vec3<f32> = ((vec3<f32>(x_2806.x, x_2806.y, x_2806.w) * vec3<f32>(x_2808.z, x_2808.z, x_2808.z)) + vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
        let x_2814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
        let x_2816 : vec4<f32> = u_xlat11;
        let x_2818 : i32 = u_xlati73;
        let x_2821 : i32 = u_xlati73;
        let x_2825 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2818 + 3i) / 4i)][((x_2821 + 3i) % 4i)];
        let x_2827 : vec3<f32> = (vec3<f32>(x_2816.x, x_2816.y, x_2816.z) + vec3<f32>(x_2825.x, x_2825.y, x_2825.w));
        let x_2828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2828.w);
        let x_2830 : vec4<f32> = u_xlat11;
        let x_2832 : vec4<f32> = u_xlat11;
        let x_2834 : vec2<f32> = (vec2<f32>(x_2830.x, x_2830.y) / vec2<f32>(x_2832.z, x_2832.z));
        let x_2835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
        let x_2837 : vec4<f32> = u_xlat11;
        let x_2840 : vec2<f32> = ((vec2<f32>(x_2837.x, x_2837.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2841 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2840.x, x_2840.y, x_2841.z, x_2841.w);
        let x_2843 : vec4<f32> = u_xlat11;
        let x_2847 : vec2<f32> = clamp(vec2<f32>(x_2843.x, x_2843.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2848 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2847.x, x_2847.y, x_2848.z, x_2848.w);
        let x_2850 : u32 = u_xlatu68;
        let x_2853 : vec4<f32> = x_2753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2850)];
        let x_2855 : vec4<f32> = u_xlat11;
        let x_2858 : u32 = u_xlatu68;
        let x_2861 : vec4<f32> = x_2753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2858)];
        let x_2863 : vec2<f32> = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2855.x, x_2855.y)) + vec2<f32>(x_2861.z, x_2861.w));
        let x_2864 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2863.x, x_2863.y, x_2864.z, x_2864.w);
      } else {
        let x_2868 : i32 = u_xlati71;
        u_xlatb71 = (x_2868 == 1i);
        let x_2870 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_2870);
        let x_2872 : i32 = u_xlati71;
        if ((x_2872 != 0i)) {
          let x_2877 : vec3<f32> = vs_TEXCOORD1;
          let x_2879 : i32 = u_xlati73;
          let x_2882 : i32 = u_xlati73;
          let x_2886 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2879 + 1i) / 4i)][((x_2882 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2877.y, x_2877.y) * vec2<f32>(x_2886.x, x_2886.y));
          let x_2889 : i32 = u_xlati73;
          let x_2891 : i32 = u_xlati73;
          let x_2894 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[(x_2889 / 4i)][(x_2891 % 4i)];
          let x_2896 : vec3<f32> = vs_TEXCOORD1;
          let x_2899 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2894.x, x_2894.y) * vec2<f32>(x_2896.x, x_2896.x)) + x_2899);
          let x_2901 : i32 = u_xlati73;
          let x_2904 : i32 = u_xlati73;
          let x_2908 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2901 + 2i) / 4i)][((x_2904 + 2i) % 4i)];
          let x_2910 : vec3<f32> = vs_TEXCOORD1;
          let x_2913 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2908.x, x_2908.y) * vec2<f32>(x_2910.z, x_2910.z)) + x_2913);
          let x_2915 : vec2<f32> = u_xlat53;
          let x_2916 : i32 = u_xlati73;
          let x_2919 : i32 = u_xlati73;
          let x_2923 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2916 + 3i) / 4i)][((x_2919 + 3i) % 4i)];
          u_xlat53 = (x_2915 + vec2<f32>(x_2923.x, x_2923.y));
          let x_2926 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2926 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2929 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2929);
          let x_2931 : u32 = u_xlatu68;
          let x_2934 : vec4<f32> = x_2753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2931)];
          let x_2936 : vec2<f32> = u_xlat53;
          let x_2938 : u32 = u_xlatu68;
          let x_2941 : vec4<f32> = x_2753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2938)];
          let x_2943 : vec2<f32> = ((vec2<f32>(x_2934.x, x_2934.y) * x_2936) + vec2<f32>(x_2941.z, x_2941.w));
          let x_2944 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
        } else {
          let x_2947 : vec3<f32> = vs_TEXCOORD1;
          let x_2949 : i32 = u_xlati73;
          let x_2952 : i32 = u_xlati73;
          let x_2956 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2949 + 1i) / 4i)][((x_2952 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2947.y, x_2947.y, x_2947.y, x_2947.y) * x_2956);
          let x_2958 : i32 = u_xlati73;
          let x_2960 : i32 = u_xlati73;
          let x_2963 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[(x_2958 / 4i)][(x_2960 % 4i)];
          let x_2964 : vec3<f32> = vs_TEXCOORD1;
          let x_2967 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2963 * vec4<f32>(x_2964.x, x_2964.x, x_2964.x, x_2964.x)) + x_2967);
          let x_2969 : i32 = u_xlati73;
          let x_2972 : i32 = u_xlati73;
          let x_2976 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2969 + 2i) / 4i)][((x_2972 + 2i) % 4i)];
          let x_2977 : vec3<f32> = vs_TEXCOORD1;
          let x_2980 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2976 * vec4<f32>(x_2977.z, x_2977.z, x_2977.z, x_2977.z)) + x_2980);
          let x_2982 : vec4<f32> = u_xlat12;
          let x_2983 : i32 = u_xlati73;
          let x_2986 : i32 = u_xlati73;
          let x_2990 : vec4<f32> = x_2753.x_AdditionalLightsWorldToLights[((x_2983 + 3i) / 4i)][((x_2986 + 3i) % 4i)];
          u_xlat12 = (x_2982 + x_2990);
          let x_2992 : vec4<f32> = u_xlat12;
          let x_2994 : vec4<f32> = u_xlat12;
          let x_2996 : vec3<f32> = (vec3<f32>(x_2992.x, x_2992.y, x_2992.z) / vec3<f32>(x_2994.w, x_2994.w, x_2994.w));
          let x_2997 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2996.x, x_2996.y, x_2996.z, x_2997.w);
          let x_2999 : vec4<f32> = u_xlat12;
          let x_3001 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_2999.x, x_2999.y, x_2999.z), vec3<f32>(x_3001.x, x_3001.y, x_3001.z));
          let x_3004 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_3004);
          let x_3006 : f32 = u_xlat71;
          let x_3008 : vec4<f32> = u_xlat12;
          let x_3010 : vec3<f32> = (vec3<f32>(x_3006, x_3006, x_3006) * vec3<f32>(x_3008.x, x_3008.y, x_3008.z));
          let x_3011 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
          let x_3013 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_3013.x, x_3013.y, x_3013.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3018 : f32 = u_xlat71;
          u_xlat71 = max(x_3018, 0.000001f);
          let x_3021 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_3021);
          let x_3023 : f32 = u_xlat71;
          let x_3025 : vec4<f32> = u_xlat12;
          let x_3027 : vec3<f32> = (vec3<f32>(x_3023, x_3023, x_3023) * vec3<f32>(x_3025.z, x_3025.x, x_3025.y));
          let x_3028 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3028.w);
          let x_3031 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3031);
          let x_3035 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3035, 0.0f, 1.0f);
          let x_3039 : vec4<f32> = u_xlat13;
          let x_3042 : vec4<bool> = (vec4<f32>(x_3039.y, x_3039.z, x_3039.y, x_3039.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3042.x, x_3042.y);
          let x_3045 : bool = u_xlatb53.x;
          if (x_3045) {
            let x_3050 : f32 = u_xlat13.x;
            x_3046 = x_3050;
          } else {
            let x_3053 : f32 = u_xlat13.x;
            x_3046 = -(x_3053);
          }
          let x_3055 : f32 = x_3046;
          u_xlat53.x = x_3055;
          let x_3058 : bool = u_xlatb53.y;
          if (x_3058) {
            let x_3063 : f32 = u_xlat13.x;
            x_3059 = x_3063;
          } else {
            let x_3066 : f32 = u_xlat13.x;
            x_3059 = -(x_3066);
          }
          let x_3068 : f32 = x_3059;
          u_xlat53.y = x_3068;
          let x_3070 : vec4<f32> = u_xlat12;
          let x_3072 : f32 = u_xlat71;
          let x_3075 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3072, x_3072)) + x_3075);
          let x_3077 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3077 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3080 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3080, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3084 : u32 = u_xlatu68;
          let x_3087 : vec4<f32> = x_2753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3084)];
          let x_3089 : vec2<f32> = u_xlat53;
          let x_3091 : u32 = u_xlatu68;
          let x_3094 : vec4<f32> = x_2753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3091)];
          let x_3096 : vec2<f32> = ((vec2<f32>(x_3087.x, x_3087.y) * x_3089) + vec2<f32>(x_3094.z, x_3094.w));
          let x_3097 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3096.x, x_3096.y, x_3097.z, x_3097.w);
        }
      }
      let x_3104 : vec4<f32> = u_xlat11;
      let x_3107 : f32 = x_44.x_GlobalMipBias.x;
      let x_3108 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3104.x, x_3104.y), x_3107);
      u_xlat11 = x_3108;
      let x_3110 : bool = u_xlatb7.y;
      if (x_3110) {
        let x_3115 : f32 = u_xlat11.w;
        x_3111 = x_3115;
      } else {
        let x_3118 : f32 = u_xlat11.x;
        x_3111 = x_3118;
      }
      let x_3119 : f32 = x_3111;
      u_xlat71 = x_3119;
      let x_3121 : bool = u_xlatb7.x;
      if (x_3121) {
        let x_3125 : vec4<f32> = u_xlat11;
        x_3122 = vec3<f32>(x_3125.x, x_3125.y, x_3125.z);
      } else {
        let x_3128 : f32 = u_xlat71;
        x_3122 = vec3<f32>(x_3128, x_3128, x_3128);
      }
      let x_3130 : vec3<f32> = x_3122;
      let x_3131 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3131.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3137 : vec4<f32> = u_xlat11;
    let x_3139 : u32 = u_xlatu68;
    let x_3142 : vec4<f32> = x_2625.x_AdditionalLightsColor[bitcast<i32>(x_3139)];
    let x_3144 : vec3<f32> = (vec3<f32>(x_3137.x, x_3137.y, x_3137.z) * vec3<f32>(x_3142.x, x_3142.y, x_3142.z));
    let x_3145 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3145.w);
    let x_3147 : f32 = u_xlat69;
    let x_3149 : vec4<f32> = u_xlat11;
    let x_3151 : vec3<f32> = (vec3<f32>(x_3147, x_3147, x_3147) * vec3<f32>(x_3149.x, x_3149.y, x_3149.z));
    let x_3152 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);
    let x_3154 : vec4<f32> = u_xlat4;
    let x_3156 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3154.x, x_3154.y, x_3154.z), vec3<f32>(x_3156.x, x_3156.y, x_3156.z));
    let x_3159 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3159, 0.0f, 1.0f);
    let x_3161 : f32 = u_xlat68;
    let x_3163 : f32 = u_xlat49.x;
    u_xlat68 = (x_3161 * x_3163);
    let x_3165 : f32 = u_xlat68;
    let x_3167 : vec4<f32> = u_xlat11;
    let x_3169 : vec3<f32> = (vec3<f32>(x_3165, x_3165, x_3165) * vec3<f32>(x_3167.x, x_3167.y, x_3167.z));
    let x_3170 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3169.x, x_3169.y, x_3169.z, x_3170.w);
    let x_3172 : vec4<f32> = u_xlat9;
    let x_3174 : f32 = u_xlat70;
    let x_3177 : vec3<f32> = u_xlat24;
    let x_3178 : vec3<f32> = ((vec3<f32>(x_3172.x, x_3172.y, x_3172.z) * vec3<f32>(x_3174, x_3174, x_3174)) + x_3177);
    let x_3179 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3179.w);
    let x_3181 : vec4<f32> = u_xlat9;
    let x_3183 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3181.x, x_3181.y, x_3181.z), vec3<f32>(x_3183.x, x_3183.y, x_3183.z));
    let x_3186 : f32 = u_xlat68;
    u_xlat68 = max(x_3186, 1.17549435e-37f);
    let x_3188 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3188);
    let x_3190 : f32 = u_xlat68;
    let x_3192 : vec4<f32> = u_xlat9;
    let x_3194 : vec3<f32> = (vec3<f32>(x_3190, x_3190, x_3190) * vec3<f32>(x_3192.x, x_3192.y, x_3192.z));
    let x_3195 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3194.x, x_3194.y, x_3194.z, x_3195.w);
    let x_3197 : vec4<f32> = u_xlat4;
    let x_3199 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3197.x, x_3197.y, x_3197.z), vec3<f32>(x_3199.x, x_3199.y, x_3199.z));
    let x_3202 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3202, 0.0f, 1.0f);
    let x_3204 : vec4<f32> = u_xlat10;
    let x_3206 : vec4<f32> = u_xlat9;
    u_xlat49.x = dot(vec3<f32>(x_3204.x, x_3204.y, x_3204.z), vec3<f32>(x_3206.x, x_3206.y, x_3206.z));
    let x_3211 : f32 = u_xlat49.x;
    u_xlat49.x = clamp(x_3211, 0.0f, 1.0f);
    let x_3214 : f32 = u_xlat68;
    let x_3215 : f32 = u_xlat68;
    u_xlat68 = (x_3214 * x_3215);
    let x_3217 : f32 = u_xlat68;
    let x_3219 : f32 = u_xlat1.x;
    u_xlat68 = ((x_3217 * x_3219) + 1.000010014f);
    let x_3223 : f32 = u_xlat49.x;
    let x_3225 : f32 = u_xlat49.x;
    u_xlat49.x = (x_3223 * x_3225);
    let x_3228 : f32 = u_xlat68;
    let x_3229 : f32 = u_xlat68;
    u_xlat68 = (x_3228 * x_3229);
    let x_3232 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_3232, 0.100000001f);
    let x_3235 : f32 = u_xlat68;
    let x_3237 : f32 = u_xlat49.x;
    u_xlat68 = (x_3235 * x_3237);
    let x_3239 : f32 = u_xlat64;
    let x_3240 : f32 = u_xlat68;
    u_xlat68 = (x_3239 * x_3240);
    let x_3242 : f32 = u_xlat67;
    let x_3243 : f32 = u_xlat68;
    u_xlat68 = (x_3242 / x_3243);
    let x_3245 : vec4<f32> = u_xlat0;
    let x_3247 : f32 = u_xlat68;
    let x_3250 : vec3<f32> = u_xlat23;
    let x_3251 : vec3<f32> = ((vec3<f32>(x_3245.x, x_3245.y, x_3245.z) * vec3<f32>(x_3247, x_3247, x_3247)) + x_3250);
    let x_3252 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3251.x, x_3251.y, x_3251.z, x_3252.w);
    let x_3254 : vec4<f32> = u_xlat9;
    let x_3256 : vec4<f32> = u_xlat11;
    let x_3259 : vec4<f32> = u_xlat8;
    let x_3261 : vec3<f32> = ((vec3<f32>(x_3254.x, x_3254.y, x_3254.z) * vec3<f32>(x_3256.x, x_3256.y, x_3256.z)) + vec3<f32>(x_3259.x, x_3259.y, x_3259.z));
    let x_3262 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3261.x, x_3261.y, x_3261.z, x_3262.w);

    continuing {
      let x_3264 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3264 + bitcast<u32>(1i));
    }
  }
  let x_3266 : vec4<f32> = u_xlat6;
  let x_3268 : vec3<f32> = u_xlat3;
  let x_3271 : vec4<f32> = u_xlat5;
  let x_3273 : vec3<f32> = ((vec3<f32>(x_3266.x, x_3266.y, x_3266.z) * vec3<f32>(x_3268.x, x_3268.x, x_3268.x)) + vec3<f32>(x_3271.x, x_3271.y, x_3271.z));
  let x_3274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3274.w);
  let x_3276 : vec4<f32> = u_xlat8;
  let x_3278 : vec4<f32> = u_xlat0;
  let x_3280 : vec3<f32> = (vec3<f32>(x_3276.x, x_3276.y, x_3276.z) + vec3<f32>(x_3278.x, x_3278.y, x_3278.z));
  let x_3281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
  let x_3283 : f32 = u_xlat63;
  let x_3284 : f32 = u_xlat63;
  u_xlat63 = (x_3283 * -(x_3284));
  let x_3287 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3287);
  let x_3289 : vec4<f32> = u_xlat0;
  let x_3293 : vec4<f32> = x_44.unity_FogColor;
  let x_3296 : vec3<f32> = (vec3<f32>(x_3289.x, x_3289.y, x_3289.z) + -(vec3<f32>(x_3293.x, x_3293.y, x_3293.z)));
  let x_3297 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
  let x_3301 : f32 = u_xlat63;
  let x_3303 : vec4<f32> = u_xlat0;
  let x_3307 : vec4<f32> = x_44.unity_FogColor;
  let x_3309 : vec3<f32> = ((vec3<f32>(x_3301, x_3301, x_3301) * vec3<f32>(x_3303.x, x_3303.y, x_3303.z)) + vec3<f32>(x_3307.x, x_3307.y, x_3307.z));
  let x_3310 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);
  let x_3315 : f32 = x_71.x_Surface;
  u_xlatb0 = (x_3315 == 1.0f);
  let x_3317 : bool = u_xlatb0;
  if (x_3317) {
    let x_3322 : f32 = u_xlat2.x;
    x_3318 = x_3322;
  } else {
    x_3318 = 1.0f;
  }
  let x_3324 : f32 = x_3318;
  SV_Target0.w = x_3324;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

