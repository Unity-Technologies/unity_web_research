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

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_147 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_378 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1927 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2373 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2483 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb66 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat68 : f32;
  var u_xlat4 : vec4<f32>;
  var x_120 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat69 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlat29 : f32;
  var u_xlatb51 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlatb73 : bool;
  var u_xlat52 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat73 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat32 : vec2<f32>;
  var u_xlat60 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
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
  var u_xlatb27 : vec2<bool>;
  var u_xlatb49 : bool;
  var x_1875 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat49 : f32;
  var x_1994 : f32;
  var x_2005 : vec3<f32>;
  var u_xlatu68 : u32;
  var u_xlatb8 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu70 : u32;
  var u_xlati73 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat74 : f32;
  var u_xlatu74 : u32;
  var u_xlati75 : i32;
  var u_xlati74 : i32;
  var u_xlati76 : i32;
  var u_xlatb74 : bool;
  var u_xlat56 : vec2<f32>;
  var u_xlatb56 : vec2<bool>;
  var x_2776 : f32;
  var x_2789 : f32;
  var x_2841 : f32;
  var x_2852 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_3048 : f32;
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
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb66 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat68 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat68;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb66;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec4<f32> = u_xlat4;
    x_120 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  }
  let x_127 : vec3<f32> = x_120;
  u_xlat3 = x_127;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  let x_131 : vec3<f32> = vs_TEXCOORD2;
  u_xlat66 = dot(x_130, x_131);
  let x_133 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_133);
  let x_135 : f32 = u_xlat66;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = (vec3<f32>(x_135, x_135, x_135) * x_137);
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_149 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres0;
  let x_152 : vec3<f32> = (x_142 + -(vec3<f32>(x_149.x, x_149.y, x_149.z)));
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_158 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres1;
  let x_161 : vec3<f32> = (x_156 + -(vec3<f32>(x_158.x, x_158.y, x_158.z)));
  let x_162 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_165 : vec3<f32> = vs_TEXCOORD1;
  let x_168 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres2;
  let x_171 : vec3<f32> = (x_165 + -(vec3<f32>(x_168.x, x_168.y, x_168.z)));
  let x_172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres3;
  let x_181 : vec3<f32> = (x_175 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat5;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = u_xlat6;
  let x_192 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat7;
  let x_198 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat8;
  let x_204 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_211 : vec4<f32> = u_xlat5;
  let x_214 : vec4<f32> = x_147.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_211 < x_214);
  let x_217 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_233);
  let x_239 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_239);
  let x_243 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_243);
  let x_246 : vec4<f32> = u_xlat5;
  let x_248 : vec4<f32> = u_xlat6;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_248.y, x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat5;
  let x_256 : vec3<f32> = max(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
  let x_259 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_259, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_265 : f32 = u_xlat66;
  u_xlat66 = (-(x_265) + 4.0f);
  let x_270 : f32 = u_xlat66;
  u_xlatu66 = u32(x_270);
  let x_274 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_274) << bitcast<u32>(2i));
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : i32 = u_xlati66;
  let x_282 : i32 = u_xlati66;
  let x_286 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_279 + 1i) / 4i)][((x_282 + 1i) % 4i)];
  let x_288 : vec3<f32> = (vec3<f32>(x_277.y, x_277.y, x_277.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : i32 = u_xlati66;
  let x_293 : i32 = u_xlati66;
  let x_296 : vec4<f32> = x_147.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = u_xlat5;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : i32 = u_xlati66;
  let x_309 : i32 = u_xlati66;
  let x_313 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_306 + 2i) / 4i)][((x_309 + 2i) % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec4<f32> = u_xlat5;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat5;
  let x_325 : i32 = u_xlati66;
  let x_328 : i32 = u_xlati66;
  let x_332 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_325 + 3i) / 4i)][((x_328 + 3i) % 4i)];
  let x_334 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = vs_TEXCOORD1.y;
  let x_340 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat66 = (x_338 * x_340);
  let x_343 : f32 = x_44.unity_MatrixV[0i].z;
  let x_345 : f32 = vs_TEXCOORD1.x;
  let x_347 : f32 = u_xlat66;
  u_xlat66 = ((x_343 * x_345) + x_347);
  let x_350 : f32 = x_44.unity_MatrixV[2i].z;
  let x_352 : f32 = vs_TEXCOORD1.z;
  let x_354 : f32 = u_xlat66;
  u_xlat66 = ((x_350 * x_352) + x_354);
  let x_356 : f32 = u_xlat66;
  let x_358 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat66 = (x_356 + x_358);
  let x_360 : f32 = u_xlat66;
  let x_364 : f32 = x_44.x_ProjectionParams.y;
  u_xlat66 = (-(x_360) + -(x_364));
  let x_367 : f32 = u_xlat66;
  u_xlat66 = max(x_367, 0.0f);
  let x_369 : f32 = u_xlat66;
  let x_372 : f32 = x_44.unity_FogParams.x;
  u_xlat66 = (x_369 * x_372);
  u_xlat4.w = 1.0f;
  let x_381 : vec4<f32> = x_378.unity_SHAr;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_378.unity_SHAg;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_378.unity_SHAb;
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_393, x_394);
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_397.y, x_397.z, x_397.z, x_397.x) * vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.z));
  let x_404 : vec4<f32> = x_378.unity_SHBr;
  let x_405 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_378.unity_SHBg;
  let x_411 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_378.unity_SHBb;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_416, x_417);
  let x_421 : f32 = u_xlat4.y;
  let x_423 : f32 = u_xlat4.y;
  u_xlat68 = (x_421 * x_423);
  let x_426 : f32 = u_xlat4.x;
  let x_428 : f32 = u_xlat4.x;
  let x_430 : f32 = u_xlat68;
  u_xlat68 = ((x_426 * x_428) + -(x_430));
  let x_435 : vec4<f32> = x_378.unity_SHC;
  let x_437 : f32 = u_xlat68;
  let x_440 : vec4<f32> = u_xlat8;
  let x_442 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437, x_437, x_437)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat6;
  let x_447 : vec4<f32> = u_xlat7;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  let x_454 : vec3<f32> = max(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_459 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_460 : vec2<f32> = vec2<f32>(x_459.x, x_459.y);
  let x_464 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_460.x, x_460.y));
  let x_465 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = hlslcc_FragCoord;
  let x_471 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_469.x, x_469.y));
  let x_472 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  let x_475 : f32 = u_xlat7.y;
  let x_478 : f32 = x_44.x_ScaleBiasRt.x;
  let x_481 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat68 = ((x_475 * x_478) + x_481);
  let x_483 : f32 = u_xlat68;
  u_xlat7.z = (-(x_483) + 1.0f);
  let x_488 : f32 = x_57.x_Metallic;
  u_xlat68 = ((-(x_488) * 0.959999979f) + 0.959999979f);
  let x_494 : f32 = u_xlat68;
  u_xlat69 = (-(x_494) + 1.0f);
  let x_498 : vec4<f32> = u_xlat1;
  let x_500 : f32 = u_xlat68;
  u_xlat23 = (vec3<f32>(x_498.y, x_498.z, x_498.w) * vec3<f32>(x_500, x_500, x_500));
  let x_503 : vec4<f32> = u_xlat0;
  let x_506 : vec4<f32> = x_57.x_BaseColor;
  let x_511 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_506.x, x_506.y, x_506.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_515 : f32 = x_57.x_Metallic;
  let x_517 : f32 = x_57.x_Metallic;
  let x_519 : f32 = x_57.x_Metallic;
  let x_520 : vec3<f32> = vec3<f32>(x_515, x_517, x_519);
  let x_525 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = ((vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(x_525.x, x_525.y, x_525.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : f32 = x_57.x_Smoothness;
  u_xlat68 = (-(x_534) + 1.0f);
  let x_538 : f32 = u_xlat68;
  let x_539 : f32 = u_xlat68;
  u_xlat70 = (x_538 * x_539);
  let x_541 : f32 = u_xlat70;
  u_xlat70 = max(x_541, 0.0078125f);
  let x_545 : f32 = u_xlat70;
  let x_546 : f32 = u_xlat70;
  u_xlat71 = (x_545 * x_546);
  let x_548 : f32 = u_xlat69;
  let x_550 : f32 = x_57.x_Smoothness;
  u_xlat69 = (x_548 + x_550);
  let x_552 : f32 = u_xlat69;
  u_xlat69 = clamp(x_552, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat70;
  u_xlat72 = ((x_555 * 4.0f) + 2.0f);
  let x_563 : vec4<f32> = u_xlat7;
  let x_566 : f32 = x_44.x_GlobalMipBias.x;
  let x_567 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_563.x, x_563.z), x_566);
  u_xlat7.x = x_567.x;
  let x_572 : f32 = u_xlat7.x;
  u_xlat29 = (x_572 + -1.0f);
  let x_575 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_576 : f32 = u_xlat29;
  u_xlat29 = ((x_575 * x_576) + 1.0f);
  let x_580 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_580, 1.0f);
  let x_585 : f32 = x_147.x_MainLightShadowParams.y;
  u_xlatb51 = (0.0f < x_585);
  let x_587 : bool = u_xlatb51;
  if (x_587) {
    let x_591 : f32 = x_147.x_MainLightShadowParams.y;
    u_xlatb51 = (x_591 == 1.0f);
    let x_593 : bool = u_xlatb51;
    if (x_593) {
      let x_596 : vec4<f32> = u_xlat5;
      let x_599 : vec4<f32> = x_147.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y) + x_599);
      let x_602 : vec4<f32> = u_xlat8;
      let x_603 : vec2<f32> = vec2<f32>(x_602.x, x_602.y);
      let x_605 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_603.x, x_603.y, x_605);
      let x_618 : vec3<f32> = txVec0;
      let x_620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_618.xy, x_618.z);
      u_xlat9.x = x_620;
      let x_623 : vec4<f32> = u_xlat8;
      let x_624 : vec2<f32> = vec2<f32>(x_623.z, x_623.w);
      let x_626 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_624.x, x_624.y, x_626);
      let x_633 : vec3<f32> = txVec1;
      let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_633.xy, x_633.z);
      u_xlat9.y = x_635;
      let x_637 : vec4<f32> = u_xlat5;
      let x_640 : vec4<f32> = x_147.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y) + x_640);
      let x_643 : vec4<f32> = u_xlat8;
      let x_644 : vec2<f32> = vec2<f32>(x_643.x, x_643.y);
      let x_646 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_644.x, x_644.y, x_646);
      let x_653 : vec3<f32> = txVec2;
      let x_655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_653.xy, x_653.z);
      u_xlat9.z = x_655;
      let x_658 : vec4<f32> = u_xlat8;
      let x_659 : vec2<f32> = vec2<f32>(x_658.z, x_658.w);
      let x_661 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_659.x, x_659.y, x_661);
      let x_668 : vec3<f32> = txVec3;
      let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_668.xy, x_668.z);
      u_xlat9.w = x_670;
      let x_674 : vec4<f32> = u_xlat9;
      u_xlat51.x = dot(x_674, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_682 : f32 = x_147.x_MainLightShadowParams.y;
      u_xlatb73 = (x_682 == 2.0f);
      let x_684 : bool = u_xlatb73;
      if (x_684) {
        let x_687 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_695 : vec2<f32> = ((vec2<f32>(x_687.x, x_687.y) * vec2<f32>(x_690.z, x_690.w)) + vec2<f32>(0.5f, 0.5f));
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = floor(vec2<f32>(x_698.x, x_698.y));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
        let x_704 : vec4<f32> = u_xlat5;
        let x_707 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_704.x, x_704.y) * vec2<f32>(x_707.z, x_707.w)) + -(vec2<f32>(x_710.x, x_710.y)));
        let x_714 : vec2<f32> = u_xlat52;
        u_xlat9 = (vec4<f32>(x_714.x, x_714.x, x_714.y, x_714.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_719 : vec4<f32> = u_xlat9;
        let x_721 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_719.x, x_719.x, x_719.z, x_719.z) * vec4<f32>(x_721.x, x_721.x, x_721.z, x_721.z));
        let x_724 : vec4<f32> = u_xlat10;
        let x_728 : vec2<f32> = (vec2<f32>(x_724.y, x_724.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_729 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_728.x, x_729.y, x_728.y, x_729.w);
        let x_731 : vec4<f32> = u_xlat10;
        let x_734 : vec2<f32> = u_xlat52;
        let x_736 : vec2<f32> = ((vec2<f32>(x_731.x, x_731.z) * vec2<f32>(0.5f, 0.5f)) + -(x_734));
        let x_737 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_740 : vec2<f32> = u_xlat52;
        u_xlat54 = (-(x_740) + vec2<f32>(1.0f, 1.0f));
        let x_744 : vec2<f32> = u_xlat52;
        let x_746 : vec2<f32> = min(x_744, vec2<f32>(0.0f, 0.0f));
        let x_747 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_746.x, x_746.y, x_747.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat11;
        let x_752 : vec4<f32> = u_xlat11;
        let x_755 : vec2<f32> = u_xlat54;
        let x_756 : vec2<f32> = ((-(vec2<f32>(x_749.x, x_749.y)) * vec2<f32>(x_752.x, x_752.y)) + x_755);
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
        let x_759 : vec2<f32> = u_xlat52;
        u_xlat52 = max(x_759, vec2<f32>(0.0f, 0.0f));
        let x_761 : vec2<f32> = u_xlat52;
        let x_763 : vec2<f32> = u_xlat52;
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat52 = ((-(x_761) * x_763) + vec2<f32>(x_765.y, x_765.w));
        let x_768 : vec4<f32> = u_xlat11;
        let x_770 : vec2<f32> = (vec2<f32>(x_768.x, x_768.y) + vec2<f32>(1.0f, 1.0f));
        let x_771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
        let x_773 : vec2<f32> = u_xlat52;
        u_xlat52 = (x_773 + vec2<f32>(1.0f, 1.0f));
        let x_776 : vec4<f32> = u_xlat10;
        let x_780 : vec2<f32> = (vec2<f32>(x_776.x, x_776.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_781 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
        let x_783 : vec2<f32> = u_xlat54;
        let x_784 : vec2<f32> = (x_783 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat11;
        let x_789 : vec2<f32> = (vec2<f32>(x_787.x, x_787.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
        let x_793 : vec2<f32> = u_xlat52;
        let x_794 : vec2<f32> = (x_793 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_795 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_797.y, x_797.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_801 : f32 = u_xlat11.x;
        u_xlat12.z = x_801;
        let x_804 : f32 = u_xlat52.x;
        u_xlat12.w = x_804;
        let x_807 : f32 = u_xlat13.x;
        u_xlat10.z = x_807;
        let x_810 : f32 = u_xlat9.x;
        u_xlat10.w = x_810;
        let x_813 : vec4<f32> = u_xlat10;
        let x_815 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_813.z, x_813.w, x_813.x, x_813.z) + vec4<f32>(x_815.z, x_815.w, x_815.x, x_815.z));
        let x_819 : f32 = u_xlat12.y;
        u_xlat11.z = x_819;
        let x_822 : f32 = u_xlat52.y;
        u_xlat11.w = x_822;
        let x_825 : f32 = u_xlat10.y;
        u_xlat13.z = x_825;
        let x_828 : f32 = u_xlat9.z;
        u_xlat13.w = x_828;
        let x_830 : vec4<f32> = u_xlat11;
        let x_832 : vec4<f32> = u_xlat13;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) + vec3<f32>(x_832.z, x_832.y, x_832.w));
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat10;
        let x_839 : vec4<f32> = u_xlat14;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.z, x_837.w) / vec3<f32>(x_839.z, x_839.w, x_839.y));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat10;
        let x_850 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_851 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat13;
        let x_855 : vec4<f32> = u_xlat9;
        let x_857 : vec3<f32> = (vec3<f32>(x_853.z, x_853.y, x_853.w) / vec3<f32>(x_855.x, x_855.y, x_855.z));
        let x_858 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat11;
        let x_862 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_863 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat10;
        let x_868 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_870 : vec3<f32> = (vec3<f32>(x_865.y, x_865.x, x_865.z) * vec3<f32>(x_868.x, x_868.x, x_868.x));
        let x_871 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat11;
        let x_876 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_878 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_876.y, x_876.y, x_876.y));
        let x_879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
        let x_882 : f32 = u_xlat11.x;
        u_xlat10.w = x_882;
        let x_884 : vec4<f32> = u_xlat8;
        let x_887 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_890 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_884.x, x_884.y, x_884.x, x_884.y) * vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y)) + vec4<f32>(x_890.y, x_890.w, x_890.x, x_890.w));
        let x_893 : vec4<f32> = u_xlat8;
        let x_896 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_899 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_896.x, x_896.y)) + vec2<f32>(x_899.z, x_899.w));
        let x_903 : f32 = u_xlat10.y;
        u_xlat11.w = x_903;
        let x_905 : vec4<f32> = u_xlat11;
        let x_906 : vec2<f32> = vec2<f32>(x_905.y, x_905.z);
        let x_907 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_907.x, x_906.x, x_907.z, x_906.y);
        let x_909 : vec4<f32> = u_xlat8;
        let x_912 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y) * vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y)) + vec4<f32>(x_915.x, x_915.y, x_915.z, x_915.y));
        let x_918 : vec4<f32> = u_xlat8;
        let x_921 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_924 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_918.x, x_918.y, x_918.x, x_918.y) * vec4<f32>(x_921.x, x_921.y, x_921.x, x_921.y)) + vec4<f32>(x_924.w, x_924.y, x_924.w, x_924.z));
        let x_927 : vec4<f32> = u_xlat8;
        let x_930 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_933 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_927.x, x_927.y, x_927.x, x_927.y) * vec4<f32>(x_930.x, x_930.y, x_930.x, x_930.y)) + vec4<f32>(x_933.x, x_933.w, x_933.z, x_933.w));
        let x_937 : vec4<f32> = u_xlat9;
        let x_939 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_937.x, x_937.x, x_937.x, x_937.y) * vec4<f32>(x_939.z, x_939.w, x_939.y, x_939.z));
        let x_943 : vec4<f32> = u_xlat9;
        let x_945 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_943.y, x_943.y, x_943.z, x_943.z) * x_945);
        let x_949 : f32 = u_xlat9.z;
        let x_951 : f32 = u_xlat14.y;
        u_xlat73 = (x_949 * x_951);
        let x_954 : vec4<f32> = u_xlat12;
        let x_955 : vec2<f32> = vec2<f32>(x_954.x, x_954.y);
        let x_957 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_955.x, x_955.y, x_957);
        let x_964 : vec3<f32> = txVec4;
        let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
        u_xlat8.x = x_966;
        let x_969 : vec4<f32> = u_xlat12;
        let x_970 : vec2<f32> = vec2<f32>(x_969.z, x_969.w);
        let x_972 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_980 : vec3<f32> = txVec5;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_980.xy, x_980.z);
        u_xlat30 = x_982;
        let x_983 : f32 = u_xlat30;
        let x_985 : f32 = u_xlat15.y;
        u_xlat30 = (x_983 * x_985);
        let x_988 : f32 = u_xlat15.x;
        let x_990 : f32 = u_xlat8.x;
        let x_992 : f32 = u_xlat30;
        u_xlat8.x = ((x_988 * x_990) + x_992);
        let x_996 : vec2<f32> = u_xlat52;
        let x_998 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec6;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat30 = x_1007;
        let x_1009 : f32 = u_xlat15.z;
        let x_1010 : f32 = u_xlat30;
        let x_1013 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1009 * x_1010) + x_1013);
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec7;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat30 = x_1029;
        let x_1031 : f32 = u_xlat15.w;
        let x_1032 : f32 = u_xlat30;
        let x_1035 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1031 * x_1032) + x_1035);
        let x_1039 : vec4<f32> = u_xlat13;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.x, x_1039.y);
        let x_1042 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec8;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
        u_xlat30 = x_1051;
        let x_1053 : f32 = u_xlat16.x;
        let x_1054 : f32 = u_xlat30;
        let x_1057 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1053 * x_1054) + x_1057);
        let x_1061 : vec4<f32> = u_xlat13;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec9;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1071.xy, x_1071.z);
        u_xlat30 = x_1073;
        let x_1075 : f32 = u_xlat16.y;
        let x_1076 : f32 = u_xlat30;
        let x_1079 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1075 * x_1076) + x_1079);
        let x_1083 : vec4<f32> = u_xlat11;
        let x_1084 : vec2<f32> = vec2<f32>(x_1083.z, x_1083.w);
        let x_1086 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1084.x, x_1084.y, x_1086);
        let x_1093 : vec3<f32> = txVec10;
        let x_1095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1093.xy, x_1093.z);
        u_xlat30 = x_1095;
        let x_1097 : f32 = u_xlat16.z;
        let x_1098 : f32 = u_xlat30;
        let x_1101 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1097 * x_1098) + x_1101);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
        let x_1108 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec11;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1115.xy, x_1115.z);
        u_xlat30 = x_1117;
        let x_1119 : f32 = u_xlat16.w;
        let x_1120 : f32 = u_xlat30;
        let x_1123 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1119 * x_1120) + x_1123);
        let x_1127 : vec4<f32> = u_xlat10;
        let x_1128 : vec2<f32> = vec2<f32>(x_1127.z, x_1127.w);
        let x_1130 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1128.x, x_1128.y, x_1130);
        let x_1137 : vec3<f32> = txVec12;
        let x_1139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1137.xy, x_1137.z);
        u_xlat30 = x_1139;
        let x_1140 : f32 = u_xlat73;
        let x_1141 : f32 = u_xlat30;
        let x_1144 : f32 = u_xlat8.x;
        u_xlat51.x = ((x_1140 * x_1141) + x_1144);
      } else {
        let x_1148 : vec4<f32> = u_xlat5;
        let x_1151 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.z, x_1151.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1159 : vec2<f32> = floor(vec2<f32>(x_1157.x, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.z, x_1165.w)) + -(vec2<f32>(x_1168.x, x_1168.y)));
        let x_1172 : vec2<f32> = u_xlat52;
        u_xlat9 = (vec4<f32>(x_1172.x, x_1172.x, x_1172.y, x_1172.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1175.x, x_1175.x, x_1175.z, x_1175.z) * vec4<f32>(x_1177.x, x_1177.x, x_1177.z, x_1177.z));
        let x_1180 : vec4<f32> = u_xlat10;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1180.y, x_1180.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1185 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1184.x, x_1185.z, x_1184.y);
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1190 : vec2<f32> = u_xlat52;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1187.x, x_1187.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1190));
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1192.x, x_1193.y, x_1192.y, x_1193.w);
        let x_1195 : vec2<f32> = u_xlat52;
        let x_1197 : vec2<f32> = (-(x_1195) + vec2<f32>(1.0f, 1.0f));
        let x_1198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec2<f32> = u_xlat52;
        u_xlat54 = min(x_1200, vec2<f32>(0.0f, 0.0f));
        let x_1202 : vec2<f32> = u_xlat54;
        let x_1204 : vec2<f32> = u_xlat54;
        let x_1206 : vec4<f32> = u_xlat10;
        let x_1208 : vec2<f32> = ((-(x_1202) * x_1204) + vec2<f32>(x_1206.x, x_1206.y));
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec2<f32> = u_xlat52;
        u_xlat54 = max(x_1211, vec2<f32>(0.0f, 0.0f));
        let x_1214 : vec2<f32> = u_xlat54;
        let x_1216 : vec2<f32> = u_xlat54;
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1220 : vec2<f32> = ((-(x_1214) * x_1216) + vec2<f32>(x_1218.y, x_1218.w));
        let x_1221 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1220.x, x_1221.y, x_1220.y);
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1226 : vec2<f32> = (vec2<f32>(x_1223.x, x_1223.y) + vec2<f32>(2.0f, 2.0f));
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec3<f32> = u_xlat31;
        let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.z) + vec2<f32>(2.0f, 2.0f));
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1231.x, x_1232.z, x_1231.y);
        let x_1235 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1235 * 0.081632003f);
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1242 : vec3<f32> = (vec3<f32>(x_1239.z, x_1239.x, x_1239.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1243 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat10;
        let x_1248 : vec2<f32> = (vec2<f32>(x_1245.x, x_1245.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1249.w);
        let x_1252 : f32 = u_xlat13.y;
        u_xlat12.x = x_1252;
        let x_1254 : vec2<f32> = u_xlat52;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1254.x, x_1254.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1262 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1262.x, x_1261.x, x_1262.z, x_1261.y);
        let x_1264 : vec2<f32> = u_xlat52;
        let x_1268 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1269.w);
        let x_1272 : f32 = u_xlat9.x;
        u_xlat10.y = x_1272;
        let x_1275 : f32 = u_xlat11.y;
        u_xlat10.w = x_1275;
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1278 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1277 + x_1278);
        let x_1280 : vec2<f32> = u_xlat52;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1280.y, x_1280.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1284 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1284.x, x_1283.x, x_1284.z, x_1283.y);
        let x_1286 : vec2<f32> = u_xlat52;
        let x_1289 : vec2<f32> = ((vec2<f32>(x_1286.y, x_1286.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1290 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1289.x, x_1290.y, x_1289.y, x_1290.w);
        let x_1293 : f32 = u_xlat9.y;
        u_xlat11.y = x_1293;
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1296 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1295 + x_1296);
        let x_1298 : vec4<f32> = u_xlat10;
        let x_1299 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1298 / x_1299);
        let x_1301 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1301 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1307 : vec4<f32> = u_xlat11;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1307 / x_1308);
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1310 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1312 : vec4<f32> = u_xlat10;
        let x_1315 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1312.w, x_1312.x, x_1312.y, x_1312.z) * vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.x));
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1321 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1318.x, x_1318.w, x_1318.y, x_1318.z) * vec4<f32>(x_1321.y, x_1321.y, x_1321.y, x_1321.y));
        let x_1324 : vec4<f32> = u_xlat10;
        let x_1325 : vec3<f32> = vec3<f32>(x_1324.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1325.x, x_1326.y, x_1325.y, x_1325.z);
        let x_1329 : f32 = u_xlat11.x;
        u_xlat13.y = x_1329;
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1334 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1343 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat13;
        u_xlat52 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.w, x_1346.y));
        let x_1350 : f32 = u_xlat13.y;
        u_xlat10.y = x_1350;
        let x_1353 : f32 = u_xlat11.z;
        u_xlat13.y = x_1353;
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1358 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat8;
        let x_1367 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat13;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.w, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat13.y;
        u_xlat10.z = x_1376;
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1382 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y) * vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y)) + vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.z));
        let x_1389 : f32 = u_xlat11.w;
        u_xlat13.y = x_1389;
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1395 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1392.x, x_1392.y, x_1392.x, x_1392.y) * vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y)) + vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1398.y));
        let x_1402 : vec4<f32> = u_xlat8;
        let x_1405 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat13;
        u_xlat32 = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.w, x_1408.y));
        let x_1412 : f32 = u_xlat13.y;
        u_xlat10.w = x_1412;
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1418 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.x, x_1421.w));
        let x_1424 : vec4<f32> = u_xlat13;
        let x_1425 : vec3<f32> = vec3<f32>(x_1424.x, x_1424.z, x_1424.w);
        let x_1426 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1425.x, x_1426.y, x_1425.y, x_1425.z);
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1434 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1428.x, x_1428.y, x_1428.x, x_1428.y) * vec4<f32>(x_1431.x, x_1431.y, x_1431.x, x_1431.y)) + vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1434.y));
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1441 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1438.x, x_1438.y) * vec2<f32>(x_1441.x, x_1441.y)) + vec2<f32>(x_1444.w, x_1444.y));
        let x_1448 : f32 = u_xlat10.x;
        u_xlat11.x = x_1448;
        let x_1450 : vec4<f32> = u_xlat8;
        let x_1453 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1456 : vec4<f32> = u_xlat11;
        let x_1458 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.y) * vec2<f32>(x_1453.x, x_1453.y)) + vec2<f32>(x_1456.x, x_1456.y));
        let x_1459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1464 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1462.x, x_1462.x, x_1462.x, x_1462.x) * x_1464);
        let x_1467 : vec4<f32> = u_xlat9;
        let x_1469 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1467.y, x_1467.y, x_1467.y, x_1467.y) * x_1469);
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1472.z, x_1472.z, x_1472.z, x_1472.z) * x_1474);
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1478 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1476.w, x_1476.w, x_1476.w, x_1476.w) * x_1478);
        let x_1481 : vec4<f32> = u_xlat14;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec13;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat73 = x_1493;
        let x_1495 : vec4<f32> = u_xlat14;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec14;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat10.x = x_1507;
        let x_1510 : f32 = u_xlat10.x;
        let x_1512 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1510 * x_1512);
        let x_1516 : f32 = u_xlat19.x;
        let x_1517 : f32 = u_xlat73;
        let x_1520 : f32 = u_xlat10.x;
        u_xlat73 = ((x_1516 * x_1517) + x_1520);
        let x_1523 : vec2<f32> = u_xlat52;
        let x_1525 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec15;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat52.x = x_1534;
        let x_1537 : f32 = u_xlat19.z;
        let x_1539 : f32 = u_xlat52.x;
        let x_1541 : f32 = u_xlat73;
        u_xlat73 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat17;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec16;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat52.x = x_1556;
        let x_1559 : f32 = u_xlat19.w;
        let x_1561 : f32 = u_xlat52.x;
        let x_1563 : f32 = u_xlat73;
        u_xlat73 = ((x_1559 * x_1561) + x_1563);
        let x_1566 : vec4<f32> = u_xlat15;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.x, x_1566.y);
        let x_1569 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec17;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat52.x = x_1578;
        let x_1581 : f32 = u_xlat20.x;
        let x_1583 : f32 = u_xlat52.x;
        let x_1585 : f32 = u_xlat73;
        u_xlat73 = ((x_1581 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat15;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec18;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat52.x = x_1600;
        let x_1603 : f32 = u_xlat20.y;
        let x_1605 : f32 = u_xlat52.x;
        let x_1607 : f32 = u_xlat73;
        u_xlat73 = ((x_1603 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat16;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
        let x_1613 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec19;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1620.xy, x_1620.z);
        u_xlat52.x = x_1622;
        let x_1625 : f32 = u_xlat20.z;
        let x_1627 : f32 = u_xlat52.x;
        let x_1629 : f32 = u_xlat73;
        u_xlat73 = ((x_1625 * x_1627) + x_1629);
        let x_1632 : vec4<f32> = u_xlat17;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec20;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1642.xy, x_1642.z);
        u_xlat52.x = x_1644;
        let x_1647 : f32 = u_xlat20.w;
        let x_1649 : f32 = u_xlat52.x;
        let x_1651 : f32 = u_xlat73;
        u_xlat73 = ((x_1647 * x_1649) + x_1651);
        let x_1654 : vec4<f32> = u_xlat18;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.x, x_1654.y);
        let x_1657 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec21;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1664.xy, x_1664.z);
        u_xlat52.x = x_1666;
        let x_1669 : f32 = u_xlat21.x;
        let x_1671 : f32 = u_xlat52.x;
        let x_1673 : f32 = u_xlat73;
        u_xlat73 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat18;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.z, x_1676.w);
        let x_1679 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec22;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat52.x = x_1688;
        let x_1691 : f32 = u_xlat21.y;
        let x_1693 : f32 = u_xlat52.x;
        let x_1695 : f32 = u_xlat73;
        u_xlat73 = ((x_1691 * x_1693) + x_1695);
        let x_1698 : vec2<f32> = u_xlat32;
        let x_1700 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec23;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat52.x = x_1709;
        let x_1712 : f32 = u_xlat21.z;
        let x_1714 : f32 = u_xlat52.x;
        let x_1716 : f32 = u_xlat73;
        u_xlat73 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec2<f32> = u_xlat60;
        let x_1721 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec24;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat52.x = x_1730;
        let x_1733 : f32 = u_xlat21.w;
        let x_1735 : f32 = u_xlat52.x;
        let x_1737 : f32 = u_xlat73;
        u_xlat73 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat13;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
        let x_1743 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec25;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat52.x = x_1752;
        let x_1755 : f32 = u_xlat9.x;
        let x_1757 : f32 = u_xlat52.x;
        let x_1759 : f32 = u_xlat73;
        u_xlat73 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat13;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.z, x_1762.w);
        let x_1765 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec26;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1772.xy, x_1772.z);
        u_xlat52.x = x_1774;
        let x_1777 : f32 = u_xlat9.y;
        let x_1779 : f32 = u_xlat52.x;
        let x_1781 : f32 = u_xlat73;
        u_xlat73 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec2<f32> = u_xlat55;
        let x_1786 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1784.x, x_1784.y, x_1786);
        let x_1793 : vec3<f32> = txVec27;
        let x_1795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1793.xy, x_1793.z);
        u_xlat52.x = x_1795;
        let x_1798 : f32 = u_xlat9.z;
        let x_1800 : f32 = u_xlat52.x;
        let x_1802 : f32 = u_xlat73;
        u_xlat73 = ((x_1798 * x_1800) + x_1802);
        let x_1805 : vec4<f32> = u_xlat8;
        let x_1806 : vec2<f32> = vec2<f32>(x_1805.x, x_1805.y);
        let x_1808 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1806.x, x_1806.y, x_1808);
        let x_1815 : vec3<f32> = txVec28;
        let x_1817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1815.xy, x_1815.z);
        u_xlat8.x = x_1817;
        let x_1820 : f32 = u_xlat9.w;
        let x_1822 : f32 = u_xlat8.x;
        let x_1824 : f32 = u_xlat73;
        u_xlat51.x = ((x_1820 * x_1822) + x_1824);
      }
    }
  } else {
    let x_1829 : vec4<f32> = u_xlat5;
    let x_1830 : vec2<f32> = vec2<f32>(x_1829.x, x_1829.y);
    let x_1832 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
    let x_1839 : vec3<f32> = txVec29;
    let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
    u_xlat51.x = x_1841;
  }
  let x_1844 : f32 = x_147.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1844) + 1.0f);
  let x_1849 : f32 = u_xlat51.x;
  let x_1851 : f32 = x_147.x_MainLightShadowParams.x;
  let x_1854 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1849 * x_1851) + x_1854);
  let x_1861 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1861);
  let x_1866 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1866 >= 1.0f);
  let x_1868 : bool = u_xlatb49;
  let x_1870 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1868 | x_1870);
  let x_1874 : bool = u_xlatb27.x;
  if (x_1874) {
    x_1875 = 1.0f;
  } else {
    let x_1880 : f32 = u_xlat5.x;
    x_1875 = x_1880;
  }
  let x_1881 : f32 = x_1875;
  u_xlat5.x = x_1881;
  let x_1883 : vec3<f32> = vs_TEXCOORD1;
  let x_1885 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1887 : vec3<f32> = (x_1883 + -(x_1885));
  let x_1888 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1891 : vec4<f32> = u_xlat8;
  let x_1893 : vec4<f32> = u_xlat8;
  u_xlat27.x = dot(vec3<f32>(x_1891.x, x_1891.y, x_1891.z), vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1898 : f32 = u_xlat27.x;
  let x_1900 : f32 = x_147.x_MainLightShadowParams.z;
  let x_1903 : f32 = x_147.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1898 * x_1900) + x_1903);
  let x_1907 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1907, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1912) + 1.0f);
  let x_1916 : f32 = u_xlat27.x;
  let x_1917 : f32 = u_xlat49;
  let x_1920 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1916 * x_1917) + x_1920);
  let x_1929 : f32 = x_1927.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1929 == -1.0f));
  let x_1933 : bool = u_xlatb27.x;
  if (x_1933) {
    let x_1936 : vec3<f32> = vs_TEXCOORD1;
    let x_1939 : vec4<f32> = x_1927.x_MainLightWorldToLight[1i];
    u_xlat27 = (vec2<f32>(x_1936.y, x_1936.y) * vec2<f32>(x_1939.x, x_1939.y));
    let x_1943 : vec4<f32> = x_1927.x_MainLightWorldToLight[0i];
    let x_1945 : vec3<f32> = vs_TEXCOORD1;
    let x_1948 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1943.x, x_1943.y) * vec2<f32>(x_1945.x, x_1945.x)) + x_1948);
    let x_1951 : vec4<f32> = x_1927.x_MainLightWorldToLight[2i];
    let x_1953 : vec3<f32> = vs_TEXCOORD1;
    let x_1956 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1951.x, x_1951.y) * vec2<f32>(x_1953.z, x_1953.z)) + x_1956);
    let x_1958 : vec2<f32> = u_xlat27;
    let x_1960 : vec4<f32> = x_1927.x_MainLightWorldToLight[3i];
    u_xlat27 = (x_1958 + vec2<f32>(x_1960.x, x_1960.y));
    let x_1963 : vec2<f32> = u_xlat27;
    u_xlat27 = ((x_1963 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1971 : vec2<f32> = u_xlat27;
    let x_1973 : f32 = x_44.x_GlobalMipBias.x;
    let x_1974 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1971, x_1973);
    u_xlat8 = x_1974;
    let x_1976 : f32 = x_1927.x_MainLightCookieTextureFormat;
    let x_1978 : f32 = x_1927.x_MainLightCookieTextureFormat;
    let x_1980 : f32 = x_1927.x_MainLightCookieTextureFormat;
    let x_1982 : f32 = x_1927.x_MainLightCookieTextureFormat;
    let x_1983 : vec4<f32> = vec4<f32>(x_1976, x_1978, x_1980, x_1982);
    let x_1990 : vec4<bool> = (vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1983.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1990.x, x_1990.y);
    let x_1993 : bool = u_xlatb27.y;
    if (x_1993) {
      let x_1998 : f32 = u_xlat8.w;
      x_1994 = x_1998;
    } else {
      let x_2001 : f32 = u_xlat8.x;
      x_1994 = x_2001;
    }
    let x_2002 : f32 = x_1994;
    u_xlat49 = x_2002;
    let x_2004 : bool = u_xlatb27.x;
    if (x_2004) {
      let x_2008 : vec4<f32> = u_xlat8;
      x_2005 = vec3<f32>(x_2008.x, x_2008.y, x_2008.z);
    } else {
      let x_2011 : f32 = u_xlat49;
      x_2005 = vec3<f32>(x_2011, x_2011, x_2011);
    }
    let x_2013 : vec3<f32> = x_2005;
    let x_2014 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_2020 : vec4<f32> = u_xlat8;
  let x_2023 : vec4<f32> = x_44.x_MainLightColor;
  let x_2025 : vec3<f32> = (vec3<f32>(x_2020.x, x_2020.y, x_2020.z) * vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : f32 = u_xlat29;
  let x_2030 : vec4<f32> = u_xlat8;
  let x_2032 : vec3<f32> = (vec3<f32>(x_2028, x_2028, x_2028) * vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
  let x_2033 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
  let x_2035 : vec3<f32> = u_xlat3;
  let x_2037 : vec4<f32> = u_xlat4;
  u_xlat27.x = dot(-(x_2035), vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2042 : f32 = u_xlat27.x;
  let x_2044 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2042 + x_2044);
  let x_2047 : vec4<f32> = u_xlat4;
  let x_2049 : vec2<f32> = u_xlat27;
  let x_2053 : vec3<f32> = u_xlat3;
  let x_2055 : vec3<f32> = ((vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * -(vec3<f32>(x_2049.x, x_2049.x, x_2049.x))) + -(x_2053));
  let x_2056 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2058 : vec4<f32> = u_xlat4;
  let x_2060 : vec3<f32> = u_xlat3;
  u_xlat27.x = dot(vec3<f32>(x_2058.x, x_2058.y, x_2058.z), x_2060);
  let x_2064 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2064, 0.0f, 1.0f);
  let x_2068 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_2068) + 1.0f);
  let x_2073 : f32 = u_xlat27.x;
  let x_2075 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2073 * x_2075);
  let x_2079 : f32 = u_xlat27.x;
  let x_2081 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2079 * x_2081);
  let x_2084 : f32 = u_xlat68;
  u_xlat49 = ((-(x_2084) * 0.699999988f) + 1.700000048f);
  let x_2090 : f32 = u_xlat68;
  let x_2091 : f32 = u_xlat49;
  u_xlat68 = (x_2090 * x_2091);
  let x_2093 : f32 = u_xlat68;
  u_xlat68 = (x_2093 * 6.0f);
  let x_2104 : vec4<f32> = u_xlat9;
  let x_2106 : f32 = u_xlat68;
  let x_2107 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2104.x, x_2104.y, x_2104.z), x_2106);
  u_xlat9 = x_2107;
  let x_2109 : f32 = u_xlat9.w;
  u_xlat68 = (x_2109 + -1.0f);
  let x_2112 : f32 = x_378.unity_SpecCube0_HDR.w;
  let x_2113 : f32 = u_xlat68;
  u_xlat68 = ((x_2112 * x_2113) + 1.0f);
  let x_2116 : f32 = u_xlat68;
  u_xlat68 = max(x_2116, 0.0f);
  let x_2118 : f32 = u_xlat68;
  u_xlat68 = log2(x_2118);
  let x_2120 : f32 = u_xlat68;
  let x_2122 : f32 = x_378.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_2120 * x_2122);
  let x_2124 : f32 = u_xlat68;
  u_xlat68 = exp2(x_2124);
  let x_2126 : f32 = u_xlat68;
  let x_2128 : f32 = x_378.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_2126 * x_2128);
  let x_2130 : vec4<f32> = u_xlat9;
  let x_2132 : f32 = u_xlat68;
  let x_2134 : vec3<f32> = (vec3<f32>(x_2130.x, x_2130.y, x_2130.z) * vec3<f32>(x_2132, x_2132, x_2132));
  let x_2135 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
  let x_2137 : f32 = u_xlat70;
  let x_2139 : f32 = u_xlat70;
  u_xlat51 = ((vec2<f32>(x_2137, x_2137) * vec2<f32>(x_2139, x_2139)) + vec2<f32>(-1.0f, 1.0f));
  let x_2145 : f32 = u_xlat51.y;
  u_xlat68 = (1.0f / x_2145);
  let x_2147 : vec4<f32> = u_xlat0;
  let x_2150 : f32 = u_xlat69;
  let x_2152 : vec3<f32> = (-(vec3<f32>(x_2147.x, x_2147.y, x_2147.z)) + vec3<f32>(x_2150, x_2150, x_2150));
  let x_2153 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
  let x_2155 : vec2<f32> = u_xlat27;
  let x_2157 : vec4<f32> = u_xlat10;
  let x_2160 : vec4<f32> = u_xlat0;
  let x_2162 : vec3<f32> = ((vec3<f32>(x_2155.x, x_2155.x, x_2155.x) * vec3<f32>(x_2157.x, x_2157.y, x_2157.z)) + vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
  let x_2163 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : f32 = u_xlat68;
  let x_2167 : vec4<f32> = u_xlat10;
  let x_2169 : vec3<f32> = (vec3<f32>(x_2165, x_2165, x_2165) * vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
  let x_2170 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2172 : vec4<f32> = u_xlat9;
  let x_2174 : vec4<f32> = u_xlat10;
  let x_2176 : vec3<f32> = (vec3<f32>(x_2172.x, x_2172.y, x_2172.z) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2179 : vec4<f32> = u_xlat6;
  let x_2181 : vec3<f32> = u_xlat23;
  let x_2183 : vec4<f32> = u_xlat9;
  let x_2185 : vec3<f32> = ((vec3<f32>(x_2179.x, x_2179.y, x_2179.z) * x_2181) + vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2186 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2189 : f32 = u_xlat5.x;
  let x_2191 : f32 = x_378.unity_LightData.z;
  u_xlat68 = (x_2189 * x_2191);
  let x_2193 : vec4<f32> = u_xlat4;
  let x_2196 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
  let x_2199 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2199, 0.0f, 1.0f);
  let x_2201 : f32 = u_xlat68;
  let x_2202 : f32 = u_xlat69;
  u_xlat68 = (x_2201 * x_2202);
  let x_2204 : f32 = u_xlat68;
  let x_2206 : vec4<f32> = u_xlat8;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204, x_2204, x_2204) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec3<f32> = u_xlat3;
  let x_2213 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2215 : vec3<f32> = (x_2211 + vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2216 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
  let x_2218 : vec4<f32> = u_xlat8;
  let x_2220 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2218.x, x_2218.y, x_2218.z), vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2223 : f32 = u_xlat68;
  u_xlat68 = max(x_2223, 1.17549435e-37f);
  let x_2226 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2226);
  let x_2228 : f32 = u_xlat68;
  let x_2230 : vec4<f32> = u_xlat8;
  let x_2232 : vec3<f32> = (vec3<f32>(x_2228, x_2228, x_2228) * vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
  let x_2233 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
  let x_2235 : vec4<f32> = u_xlat4;
  let x_2237 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2235.x, x_2235.y, x_2235.z), vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
  let x_2240 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2240, 0.0f, 1.0f);
  let x_2243 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2245 : vec4<f32> = u_xlat8;
  u_xlat69 = dot(vec3<f32>(x_2243.x, x_2243.y, x_2243.z), vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2248 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2248, 0.0f, 1.0f);
  let x_2250 : f32 = u_xlat68;
  let x_2251 : f32 = u_xlat68;
  u_xlat68 = (x_2250 * x_2251);
  let x_2253 : f32 = u_xlat68;
  let x_2255 : f32 = u_xlat51.x;
  u_xlat68 = ((x_2253 * x_2255) + 1.000010014f);
  let x_2259 : f32 = u_xlat69;
  let x_2260 : f32 = u_xlat69;
  u_xlat69 = (x_2259 * x_2260);
  let x_2262 : f32 = u_xlat68;
  let x_2263 : f32 = u_xlat68;
  u_xlat68 = (x_2262 * x_2263);
  let x_2265 : f32 = u_xlat69;
  u_xlat69 = max(x_2265, 0.100000001f);
  let x_2268 : f32 = u_xlat68;
  let x_2269 : f32 = u_xlat69;
  u_xlat68 = (x_2268 * x_2269);
  let x_2271 : f32 = u_xlat72;
  let x_2272 : f32 = u_xlat68;
  u_xlat68 = (x_2271 * x_2272);
  let x_2274 : f32 = u_xlat71;
  let x_2275 : f32 = u_xlat68;
  u_xlat68 = (x_2274 / x_2275);
  let x_2277 : vec4<f32> = u_xlat0;
  let x_2279 : f32 = u_xlat68;
  let x_2282 : vec3<f32> = u_xlat23;
  let x_2283 : vec3<f32> = ((vec3<f32>(x_2277.x, x_2277.y, x_2277.z) * vec3<f32>(x_2279, x_2279, x_2279)) + x_2282);
  let x_2284 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  let x_2286 : vec4<f32> = u_xlat5;
  let x_2288 : vec4<f32> = u_xlat8;
  let x_2290 : vec3<f32> = (vec3<f32>(x_2286.x, x_2286.y, x_2286.z) * vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
  let x_2291 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
  let x_2294 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2296 : f32 = x_378.unity_LightData.y;
  u_xlat68 = min(x_2294, x_2296);
  let x_2299 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2299));
  let x_2304 : f32 = x_1927.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2306 : f32 = x_1927.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2308 : f32 = x_1927.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2310 : f32 = x_1927.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2311 : vec4<f32> = vec4<f32>(x_2304, x_2306, x_2308, x_2310);
  let x_2317 : vec4<bool> = (vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2311.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2317.x, x_2317.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2328 : u32 = u_xlatu_loop_1;
    let x_2329 : u32 = u_xlatu68;
    if ((x_2328 < x_2329)) {
    } else {
      break;
    }
    let x_2332 : u32 = u_xlatu_loop_1;
    u_xlatu70 = (x_2332 >> 2u);
    let x_2335 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2335 & 3u));
    let x_2338 : u32 = u_xlatu70;
    let x_2341 : vec4<f32> = x_378.unity_LightIndices[bitcast<i32>(x_2338)];
    let x_2351 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2356 : vec4<u32> = indexable[x_2351];
    u_xlat70 = dot(x_2341, bitcast<vec4<f32>>(x_2356));
    let x_2359 : f32 = u_xlat70;
    u_xlatu70 = bitcast<u32>(i32(x_2359));
    let x_2362 : vec3<f32> = vs_TEXCOORD1;
    let x_2374 : u32 = u_xlatu70;
    let x_2377 : vec4<f32> = x_2373.x_AdditionalLightsPosition[bitcast<i32>(x_2374)];
    let x_2380 : u32 = u_xlatu70;
    let x_2383 : vec4<f32> = x_2373.x_AdditionalLightsPosition[bitcast<i32>(x_2380)];
    let x_2385 : vec3<f32> = ((-(x_2362) * vec3<f32>(x_2377.w, x_2377.w, x_2377.w)) + vec3<f32>(x_2383.x, x_2383.y, x_2383.z));
    let x_2386 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
    let x_2388 : vec4<f32> = u_xlat10;
    let x_2390 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2388.x, x_2388.y, x_2388.z), vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
    let x_2393 : f32 = u_xlat73;
    u_xlat73 = max(x_2393, 6.10351562e-05f);
    let x_2396 : f32 = u_xlat73;
    u_xlat52.x = inverseSqrt(x_2396);
    let x_2399 : vec2<f32> = u_xlat52;
    let x_2401 : vec4<f32> = u_xlat10;
    let x_2403 : vec3<f32> = (vec3<f32>(x_2399.x, x_2399.x, x_2399.x) * vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
    let x_2404 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
    let x_2407 : f32 = u_xlat73;
    u_xlat74 = (1.0f / x_2407);
    let x_2409 : f32 = u_xlat73;
    let x_2410 : u32 = u_xlatu70;
    let x_2413 : f32 = x_2373.x_AdditionalLightsAttenuation[bitcast<i32>(x_2410)].x;
    u_xlat73 = (x_2409 * x_2413);
    let x_2415 : f32 = u_xlat73;
    let x_2417 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2415) * x_2417) + 1.0f);
    let x_2420 : f32 = u_xlat73;
    u_xlat73 = max(x_2420, 0.0f);
    let x_2422 : f32 = u_xlat73;
    let x_2423 : f32 = u_xlat73;
    u_xlat73 = (x_2422 * x_2423);
    let x_2425 : f32 = u_xlat73;
    let x_2426 : f32 = u_xlat74;
    u_xlat73 = (x_2425 * x_2426);
    let x_2428 : u32 = u_xlatu70;
    let x_2431 : vec4<f32> = x_2373.x_AdditionalLightsSpotDir[bitcast<i32>(x_2428)];
    let x_2433 : vec4<f32> = u_xlat11;
    u_xlat74 = dot(vec3<f32>(x_2431.x, x_2431.y, x_2431.z), vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
    let x_2436 : f32 = u_xlat74;
    let x_2437 : u32 = u_xlatu70;
    let x_2440 : f32 = x_2373.x_AdditionalLightsAttenuation[bitcast<i32>(x_2437)].z;
    let x_2442 : u32 = u_xlatu70;
    let x_2445 : f32 = x_2373.x_AdditionalLightsAttenuation[bitcast<i32>(x_2442)].w;
    u_xlat74 = ((x_2436 * x_2440) + x_2445);
    let x_2447 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2447, 0.0f, 1.0f);
    let x_2449 : f32 = u_xlat74;
    let x_2450 : f32 = u_xlat74;
    u_xlat74 = (x_2449 * x_2450);
    let x_2452 : f32 = u_xlat73;
    let x_2453 : f32 = u_xlat74;
    u_xlat73 = (x_2452 * x_2453);
    let x_2456 : u32 = u_xlatu70;
    u_xlatu74 = (x_2456 >> 5u);
    let x_2459 : u32 = u_xlatu70;
    u_xlati75 = (1i << bitcast<u32>((bitcast<i32>(x_2459) & 31i)));
    let x_2465 : i32 = u_xlati75;
    let x_2467 : u32 = u_xlatu74;
    let x_2470 : f32 = x_1927.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2467)].el;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_2465) & bitcast<u32>(x_2470)));
    let x_2474 : i32 = u_xlati74;
    if ((x_2474 != 0i)) {
      let x_2484 : u32 = u_xlatu70;
      let x_2487 : f32 = x_2483.x_AdditionalLightsLightTypes[bitcast<i32>(x_2484)].el;
      u_xlati74 = i32(x_2487);
      let x_2489 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_2489 != 0i));
      let x_2493 : u32 = u_xlatu70;
      u_xlati76 = (bitcast<i32>(x_2493) << bitcast<u32>(2i));
      let x_2496 : i32 = u_xlati75;
      if ((x_2496 != 0i)) {
        let x_2500 : vec3<f32> = vs_TEXCOORD1;
        let x_2502 : i32 = u_xlati76;
        let x_2505 : i32 = u_xlati76;
        let x_2509 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2502 + 1i) / 4i)][((x_2505 + 1i) % 4i)];
        let x_2511 : vec3<f32> = (vec3<f32>(x_2500.y, x_2500.y, x_2500.y) * vec3<f32>(x_2509.x, x_2509.y, x_2509.w));
        let x_2512 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
        let x_2514 : i32 = u_xlati76;
        let x_2516 : i32 = u_xlati76;
        let x_2519 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[(x_2514 / 4i)][(x_2516 % 4i)];
        let x_2521 : vec3<f32> = vs_TEXCOORD1;
        let x_2524 : vec4<f32> = u_xlat12;
        let x_2526 : vec3<f32> = ((vec3<f32>(x_2519.x, x_2519.y, x_2519.w) * vec3<f32>(x_2521.x, x_2521.x, x_2521.x)) + vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
        let x_2527 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
        let x_2529 : i32 = u_xlati76;
        let x_2532 : i32 = u_xlati76;
        let x_2536 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2529 + 2i) / 4i)][((x_2532 + 2i) % 4i)];
        let x_2538 : vec3<f32> = vs_TEXCOORD1;
        let x_2541 : vec4<f32> = u_xlat12;
        let x_2543 : vec3<f32> = ((vec3<f32>(x_2536.x, x_2536.y, x_2536.w) * vec3<f32>(x_2538.z, x_2538.z, x_2538.z)) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
        let x_2544 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
        let x_2546 : vec4<f32> = u_xlat12;
        let x_2548 : i32 = u_xlati76;
        let x_2551 : i32 = u_xlati76;
        let x_2555 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2548 + 3i) / 4i)][((x_2551 + 3i) % 4i)];
        let x_2557 : vec3<f32> = (vec3<f32>(x_2546.x, x_2546.y, x_2546.z) + vec3<f32>(x_2555.x, x_2555.y, x_2555.w));
        let x_2558 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
        let x_2560 : vec4<f32> = u_xlat12;
        let x_2562 : vec4<f32> = u_xlat12;
        let x_2564 : vec2<f32> = (vec2<f32>(x_2560.x, x_2560.y) / vec2<f32>(x_2562.z, x_2562.z));
        let x_2565 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
        let x_2567 : vec4<f32> = u_xlat12;
        let x_2570 : vec2<f32> = ((vec2<f32>(x_2567.x, x_2567.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2571 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
        let x_2573 : vec4<f32> = u_xlat12;
        let x_2577 : vec2<f32> = clamp(vec2<f32>(x_2573.x, x_2573.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2578 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2577.x, x_2577.y, x_2578.z, x_2578.w);
        let x_2580 : u32 = u_xlatu70;
        let x_2583 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2580)];
        let x_2585 : vec4<f32> = u_xlat12;
        let x_2588 : u32 = u_xlatu70;
        let x_2591 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2588)];
        let x_2593 : vec2<f32> = ((vec2<f32>(x_2583.x, x_2583.y) * vec2<f32>(x_2585.x, x_2585.y)) + vec2<f32>(x_2591.z, x_2591.w));
        let x_2594 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
      } else {
        let x_2598 : i32 = u_xlati74;
        u_xlatb74 = (x_2598 == 1i);
        let x_2600 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_2600);
        let x_2602 : i32 = u_xlati74;
        if ((x_2602 != 0i)) {
          let x_2607 : vec3<f32> = vs_TEXCOORD1;
          let x_2609 : i32 = u_xlati76;
          let x_2612 : i32 = u_xlati76;
          let x_2616 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2609 + 1i) / 4i)][((x_2612 + 1i) % 4i)];
          u_xlat56 = (vec2<f32>(x_2607.y, x_2607.y) * vec2<f32>(x_2616.x, x_2616.y));
          let x_2619 : i32 = u_xlati76;
          let x_2621 : i32 = u_xlati76;
          let x_2624 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[(x_2619 / 4i)][(x_2621 % 4i)];
          let x_2626 : vec3<f32> = vs_TEXCOORD1;
          let x_2629 : vec2<f32> = u_xlat56;
          u_xlat56 = ((vec2<f32>(x_2624.x, x_2624.y) * vec2<f32>(x_2626.x, x_2626.x)) + x_2629);
          let x_2631 : i32 = u_xlati76;
          let x_2634 : i32 = u_xlati76;
          let x_2638 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2631 + 2i) / 4i)][((x_2634 + 2i) % 4i)];
          let x_2640 : vec3<f32> = vs_TEXCOORD1;
          let x_2643 : vec2<f32> = u_xlat56;
          u_xlat56 = ((vec2<f32>(x_2638.x, x_2638.y) * vec2<f32>(x_2640.z, x_2640.z)) + x_2643);
          let x_2645 : vec2<f32> = u_xlat56;
          let x_2646 : i32 = u_xlati76;
          let x_2649 : i32 = u_xlati76;
          let x_2653 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2646 + 3i) / 4i)][((x_2649 + 3i) % 4i)];
          u_xlat56 = (x_2645 + vec2<f32>(x_2653.x, x_2653.y));
          let x_2656 : vec2<f32> = u_xlat56;
          u_xlat56 = ((x_2656 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2659 : vec2<f32> = u_xlat56;
          u_xlat56 = fract(x_2659);
          let x_2661 : u32 = u_xlatu70;
          let x_2664 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2661)];
          let x_2666 : vec2<f32> = u_xlat56;
          let x_2668 : u32 = u_xlatu70;
          let x_2671 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2668)];
          let x_2673 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.y) * x_2666) + vec2<f32>(x_2671.z, x_2671.w));
          let x_2674 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2673.x, x_2673.y, x_2674.z, x_2674.w);
        } else {
          let x_2677 : vec3<f32> = vs_TEXCOORD1;
          let x_2679 : i32 = u_xlati76;
          let x_2682 : i32 = u_xlati76;
          let x_2686 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2679 + 1i) / 4i)][((x_2682 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2677.y, x_2677.y, x_2677.y, x_2677.y) * x_2686);
          let x_2688 : i32 = u_xlati76;
          let x_2690 : i32 = u_xlati76;
          let x_2693 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[(x_2688 / 4i)][(x_2690 % 4i)];
          let x_2694 : vec3<f32> = vs_TEXCOORD1;
          let x_2697 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2693 * vec4<f32>(x_2694.x, x_2694.x, x_2694.x, x_2694.x)) + x_2697);
          let x_2699 : i32 = u_xlati76;
          let x_2702 : i32 = u_xlati76;
          let x_2706 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2699 + 2i) / 4i)][((x_2702 + 2i) % 4i)];
          let x_2707 : vec3<f32> = vs_TEXCOORD1;
          let x_2710 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2706 * vec4<f32>(x_2707.z, x_2707.z, x_2707.z, x_2707.z)) + x_2710);
          let x_2712 : vec4<f32> = u_xlat13;
          let x_2713 : i32 = u_xlati76;
          let x_2716 : i32 = u_xlati76;
          let x_2720 : vec4<f32> = x_2483.x_AdditionalLightsWorldToLights[((x_2713 + 3i) / 4i)][((x_2716 + 3i) % 4i)];
          u_xlat13 = (x_2712 + x_2720);
          let x_2722 : vec4<f32> = u_xlat13;
          let x_2724 : vec4<f32> = u_xlat13;
          let x_2726 : vec3<f32> = (vec3<f32>(x_2722.x, x_2722.y, x_2722.z) / vec3<f32>(x_2724.w, x_2724.w, x_2724.w));
          let x_2727 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2727.w);
          let x_2729 : vec4<f32> = u_xlat13;
          let x_2731 : vec4<f32> = u_xlat13;
          u_xlat74 = dot(vec3<f32>(x_2729.x, x_2729.y, x_2729.z), vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
          let x_2734 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_2734);
          let x_2736 : f32 = u_xlat74;
          let x_2738 : vec4<f32> = u_xlat13;
          let x_2740 : vec3<f32> = (vec3<f32>(x_2736, x_2736, x_2736) * vec3<f32>(x_2738.x, x_2738.y, x_2738.z));
          let x_2741 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2741.w);
          let x_2743 : vec4<f32> = u_xlat13;
          u_xlat74 = dot(abs(vec3<f32>(x_2743.x, x_2743.y, x_2743.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2748 : f32 = u_xlat74;
          u_xlat74 = max(x_2748, 0.000001f);
          let x_2751 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_2751);
          let x_2753 : f32 = u_xlat74;
          let x_2755 : vec4<f32> = u_xlat13;
          let x_2757 : vec3<f32> = (vec3<f32>(x_2753, x_2753, x_2753) * vec3<f32>(x_2755.z, x_2755.x, x_2755.y));
          let x_2758 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
          let x_2761 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2761);
          let x_2765 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2765, 0.0f, 1.0f);
          let x_2769 : vec4<f32> = u_xlat14;
          let x_2772 : vec4<bool> = (vec4<f32>(x_2769.y, x_2769.z, x_2769.y, x_2769.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2772.x, x_2772.y);
          let x_2775 : bool = u_xlatb56.x;
          if (x_2775) {
            let x_2780 : f32 = u_xlat14.x;
            x_2776 = x_2780;
          } else {
            let x_2783 : f32 = u_xlat14.x;
            x_2776 = -(x_2783);
          }
          let x_2785 : f32 = x_2776;
          u_xlat56.x = x_2785;
          let x_2788 : bool = u_xlatb56.y;
          if (x_2788) {
            let x_2793 : f32 = u_xlat14.x;
            x_2789 = x_2793;
          } else {
            let x_2796 : f32 = u_xlat14.x;
            x_2789 = -(x_2796);
          }
          let x_2798 : f32 = x_2789;
          u_xlat56.y = x_2798;
          let x_2800 : vec4<f32> = u_xlat13;
          let x_2802 : f32 = u_xlat74;
          let x_2805 : vec2<f32> = u_xlat56;
          u_xlat56 = ((vec2<f32>(x_2800.x, x_2800.y) * vec2<f32>(x_2802, x_2802)) + x_2805);
          let x_2807 : vec2<f32> = u_xlat56;
          u_xlat56 = ((x_2807 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2810 : vec2<f32> = u_xlat56;
          u_xlat56 = clamp(x_2810, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2814 : u32 = u_xlatu70;
          let x_2817 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2814)];
          let x_2819 : vec2<f32> = u_xlat56;
          let x_2821 : u32 = u_xlatu70;
          let x_2824 : vec4<f32> = x_2483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2821)];
          let x_2826 : vec2<f32> = ((vec2<f32>(x_2817.x, x_2817.y) * x_2819) + vec2<f32>(x_2824.z, x_2824.w));
          let x_2827 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2826.x, x_2826.y, x_2827.z, x_2827.w);
        }
      }
      let x_2834 : vec4<f32> = u_xlat12;
      let x_2837 : f32 = x_44.x_GlobalMipBias.x;
      let x_2838 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2834.x, x_2834.y), x_2837);
      u_xlat12 = x_2838;
      let x_2840 : bool = u_xlatb8.y;
      if (x_2840) {
        let x_2845 : f32 = u_xlat12.w;
        x_2841 = x_2845;
      } else {
        let x_2848 : f32 = u_xlat12.x;
        x_2841 = x_2848;
      }
      let x_2849 : f32 = x_2841;
      u_xlat74 = x_2849;
      let x_2851 : bool = u_xlatb8.x;
      if (x_2851) {
        let x_2855 : vec4<f32> = u_xlat12;
        x_2852 = vec3<f32>(x_2855.x, x_2855.y, x_2855.z);
      } else {
        let x_2858 : f32 = u_xlat74;
        x_2852 = vec3<f32>(x_2858, x_2858, x_2858);
      }
      let x_2860 : vec3<f32> = x_2852;
      let x_2861 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2860.x, x_2860.y, x_2860.z, x_2861.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2867 : vec4<f32> = u_xlat12;
    let x_2869 : u32 = u_xlatu70;
    let x_2872 : vec4<f32> = x_2373.x_AdditionalLightsColor[bitcast<i32>(x_2869)];
    let x_2874 : vec3<f32> = (vec3<f32>(x_2867.x, x_2867.y, x_2867.z) * vec3<f32>(x_2872.x, x_2872.y, x_2872.z));
    let x_2875 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2874.x, x_2874.y, x_2874.z, x_2875.w);
    let x_2877 : f32 = u_xlat29;
    let x_2879 : vec4<f32> = u_xlat12;
    let x_2881 : vec3<f32> = (vec3<f32>(x_2877, x_2877, x_2877) * vec3<f32>(x_2879.x, x_2879.y, x_2879.z));
    let x_2882 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
    let x_2884 : vec4<f32> = u_xlat4;
    let x_2886 : vec4<f32> = u_xlat11;
    u_xlat70 = dot(vec3<f32>(x_2884.x, x_2884.y, x_2884.z), vec3<f32>(x_2886.x, x_2886.y, x_2886.z));
    let x_2889 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2889, 0.0f, 1.0f);
    let x_2891 : f32 = u_xlat70;
    let x_2892 : f32 = u_xlat73;
    u_xlat70 = (x_2891 * x_2892);
    let x_2894 : f32 = u_xlat70;
    let x_2896 : vec4<f32> = u_xlat12;
    let x_2898 : vec3<f32> = (vec3<f32>(x_2894, x_2894, x_2894) * vec3<f32>(x_2896.x, x_2896.y, x_2896.z));
    let x_2899 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
    let x_2901 : vec4<f32> = u_xlat10;
    let x_2903 : vec2<f32> = u_xlat52;
    let x_2906 : vec3<f32> = u_xlat3;
    let x_2907 : vec3<f32> = ((vec3<f32>(x_2901.x, x_2901.y, x_2901.z) * vec3<f32>(x_2903.x, x_2903.x, x_2903.x)) + x_2906);
    let x_2908 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2908.w);
    let x_2910 : vec4<f32> = u_xlat10;
    let x_2912 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2910.x, x_2910.y, x_2910.z), vec3<f32>(x_2912.x, x_2912.y, x_2912.z));
    let x_2915 : f32 = u_xlat70;
    u_xlat70 = max(x_2915, 1.17549435e-37f);
    let x_2917 : f32 = u_xlat70;
    u_xlat70 = inverseSqrt(x_2917);
    let x_2919 : f32 = u_xlat70;
    let x_2921 : vec4<f32> = u_xlat10;
    let x_2923 : vec3<f32> = (vec3<f32>(x_2919, x_2919, x_2919) * vec3<f32>(x_2921.x, x_2921.y, x_2921.z));
    let x_2924 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2923.x, x_2923.y, x_2923.z, x_2924.w);
    let x_2926 : vec4<f32> = u_xlat4;
    let x_2928 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2926.x, x_2926.y, x_2926.z), vec3<f32>(x_2928.x, x_2928.y, x_2928.z));
    let x_2931 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2931, 0.0f, 1.0f);
    let x_2933 : vec4<f32> = u_xlat11;
    let x_2935 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2933.x, x_2933.y, x_2933.z), vec3<f32>(x_2935.x, x_2935.y, x_2935.z));
    let x_2938 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2938, 0.0f, 1.0f);
    let x_2940 : f32 = u_xlat70;
    let x_2941 : f32 = u_xlat70;
    u_xlat70 = (x_2940 * x_2941);
    let x_2943 : f32 = u_xlat70;
    let x_2945 : f32 = u_xlat51.x;
    u_xlat70 = ((x_2943 * x_2945) + 1.000010014f);
    let x_2948 : f32 = u_xlat73;
    let x_2949 : f32 = u_xlat73;
    u_xlat73 = (x_2948 * x_2949);
    let x_2951 : f32 = u_xlat70;
    let x_2952 : f32 = u_xlat70;
    u_xlat70 = (x_2951 * x_2952);
    let x_2954 : f32 = u_xlat73;
    u_xlat73 = max(x_2954, 0.100000001f);
    let x_2956 : f32 = u_xlat70;
    let x_2957 : f32 = u_xlat73;
    u_xlat70 = (x_2956 * x_2957);
    let x_2959 : f32 = u_xlat72;
    let x_2960 : f32 = u_xlat70;
    u_xlat70 = (x_2959 * x_2960);
    let x_2962 : f32 = u_xlat71;
    let x_2963 : f32 = u_xlat70;
    u_xlat70 = (x_2962 / x_2963);
    let x_2965 : vec4<f32> = u_xlat0;
    let x_2967 : f32 = u_xlat70;
    let x_2970 : vec3<f32> = u_xlat23;
    let x_2971 : vec3<f32> = ((vec3<f32>(x_2965.x, x_2965.y, x_2965.z) * vec3<f32>(x_2967, x_2967, x_2967)) + x_2970);
    let x_2972 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
    let x_2974 : vec4<f32> = u_xlat10;
    let x_2976 : vec4<f32> = u_xlat12;
    let x_2979 : vec4<f32> = u_xlat9;
    let x_2981 : vec3<f32> = ((vec3<f32>(x_2974.x, x_2974.y, x_2974.z) * vec3<f32>(x_2976.x, x_2976.y, x_2976.z)) + vec3<f32>(x_2979.x, x_2979.y, x_2979.z));
    let x_2982 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2981.x, x_2981.y, x_2981.z, x_2982.w);

    continuing {
      let x_2984 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2984 + bitcast<u32>(1i));
    }
  }
  let x_2986 : vec4<f32> = u_xlat6;
  let x_2988 : vec4<f32> = u_xlat7;
  let x_2991 : vec4<f32> = u_xlat5;
  let x_2993 : vec3<f32> = ((vec3<f32>(x_2986.x, x_2986.y, x_2986.z) * vec3<f32>(x_2988.x, x_2988.x, x_2988.x)) + vec3<f32>(x_2991.x, x_2991.y, x_2991.z));
  let x_2994 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
  let x_2996 : vec4<f32> = u_xlat9;
  let x_2998 : vec4<f32> = u_xlat0;
  let x_3000 : vec3<f32> = (vec3<f32>(x_2996.x, x_2996.y, x_2996.z) + vec3<f32>(x_2998.x, x_2998.y, x_2998.z));
  let x_3001 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
  let x_3003 : vec3<f32> = u_xlat2;
  let x_3005 : vec4<f32> = x_57.x_EmissionColor;
  let x_3008 : vec4<f32> = u_xlat0;
  let x_3010 : vec3<f32> = ((x_3003 * vec3<f32>(x_3005.x, x_3005.y, x_3005.z)) + vec3<f32>(x_3008.x, x_3008.y, x_3008.z));
  let x_3011 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
  let x_3013 : f32 = u_xlat66;
  let x_3014 : f32 = u_xlat66;
  u_xlat66 = (x_3013 * -(x_3014));
  let x_3017 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3017);
  let x_3019 : vec4<f32> = u_xlat0;
  let x_3023 : vec4<f32> = x_44.unity_FogColor;
  let x_3026 : vec3<f32> = (vec3<f32>(x_3019.x, x_3019.y, x_3019.z) + -(vec3<f32>(x_3023.x, x_3023.y, x_3023.z)));
  let x_3027 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3027.w);
  let x_3031 : f32 = u_xlat66;
  let x_3033 : vec4<f32> = u_xlat0;
  let x_3037 : vec4<f32> = x_44.unity_FogColor;
  let x_3039 : vec3<f32> = ((vec3<f32>(x_3031, x_3031, x_3031) * vec3<f32>(x_3033.x, x_3033.y, x_3033.z)) + vec3<f32>(x_3037.x, x_3037.y, x_3037.z));
  let x_3040 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3039.x, x_3039.y, x_3039.z, x_3040.w);
  let x_3045 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_3045 == 1.0f);
  let x_3047 : bool = u_xlatb0;
  if (x_3047) {
    let x_3052 : f32 = u_xlat1.x;
    x_3048 = x_3052;
  } else {
    x_3048 = 1.0f;
  }
  let x_3054 : f32 = x_3048;
  SV_Target0.w = x_3054;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

