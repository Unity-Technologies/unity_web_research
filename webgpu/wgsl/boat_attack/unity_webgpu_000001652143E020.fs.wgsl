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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_149 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1817 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2001 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2261 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2371 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb63 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat63 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_1765 : f32;
  var u_xlat25 : vec2<f32>;
  var u_xlat46 : f32;
  var x_1884 : f32;
  var x_1895 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2664 : f32;
  var x_2677 : f32;
  var x_2729 : f32;
  var x_2740 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2897 : f32;
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
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat65;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb63;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb63;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb63;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_129;
  }
  let x_130 : f32 = x_122;
  u_xlat3.z = x_130;
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat63;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_139, x_139, x_139) * x_141);
  let x_144 : vec3<f32> = vs_TEXCOORD1;
  let x_151 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres0;
  let x_154 : vec3<f32> = (x_144 + -(vec3<f32>(x_151.x, x_151.y, x_151.z)));
  let x_155 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres1;
  let x_163 : vec3<f32> = (x_158 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_175 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres3;
  let x_181 : vec3<f32> = (x_175 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat4;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = u_xlat5;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec3<f32> = u_xlat6;
  let x_197 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_196, x_197);
  let x_200 : vec4<f32> = u_xlat7;
  let x_202 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_209 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = x_149.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_209 < x_212);
  let x_215 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_215);
  let x_219 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_219);
  let x_223 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_231);
  let x_237 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_237);
  let x_241 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat5;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(x_246.y, x_246.z, x_246.w));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = max(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_255.x, x_254.x, x_254.y, x_254.z);
  let x_257 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_257, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_263 : f32 = u_xlat63;
  u_xlat63 = (-(x_263) + 4.0f);
  let x_268 : f32 = u_xlat63;
  u_xlatu63 = u32(x_268);
  let x_272 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_272) << bitcast<u32>(2i));
  let x_275 : vec3<f32> = vs_TEXCOORD1;
  let x_277 : i32 = u_xlati63;
  let x_280 : i32 = u_xlati63;
  let x_284 : vec4<f32> = x_149.x_MainLightWorldToShadow[((x_277 + 1i) / 4i)][((x_280 + 1i) % 4i)];
  let x_286 : vec3<f32> = (vec3<f32>(x_275.y, x_275.y, x_275.y) * vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : i32 = u_xlati63;
  let x_291 : i32 = u_xlati63;
  let x_294 : vec4<f32> = x_149.x_MainLightWorldToShadow[(x_289 / 4i)][(x_291 % 4i)];
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_299 : vec4<f32> = u_xlat4;
  let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.x, x_296.x, x_296.x)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : i32 = u_xlati63;
  let x_307 : i32 = u_xlati63;
  let x_311 : vec4<f32> = x_149.x_MainLightWorldToShadow[((x_304 + 2i) / 4i)][((x_307 + 2i) % 4i)];
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.z, x_313.z, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : i32 = u_xlati63;
  let x_326 : i32 = u_xlati63;
  let x_330 : vec4<f32> = x_149.x_MainLightWorldToShadow[((x_323 + 3i) / 4i)][((x_326 + 3i) % 4i)];
  let x_332 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_341 : vec2<f32> = vs_TEXCOORD8;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_341, x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.y, x_344.z);
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_350 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
  let x_355 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_351.x, x_351.y));
  let x_356 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_355.x, x_355.y, x_356.z);
  let x_358 : vec3<f32> = u_xlat6;
  let x_360 : vec4<f32> = hlslcc_FragCoord;
  let x_362 : vec2<f32> = (vec2<f32>(x_358.x, x_358.y) * vec2<f32>(x_360.x, x_360.y));
  let x_363 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_362.x, x_362.y, x_363.z);
  let x_366 : f32 = u_xlat6.y;
  let x_369 : f32 = x_44.x_ScaleBiasRt.x;
  let x_372 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_366 * x_369) + x_372);
  let x_374 : f32 = u_xlat63;
  u_xlat6.z = (-(x_374) + 1.0f);
  let x_379 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_379) * 0.959999979f) + 0.959999979f);
  let x_384 : f32 = u_xlat63;
  let x_387 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_384) + x_387);
  let x_390 : f32 = u_xlat63;
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_390, x_390, x_390) * vec3<f32>(x_392.y, x_392.z, x_392.w));
  let x_395 : vec4<f32> = u_xlat0;
  let x_398 : vec4<f32> = x_57.x_BaseColor;
  let x_403 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_398.x, x_398.y, x_398.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : f32 = x_57.x_Metallic;
  let x_409 : f32 = x_57.x_Metallic;
  let x_411 : f32 = x_57.x_Metallic;
  let x_412 : vec3<f32> = vec3<f32>(x_407, x_409, x_411);
  let x_417 : vec4<f32> = u_xlat0;
  let x_422 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : f32 = x_57.x_Smoothness;
  u_xlat63 = (-(x_426) + 1.0f);
  let x_430 : f32 = u_xlat63;
  let x_431 : f32 = u_xlat63;
  u_xlat66 = (x_430 * x_431);
  let x_433 : f32 = u_xlat66;
  u_xlat66 = max(x_433, 0.0078125f);
  let x_437 : f32 = u_xlat66;
  let x_438 : f32 = u_xlat66;
  u_xlat67 = (x_437 * x_438);
  let x_440 : f32 = u_xlat65;
  u_xlat65 = (x_440 + 1.0f);
  let x_442 : f32 = u_xlat65;
  u_xlat65 = clamp(x_442, 0.0f, 1.0f);
  let x_445 : f32 = u_xlat66;
  u_xlat68 = ((x_445 * 4.0f) + 2.0f);
  let x_453 : vec3<f32> = u_xlat6;
  let x_456 : f32 = x_44.x_GlobalMipBias.x;
  let x_457 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_453.x, x_453.z), x_456);
  u_xlat6.x = x_457.x;
  let x_462 : f32 = u_xlat6.x;
  u_xlat27 = (x_462 + -1.0f);
  let x_465 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_466 : f32 = u_xlat27;
  u_xlat27 = ((x_465 * x_466) + 1.0f);
  let x_470 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_470, 1.0f);
  let x_475 : f32 = x_149.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_475);
  let x_477 : bool = u_xlatb48;
  if (x_477) {
    let x_481 : f32 = x_149.x_MainLightShadowParams.y;
    u_xlatb48 = (x_481 == 1.0f);
    let x_483 : bool = u_xlatb48;
    if (x_483) {
      let x_486 : vec4<f32> = u_xlat4;
      let x_489 : vec4<f32> = x_149.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y) + x_489);
      let x_492 : vec4<f32> = u_xlat7;
      let x_493 : vec2<f32> = vec2<f32>(x_492.x, x_492.y);
      let x_495 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_493.x, x_493.y, x_495);
      let x_508 : vec3<f32> = txVec0;
      let x_510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_508.xy, x_508.z);
      u_xlat8.x = x_510;
      let x_513 : vec4<f32> = u_xlat7;
      let x_514 : vec2<f32> = vec2<f32>(x_513.z, x_513.w);
      let x_516 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_514.x, x_514.y, x_516);
      let x_523 : vec3<f32> = txVec1;
      let x_525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_523.xy, x_523.z);
      u_xlat8.y = x_525;
      let x_527 : vec4<f32> = u_xlat4;
      let x_530 : vec4<f32> = x_149.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_527.x, x_527.y, x_527.x, x_527.y) + x_530);
      let x_533 : vec4<f32> = u_xlat7;
      let x_534 : vec2<f32> = vec2<f32>(x_533.x, x_533.y);
      let x_536 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_534.x, x_534.y, x_536);
      let x_543 : vec3<f32> = txVec2;
      let x_545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_543.xy, x_543.z);
      u_xlat8.z = x_545;
      let x_548 : vec4<f32> = u_xlat7;
      let x_549 : vec2<f32> = vec2<f32>(x_548.z, x_548.w);
      let x_551 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_549.x, x_549.y, x_551);
      let x_558 : vec3<f32> = txVec3;
      let x_560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_558.xy, x_558.z);
      u_xlat8.w = x_560;
      let x_564 : vec4<f32> = u_xlat8;
      u_xlat48.x = dot(x_564, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_572 : f32 = x_149.x_MainLightShadowParams.y;
      u_xlatb69 = (x_572 == 2.0f);
      let x_574 : bool = u_xlatb69;
      if (x_574) {
        let x_577 : vec4<f32> = u_xlat4;
        let x_580 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_585 : vec2<f32> = ((vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_580.z, x_580.w)) + vec2<f32>(0.5f, 0.5f));
        let x_586 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat7;
        let x_590 : vec2<f32> = floor(vec2<f32>(x_588.x, x_588.y));
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
        let x_594 : vec4<f32> = u_xlat4;
        let x_597 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_600 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_594.x, x_594.y) * vec2<f32>(x_597.z, x_597.w)) + -(vec2<f32>(x_600.x, x_600.y)));
        let x_604 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_604.x, x_604.x, x_604.y, x_604.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_609 : vec4<f32> = u_xlat8;
        let x_611 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_609.x, x_609.x, x_609.z, x_609.z) * vec4<f32>(x_611.x, x_611.x, x_611.z, x_611.z));
        let x_614 : vec4<f32> = u_xlat9;
        let x_618 : vec2<f32> = (vec2<f32>(x_614.y, x_614.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_618.x, x_619.y, x_618.y, x_619.w);
        let x_621 : vec4<f32> = u_xlat9;
        let x_624 : vec2<f32> = u_xlat49;
        let x_626 : vec2<f32> = ((vec2<f32>(x_621.x, x_621.z) * vec2<f32>(0.5f, 0.5f)) + -(x_624));
        let x_627 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_630 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_630) + vec2<f32>(1.0f, 1.0f));
        let x_634 : vec2<f32> = u_xlat49;
        let x_636 : vec2<f32> = min(x_634, vec2<f32>(0.0f, 0.0f));
        let x_637 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat10;
        let x_642 : vec4<f32> = u_xlat10;
        let x_645 : vec2<f32> = u_xlat51;
        let x_646 : vec2<f32> = ((-(vec2<f32>(x_639.x, x_639.y)) * vec2<f32>(x_642.x, x_642.y)) + x_645);
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_649, vec2<f32>(0.0f, 0.0f));
        let x_651 : vec2<f32> = u_xlat49;
        let x_653 : vec2<f32> = u_xlat49;
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_651) * x_653) + vec2<f32>(x_655.y, x_655.w));
        let x_658 : vec4<f32> = u_xlat10;
        let x_660 : vec2<f32> = (vec2<f32>(x_658.x, x_658.y) + vec2<f32>(1.0f, 1.0f));
        let x_661 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
        let x_663 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_663 + vec2<f32>(1.0f, 1.0f));
        let x_666 : vec4<f32> = u_xlat9;
        let x_670 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_671 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
        let x_673 : vec2<f32> = u_xlat51;
        let x_674 : vec2<f32> = (x_673 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_675 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat10;
        let x_679 : vec2<f32> = (vec2<f32>(x_677.x, x_677.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_680 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_683 : vec2<f32> = u_xlat49;
        let x_684 : vec2<f32> = (x_683 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_685 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_687.y, x_687.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_691 : f32 = u_xlat10.x;
        u_xlat11.z = x_691;
        let x_694 : f32 = u_xlat49.x;
        u_xlat11.w = x_694;
        let x_697 : f32 = u_xlat12.x;
        u_xlat9.z = x_697;
        let x_700 : f32 = u_xlat8.x;
        u_xlat9.w = x_700;
        let x_703 : vec4<f32> = u_xlat9;
        let x_705 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_703.z, x_703.w, x_703.x, x_703.z) + vec4<f32>(x_705.z, x_705.w, x_705.x, x_705.z));
        let x_709 : f32 = u_xlat11.y;
        u_xlat10.z = x_709;
        let x_712 : f32 = u_xlat49.y;
        u_xlat10.w = x_712;
        let x_715 : f32 = u_xlat9.y;
        u_xlat12.z = x_715;
        let x_718 : f32 = u_xlat8.z;
        u_xlat12.w = x_718;
        let x_720 : vec4<f32> = u_xlat10;
        let x_722 : vec4<f32> = u_xlat12;
        let x_724 : vec3<f32> = (vec3<f32>(x_720.z, x_720.y, x_720.w) + vec3<f32>(x_722.z, x_722.y, x_722.w));
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat9;
        let x_729 : vec4<f32> = u_xlat13;
        let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.z, x_727.w) / vec3<f32>(x_729.z, x_729.w, x_729.y));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat9;
        let x_740 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_741 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_743 : vec4<f32> = u_xlat12;
        let x_745 : vec4<f32> = u_xlat8;
        let x_747 : vec3<f32> = (vec3<f32>(x_743.z, x_743.y, x_743.w) / vec3<f32>(x_745.x, x_745.y, x_745.z));
        let x_748 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
        let x_750 : vec4<f32> = u_xlat10;
        let x_752 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_753 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat9;
        let x_758 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_760 : vec3<f32> = (vec3<f32>(x_755.y, x_755.x, x_755.z) * vec3<f32>(x_758.x, x_758.x, x_758.x));
        let x_761 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_763 : vec4<f32> = u_xlat10;
        let x_766 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_768 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_766.y, x_766.y, x_766.y));
        let x_769 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_772 : f32 = u_xlat10.x;
        u_xlat9.w = x_772;
        let x_774 : vec4<f32> = u_xlat7;
        let x_777 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y) * vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y)) + vec4<f32>(x_780.y, x_780.w, x_780.x, x_780.w));
        let x_783 : vec4<f32> = u_xlat7;
        let x_786 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(x_786.x, x_786.y)) + vec2<f32>(x_789.z, x_789.w));
        let x_793 : f32 = u_xlat9.y;
        u_xlat10.w = x_793;
        let x_795 : vec4<f32> = u_xlat10;
        let x_796 : vec2<f32> = vec2<f32>(x_795.y, x_795.z);
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_797.x, x_796.x, x_797.z, x_796.y);
        let x_799 : vec4<f32> = u_xlat7;
        let x_802 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_805 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y) * vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y)) + vec4<f32>(x_805.x, x_805.y, x_805.z, x_805.y));
        let x_808 : vec4<f32> = u_xlat7;
        let x_811 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y) * vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y)) + vec4<f32>(x_814.w, x_814.y, x_814.w, x_814.z));
        let x_817 : vec4<f32> = u_xlat7;
        let x_820 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.x, x_823.w, x_823.z, x_823.w));
        let x_827 : vec4<f32> = u_xlat8;
        let x_829 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_827.x, x_827.x, x_827.x, x_827.y) * vec4<f32>(x_829.z, x_829.w, x_829.y, x_829.z));
        let x_833 : vec4<f32> = u_xlat8;
        let x_835 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_833.y, x_833.y, x_833.z, x_833.z) * x_835);
        let x_839 : f32 = u_xlat8.z;
        let x_841 : f32 = u_xlat13.y;
        u_xlat69 = (x_839 * x_841);
        let x_844 : vec4<f32> = u_xlat11;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_854 : vec3<f32> = txVec4;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
        u_xlat7.x = x_856;
        let x_859 : vec4<f32> = u_xlat11;
        let x_860 : vec2<f32> = vec2<f32>(x_859.z, x_859.w);
        let x_862 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_870 : vec3<f32> = txVec5;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
        u_xlat28 = x_872;
        let x_873 : f32 = u_xlat28;
        let x_875 : f32 = u_xlat14.y;
        u_xlat28 = (x_873 * x_875);
        let x_878 : f32 = u_xlat14.x;
        let x_880 : f32 = u_xlat7.x;
        let x_882 : f32 = u_xlat28;
        u_xlat7.x = ((x_878 * x_880) + x_882);
        let x_886 : vec2<f32> = u_xlat49;
        let x_888 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_886.x, x_886.y, x_888);
        let x_895 : vec3<f32> = txVec6;
        let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_895.xy, x_895.z);
        u_xlat28 = x_897;
        let x_899 : f32 = u_xlat14.z;
        let x_900 : f32 = u_xlat28;
        let x_903 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_899 * x_900) + x_903);
        let x_907 : vec4<f32> = u_xlat10;
        let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
        let x_910 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec7;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
        u_xlat28 = x_919;
        let x_921 : f32 = u_xlat14.w;
        let x_922 : f32 = u_xlat28;
        let x_925 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_921 * x_922) + x_925);
        let x_929 : vec4<f32> = u_xlat12;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec8;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_939.xy, x_939.z);
        u_xlat28 = x_941;
        let x_943 : f32 = u_xlat15.x;
        let x_944 : f32 = u_xlat28;
        let x_947 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_943 * x_944) + x_947);
        let x_951 : vec4<f32> = u_xlat12;
        let x_952 : vec2<f32> = vec2<f32>(x_951.z, x_951.w);
        let x_954 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec9;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_961.xy, x_961.z);
        u_xlat28 = x_963;
        let x_965 : f32 = u_xlat15.y;
        let x_966 : f32 = u_xlat28;
        let x_969 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_965 * x_966) + x_969);
        let x_973 : vec4<f32> = u_xlat10;
        let x_974 : vec2<f32> = vec2<f32>(x_973.z, x_973.w);
        let x_976 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec10;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_983.xy, x_983.z);
        u_xlat28 = x_985;
        let x_987 : f32 = u_xlat15.z;
        let x_988 : f32 = u_xlat28;
        let x_991 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_987 * x_988) + x_991);
        let x_995 : vec4<f32> = u_xlat9;
        let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
        let x_998 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec11;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat28 = x_1007;
        let x_1009 : f32 = u_xlat15.w;
        let x_1010 : f32 = u_xlat28;
        let x_1013 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1009 * x_1010) + x_1013);
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
        let x_1020 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec12;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat28 = x_1029;
        let x_1030 : f32 = u_xlat69;
        let x_1031 : f32 = u_xlat28;
        let x_1034 : f32 = u_xlat7.x;
        u_xlat48.x = ((x_1030 * x_1031) + x_1034);
      } else {
        let x_1038 : vec4<f32> = u_xlat4;
        let x_1041 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.z, x_1041.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1049 : vec2<f32> = floor(vec2<f32>(x_1047.x, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat4;
        let x_1055 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(x_1055.z, x_1055.w)) + -(vec2<f32>(x_1058.x, x_1058.y)));
        let x_1062 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1062.x, x_1062.x, x_1062.y, x_1062.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.z, x_1065.z) * vec4<f32>(x_1067.x, x_1067.x, x_1067.z, x_1067.z));
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1074 : vec2<f32> = (vec2<f32>(x_1070.y, x_1070.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1080 : vec2<f32> = u_xlat49;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1080));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat49;
        let x_1087 : vec2<f32> = (-(x_1085) + vec2<f32>(1.0f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1090 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1090, vec2<f32>(0.0f, 0.0f));
        let x_1092 : vec2<f32> = u_xlat51;
        let x_1094 : vec2<f32> = u_xlat51;
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = ((-(x_1092) * x_1094) + vec2<f32>(x_1096.x, x_1096.y));
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1101, vec2<f32>(0.0f, 0.0f));
        let x_1104 : vec2<f32> = u_xlat51;
        let x_1106 : vec2<f32> = u_xlat51;
        let x_1108 : vec4<f32> = u_xlat8;
        let x_1110 : vec2<f32> = ((-(x_1104) * x_1106) + vec2<f32>(x_1108.y, x_1108.w));
        let x_1111 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1110.x, x_1111.y, x_1110.y);
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1116 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.y) + vec2<f32>(2.0f, 2.0f));
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec3<f32> = u_xlat29;
        let x_1121 : vec2<f32> = (vec2<f32>(x_1119.x, x_1119.z) + vec2<f32>(2.0f, 2.0f));
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1125 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1125 * 0.081632003f);
        let x_1129 : vec4<f32> = u_xlat8;
        let x_1132 : vec3<f32> = (vec3<f32>(x_1129.z, x_1129.x, x_1129.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1133 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1138 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1142 : f32 = u_xlat12.y;
        u_xlat11.x = x_1142;
        let x_1144 : vec2<f32> = u_xlat49;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1151.x, x_1152.z, x_1151.y);
        let x_1154 : vec2<f32> = u_xlat49;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1159.w);
        let x_1162 : f32 = u_xlat8.x;
        u_xlat9.y = x_1162;
        let x_1165 : f32 = u_xlat10.y;
        u_xlat9.w = x_1165;
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1167 + x_1168);
        let x_1170 : vec2<f32> = u_xlat49;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1174 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1174.x, x_1173.x, x_1174.z, x_1173.y);
        let x_1176 : vec2<f32> = u_xlat49;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1176.y, x_1176.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1180 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1180.w);
        let x_1183 : f32 = u_xlat8.y;
        u_xlat10.y = x_1183;
        let x_1185 : vec4<f32> = u_xlat10;
        let x_1186 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1185 + x_1186);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1189 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1188 / x_1189);
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1191 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1197 : vec4<f32> = u_xlat10;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1197 / x_1198);
        let x_1200 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1200 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1205 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1202.w, x_1202.x, x_1202.y, x_1202.z) * vec4<f32>(x_1205.x, x_1205.x, x_1205.x, x_1205.x));
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1211 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1208.x, x_1208.w, x_1208.y, x_1208.z) * vec4<f32>(x_1211.y, x_1211.y, x_1211.y, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1215 : vec3<f32> = vec3<f32>(x_1214.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1215.x, x_1216.y, x_1215.y, x_1215.z);
        let x_1219 : f32 = u_xlat10.x;
        u_xlat12.y = x_1219;
        let x_1221 : vec4<f32> = u_xlat7;
        let x_1224 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y) * vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y)) + vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1227.y));
        let x_1230 : vec4<f32> = u_xlat7;
        let x_1233 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.w, x_1236.y));
        let x_1240 : f32 = u_xlat12.y;
        u_xlat9.y = x_1240;
        let x_1243 : f32 = u_xlat10.z;
        u_xlat12.y = x_1243;
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1248 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat12;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1263 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1262.x, x_1262.y, x_1263.z, x_1263.w);
        let x_1266 : f32 = u_xlat12.y;
        u_xlat9.z = x_1266;
        let x_1269 : vec4<f32> = u_xlat7;
        let x_1272 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.z));
        let x_1279 : f32 = u_xlat10.w;
        u_xlat12.y = x_1279;
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1285 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.y));
        let x_1292 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1295.x, x_1295.y)) + vec2<f32>(x_1298.w, x_1298.y));
        let x_1302 : f32 = u_xlat12.y;
        u_xlat9.w = x_1302;
        let x_1305 : vec4<f32> = u_xlat7;
        let x_1308 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.x, x_1311.w));
        let x_1314 : vec4<f32> = u_xlat12;
        let x_1315 : vec3<f32> = vec3<f32>(x_1314.x, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1315.x, x_1316.y, x_1315.y, x_1315.z);
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1321 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y) * vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y)) + vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1324.y));
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1331.x, x_1331.y)) + vec2<f32>(x_1334.w, x_1334.y));
        let x_1338 : f32 = u_xlat9.x;
        u_xlat10.x = x_1338;
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1343 : vec4<f32> = x_149.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat10;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.x, x_1346.y));
        let x_1349 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1352 : vec4<f32> = u_xlat8;
        let x_1354 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1352.x, x_1352.x, x_1352.x, x_1352.x) * x_1354);
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1357.y, x_1357.y, x_1357.y, x_1357.y) * x_1359);
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1362.z, x_1362.z, x_1362.z, x_1362.z) * x_1364);
        let x_1366 : vec4<f32> = u_xlat8;
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1366.w, x_1366.w, x_1366.w, x_1366.w) * x_1368);
        let x_1371 : vec4<f32> = u_xlat13;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec13;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat69 = x_1383;
        let x_1385 : vec4<f32> = u_xlat13;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec14;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat9.x = x_1397;
        let x_1400 : f32 = u_xlat9.x;
        let x_1402 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1400 * x_1402);
        let x_1406 : f32 = u_xlat18.x;
        let x_1407 : f32 = u_xlat69;
        let x_1410 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1406 * x_1407) + x_1410);
        let x_1413 : vec2<f32> = u_xlat49;
        let x_1415 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec15;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat49.x = x_1424;
        let x_1427 : f32 = u_xlat18.z;
        let x_1429 : f32 = u_xlat49.x;
        let x_1431 : f32 = u_xlat69;
        u_xlat69 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat16;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec16;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat49.x = x_1446;
        let x_1449 : f32 = u_xlat18.w;
        let x_1451 : f32 = u_xlat49.x;
        let x_1453 : f32 = u_xlat69;
        u_xlat69 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat14;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec17;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat49.x = x_1468;
        let x_1471 : f32 = u_xlat19.x;
        let x_1473 : f32 = u_xlat49.x;
        let x_1475 : f32 = u_xlat69;
        u_xlat69 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat14;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec18;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat49.x = x_1490;
        let x_1493 : f32 = u_xlat19.y;
        let x_1495 : f32 = u_xlat49.x;
        let x_1497 : f32 = u_xlat69;
        u_xlat69 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat15;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec19;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat49.x = x_1512;
        let x_1515 : f32 = u_xlat19.z;
        let x_1517 : f32 = u_xlat49.x;
        let x_1519 : f32 = u_xlat69;
        u_xlat69 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat16;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.z, x_1522.w);
        let x_1525 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec20;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat49.x = x_1534;
        let x_1537 : f32 = u_xlat19.w;
        let x_1539 : f32 = u_xlat49.x;
        let x_1541 : f32 = u_xlat69;
        u_xlat69 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat17;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec21;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat49.x = x_1556;
        let x_1559 : f32 = u_xlat20.x;
        let x_1561 : f32 = u_xlat49.x;
        let x_1563 : f32 = u_xlat69;
        u_xlat69 = ((x_1559 * x_1561) + x_1563);
        let x_1566 : vec4<f32> = u_xlat17;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.z, x_1566.w);
        let x_1569 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec22;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat49.x = x_1578;
        let x_1581 : f32 = u_xlat20.y;
        let x_1583 : f32 = u_xlat49.x;
        let x_1585 : f32 = u_xlat69;
        u_xlat69 = ((x_1581 * x_1583) + x_1585);
        let x_1588 : vec2<f32> = u_xlat30;
        let x_1590 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec23;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1597.xy, x_1597.z);
        u_xlat49.x = x_1599;
        let x_1602 : f32 = u_xlat20.z;
        let x_1604 : f32 = u_xlat49.x;
        let x_1606 : f32 = u_xlat69;
        u_xlat69 = ((x_1602 * x_1604) + x_1606);
        let x_1609 : vec2<f32> = u_xlat57;
        let x_1611 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec24;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
        u_xlat49.x = x_1620;
        let x_1623 : f32 = u_xlat20.w;
        let x_1625 : f32 = u_xlat49.x;
        let x_1627 : f32 = u_xlat69;
        u_xlat69 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec4<f32> = u_xlat12;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec25;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1640.xy, x_1640.z);
        u_xlat49.x = x_1642;
        let x_1645 : f32 = u_xlat8.x;
        let x_1647 : f32 = u_xlat49.x;
        let x_1649 : f32 = u_xlat69;
        u_xlat69 = ((x_1645 * x_1647) + x_1649);
        let x_1652 : vec4<f32> = u_xlat12;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.z, x_1652.w);
        let x_1655 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec26;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1662.xy, x_1662.z);
        u_xlat49.x = x_1664;
        let x_1667 : f32 = u_xlat8.y;
        let x_1669 : f32 = u_xlat49.x;
        let x_1671 : f32 = u_xlat69;
        u_xlat69 = ((x_1667 * x_1669) + x_1671);
        let x_1674 : vec2<f32> = u_xlat52;
        let x_1676 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec27;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat49.x = x_1685;
        let x_1688 : f32 = u_xlat8.z;
        let x_1690 : f32 = u_xlat49.x;
        let x_1692 : f32 = u_xlat69;
        u_xlat69 = ((x_1688 * x_1690) + x_1692);
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.x, x_1695.y);
        let x_1698 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec28;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat7.x = x_1707;
        let x_1710 : f32 = u_xlat8.w;
        let x_1712 : f32 = u_xlat7.x;
        let x_1714 : f32 = u_xlat69;
        u_xlat48.x = ((x_1710 * x_1712) + x_1714);
      }
    }
  } else {
    let x_1719 : vec4<f32> = u_xlat4;
    let x_1720 : vec2<f32> = vec2<f32>(x_1719.x, x_1719.y);
    let x_1722 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
    let x_1729 : vec3<f32> = txVec29;
    let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
    u_xlat48.x = x_1731;
  }
  let x_1734 : f32 = x_149.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1734) + 1.0f);
  let x_1739 : f32 = u_xlat48.x;
  let x_1741 : f32 = x_149.x_MainLightShadowParams.x;
  let x_1744 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1739 * x_1741) + x_1744);
  let x_1751 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_1751);
  let x_1756 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1756 >= 1.0f);
  let x_1758 : bool = u_xlatb46;
  let x_1760 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_1758 | x_1760);
  let x_1764 : bool = u_xlatb25.x;
  if (x_1764) {
    x_1765 = 1.0f;
  } else {
    let x_1770 : f32 = u_xlat4.x;
    x_1765 = x_1770;
  }
  let x_1771 : f32 = x_1765;
  u_xlat4.x = x_1771;
  let x_1773 : vec3<f32> = vs_TEXCOORD1;
  let x_1775 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1777 : vec3<f32> = (x_1773 + -(x_1775));
  let x_1778 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1781 : vec4<f32> = u_xlat7;
  let x_1783 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1788 : f32 = u_xlat25.x;
  let x_1790 : f32 = x_149.x_MainLightShadowParams.z;
  let x_1793 : f32 = x_149.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1788 * x_1790) + x_1793);
  let x_1797 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1797, 0.0f, 1.0f);
  let x_1802 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_1802) + 1.0f);
  let x_1806 : f32 = u_xlat25.x;
  let x_1807 : f32 = u_xlat46;
  let x_1810 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1806 * x_1807) + x_1810);
  let x_1819 : f32 = x_1817.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1819 == -1.0f));
  let x_1823 : bool = u_xlatb25.x;
  if (x_1823) {
    let x_1826 : vec3<f32> = vs_TEXCOORD1;
    let x_1829 : vec4<f32> = x_1817.x_MainLightWorldToLight[1i];
    u_xlat25 = (vec2<f32>(x_1826.y, x_1826.y) * vec2<f32>(x_1829.x, x_1829.y));
    let x_1833 : vec4<f32> = x_1817.x_MainLightWorldToLight[0i];
    let x_1835 : vec3<f32> = vs_TEXCOORD1;
    let x_1838 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1835.x, x_1835.x)) + x_1838);
    let x_1841 : vec4<f32> = x_1817.x_MainLightWorldToLight[2i];
    let x_1843 : vec3<f32> = vs_TEXCOORD1;
    let x_1846 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_1841.x, x_1841.y) * vec2<f32>(x_1843.z, x_1843.z)) + x_1846);
    let x_1848 : vec2<f32> = u_xlat25;
    let x_1850 : vec4<f32> = x_1817.x_MainLightWorldToLight[3i];
    u_xlat25 = (x_1848 + vec2<f32>(x_1850.x, x_1850.y));
    let x_1853 : vec2<f32> = u_xlat25;
    u_xlat25 = ((x_1853 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1861 : vec2<f32> = u_xlat25;
    let x_1863 : f32 = x_44.x_GlobalMipBias.x;
    let x_1864 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1861, x_1863);
    u_xlat7 = x_1864;
    let x_1866 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1868 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1870 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1872 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1873 : vec4<f32> = vec4<f32>(x_1866, x_1868, x_1870, x_1872);
    let x_1880 : vec4<bool> = (vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1873.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_1880.x, x_1880.y);
    let x_1883 : bool = u_xlatb25.y;
    if (x_1883) {
      let x_1888 : f32 = u_xlat7.w;
      x_1884 = x_1888;
    } else {
      let x_1891 : f32 = u_xlat7.x;
      x_1884 = x_1891;
    }
    let x_1892 : f32 = x_1884;
    u_xlat46 = x_1892;
    let x_1894 : bool = u_xlatb25.x;
    if (x_1894) {
      let x_1898 : vec4<f32> = u_xlat7;
      x_1895 = vec3<f32>(x_1898.x, x_1898.y, x_1898.z);
    } else {
      let x_1901 : f32 = u_xlat46;
      x_1895 = vec3<f32>(x_1901, x_1901, x_1901);
    }
    let x_1903 : vec3<f32> = x_1895;
    let x_1904 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1910 : vec4<f32> = u_xlat7;
  let x_1913 : vec4<f32> = x_44.x_MainLightColor;
  let x_1915 : vec3<f32> = (vec3<f32>(x_1910.x, x_1910.y, x_1910.z) * vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
  let x_1918 : f32 = u_xlat27;
  let x_1920 : vec4<f32> = u_xlat7;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1918, x_1918, x_1918) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec3<f32> = u_xlat3;
  let x_1927 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(x_1925), x_1927);
  let x_1931 : f32 = u_xlat25.x;
  let x_1933 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1931 + x_1933);
  let x_1936 : vec3<f32> = u_xlat2;
  let x_1937 : vec2<f32> = u_xlat25;
  let x_1941 : vec3<f32> = u_xlat3;
  let x_1943 : vec3<f32> = ((x_1936 * -(vec3<f32>(x_1937.x, x_1937.x, x_1937.x))) + -(x_1941));
  let x_1944 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec3<f32> = u_xlat2;
  let x_1947 : vec3<f32> = u_xlat3;
  u_xlat25.x = dot(x_1946, x_1947);
  let x_1951 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1951, 0.0f, 1.0f);
  let x_1955 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_1955) + 1.0f);
  let x_1960 : f32 = u_xlat25.x;
  let x_1962 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1960 * x_1962);
  let x_1966 : f32 = u_xlat25.x;
  let x_1968 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1966 * x_1968);
  let x_1971 : f32 = u_xlat63;
  u_xlat46 = ((-(x_1971) * 0.699999988f) + 1.700000048f);
  let x_1977 : f32 = u_xlat63;
  let x_1978 : f32 = u_xlat46;
  u_xlat63 = (x_1977 * x_1978);
  let x_1980 : f32 = u_xlat63;
  u_xlat63 = (x_1980 * 6.0f);
  let x_1991 : vec4<f32> = u_xlat8;
  let x_1993 : f32 = u_xlat63;
  let x_1994 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1991.x, x_1991.y, x_1991.z), x_1993);
  u_xlat8 = x_1994;
  let x_1996 : f32 = u_xlat8.w;
  u_xlat63 = (x_1996 + -1.0f);
  let x_2003 : f32 = x_2001.unity_SpecCube0_HDR.w;
  let x_2004 : f32 = u_xlat63;
  u_xlat63 = ((x_2003 * x_2004) + 1.0f);
  let x_2007 : f32 = u_xlat63;
  u_xlat63 = max(x_2007, 0.0f);
  let x_2009 : f32 = u_xlat63;
  u_xlat63 = log2(x_2009);
  let x_2011 : f32 = u_xlat63;
  let x_2013 : f32 = x_2001.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2011 * x_2013);
  let x_2015 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2015);
  let x_2017 : f32 = u_xlat63;
  let x_2019 : f32 = x_2001.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2017 * x_2019);
  let x_2021 : vec4<f32> = u_xlat8;
  let x_2023 : f32 = u_xlat63;
  let x_2025 : vec3<f32> = (vec3<f32>(x_2021.x, x_2021.y, x_2021.z) * vec3<f32>(x_2023, x_2023, x_2023));
  let x_2026 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : f32 = u_xlat66;
  let x_2030 : f32 = u_xlat66;
  u_xlat48 = ((vec2<f32>(x_2028, x_2028) * vec2<f32>(x_2030, x_2030)) + vec2<f32>(-1.0f, 1.0f));
  let x_2036 : f32 = u_xlat48.y;
  u_xlat63 = (1.0f / x_2036);
  let x_2038 : vec4<f32> = u_xlat0;
  let x_2041 : f32 = u_xlat65;
  let x_2043 : vec3<f32> = (-(vec3<f32>(x_2038.x, x_2038.y, x_2038.z)) + vec3<f32>(x_2041, x_2041, x_2041));
  let x_2044 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);
  let x_2046 : vec2<f32> = u_xlat25;
  let x_2048 : vec4<f32> = u_xlat9;
  let x_2051 : vec4<f32> = u_xlat0;
  let x_2053 : vec3<f32> = ((vec3<f32>(x_2046.x, x_2046.x, x_2046.x) * vec3<f32>(x_2048.x, x_2048.y, x_2048.z)) + vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2056 : f32 = u_xlat63;
  let x_2058 : vec4<f32> = u_xlat9;
  let x_2060 : vec3<f32> = (vec3<f32>(x_2056, x_2056, x_2056) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
  let x_2061 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
  let x_2063 : vec4<f32> = u_xlat8;
  let x_2065 : vec4<f32> = u_xlat9;
  let x_2067 : vec3<f32> = (vec3<f32>(x_2063.x, x_2063.y, x_2063.z) * vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  let x_2070 : vec4<f32> = u_xlat5;
  let x_2072 : vec3<f32> = u_xlat22;
  let x_2074 : vec4<f32> = u_xlat8;
  let x_2076 : vec3<f32> = ((vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * x_2072) + vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2080 : f32 = u_xlat4.x;
  let x_2082 : f32 = x_2001.unity_LightData.z;
  u_xlat63 = (x_2080 * x_2082);
  let x_2084 : vec3<f32> = u_xlat2;
  let x_2086 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2084, vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
  let x_2089 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2089, 0.0f, 1.0f);
  let x_2091 : f32 = u_xlat63;
  let x_2092 : f32 = u_xlat65;
  u_xlat63 = (x_2091 * x_2092);
  let x_2094 : f32 = u_xlat63;
  let x_2096 : vec4<f32> = u_xlat7;
  let x_2098 : vec3<f32> = (vec3<f32>(x_2094, x_2094, x_2094) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
  let x_2101 : vec3<f32> = u_xlat3;
  let x_2103 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2105 : vec3<f32> = (x_2101 + vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
  let x_2106 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
  let x_2108 : vec4<f32> = u_xlat7;
  let x_2110 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2108.x, x_2108.y, x_2108.z), vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
  let x_2113 : f32 = u_xlat63;
  u_xlat63 = max(x_2113, 1.17549435e-37f);
  let x_2116 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2116);
  let x_2118 : f32 = u_xlat63;
  let x_2120 : vec4<f32> = u_xlat7;
  let x_2122 : vec3<f32> = (vec3<f32>(x_2118, x_2118, x_2118) * vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
  let x_2123 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
  let x_2125 : vec3<f32> = u_xlat2;
  let x_2126 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_2125, vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
  let x_2129 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2129, 0.0f, 1.0f);
  let x_2132 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2134 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2132.x, x_2132.y, x_2132.z), vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2137, 0.0f, 1.0f);
  let x_2139 : f32 = u_xlat63;
  let x_2140 : f32 = u_xlat63;
  u_xlat63 = (x_2139 * x_2140);
  let x_2142 : f32 = u_xlat63;
  let x_2144 : f32 = u_xlat48.x;
  u_xlat63 = ((x_2142 * x_2144) + 1.000010014f);
  let x_2148 : f32 = u_xlat65;
  let x_2149 : f32 = u_xlat65;
  u_xlat65 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat63;
  let x_2152 : f32 = u_xlat63;
  u_xlat63 = (x_2151 * x_2152);
  let x_2154 : f32 = u_xlat65;
  u_xlat65 = max(x_2154, 0.100000001f);
  let x_2157 : f32 = u_xlat63;
  let x_2158 : f32 = u_xlat65;
  u_xlat63 = (x_2157 * x_2158);
  let x_2160 : f32 = u_xlat68;
  let x_2161 : f32 = u_xlat63;
  u_xlat63 = (x_2160 * x_2161);
  let x_2163 : f32 = u_xlat67;
  let x_2164 : f32 = u_xlat63;
  u_xlat63 = (x_2163 / x_2164);
  let x_2166 : vec4<f32> = u_xlat0;
  let x_2168 : f32 = u_xlat63;
  let x_2171 : vec3<f32> = u_xlat22;
  let x_2172 : vec3<f32> = ((vec3<f32>(x_2166.x, x_2166.y, x_2166.z) * vec3<f32>(x_2168, x_2168, x_2168)) + x_2171);
  let x_2173 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
  let x_2175 : vec4<f32> = u_xlat4;
  let x_2177 : vec4<f32> = u_xlat7;
  let x_2179 : vec3<f32> = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) * vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
  let x_2180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
  let x_2183 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2185 : f32 = x_2001.unity_LightData.y;
  u_xlat63 = min(x_2183, x_2185);
  let x_2187 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2187));
  let x_2192 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2194 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2196 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2198 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2199 : vec4<f32> = vec4<f32>(x_2192, x_2194, x_2196, x_2198);
  let x_2205 : vec4<bool> = (vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2199.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2205.x, x_2205.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2216 : u32 = u_xlatu_loop_1;
    let x_2217 : u32 = u_xlatu63;
    if ((x_2216 < x_2217)) {
    } else {
      break;
    }
    let x_2220 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2220 >> 2u);
    let x_2223 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2223 & 3u));
    let x_2226 : u32 = u_xlatu66;
    let x_2229 : vec4<f32> = x_2001.unity_LightIndices[bitcast<i32>(x_2226)];
    let x_2239 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2244 : vec4<u32> = indexable[x_2239];
    u_xlat66 = dot(x_2229, bitcast<vec4<f32>>(x_2244));
    let x_2247 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2247));
    let x_2250 : vec3<f32> = vs_TEXCOORD1;
    let x_2262 : u32 = u_xlatu66;
    let x_2265 : vec4<f32> = x_2261.x_AdditionalLightsPosition[bitcast<i32>(x_2262)];
    let x_2268 : u32 = u_xlatu66;
    let x_2271 : vec4<f32> = x_2261.x_AdditionalLightsPosition[bitcast<i32>(x_2268)];
    let x_2273 : vec3<f32> = ((-(x_2250) * vec3<f32>(x_2265.w, x_2265.w, x_2265.w)) + vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
    let x_2274 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
    let x_2276 : vec4<f32> = u_xlat9;
    let x_2278 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2276.x, x_2276.y, x_2276.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
    let x_2281 : f32 = u_xlat69;
    u_xlat69 = max(x_2281, 6.10351562e-05f);
    let x_2284 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2284);
    let x_2287 : vec2<f32> = u_xlat49;
    let x_2289 : vec4<f32> = u_xlat9;
    let x_2291 : vec3<f32> = (vec3<f32>(x_2287.x, x_2287.x, x_2287.x) * vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
    let x_2292 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
    let x_2295 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2295);
    let x_2297 : f32 = u_xlat69;
    let x_2298 : u32 = u_xlatu66;
    let x_2301 : f32 = x_2261.x_AdditionalLightsAttenuation[bitcast<i32>(x_2298)].x;
    u_xlat69 = (x_2297 * x_2301);
    let x_2303 : f32 = u_xlat69;
    let x_2305 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2303) * x_2305) + 1.0f);
    let x_2308 : f32 = u_xlat69;
    u_xlat69 = max(x_2308, 0.0f);
    let x_2310 : f32 = u_xlat69;
    let x_2311 : f32 = u_xlat69;
    u_xlat69 = (x_2310 * x_2311);
    let x_2313 : f32 = u_xlat69;
    let x_2314 : f32 = u_xlat70;
    u_xlat69 = (x_2313 * x_2314);
    let x_2316 : u32 = u_xlatu66;
    let x_2319 : vec4<f32> = x_2261.x_AdditionalLightsSpotDir[bitcast<i32>(x_2316)];
    let x_2321 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2319.x, x_2319.y, x_2319.z), vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
    let x_2324 : f32 = u_xlat70;
    let x_2325 : u32 = u_xlatu66;
    let x_2328 : f32 = x_2261.x_AdditionalLightsAttenuation[bitcast<i32>(x_2325)].z;
    let x_2330 : u32 = u_xlatu66;
    let x_2333 : f32 = x_2261.x_AdditionalLightsAttenuation[bitcast<i32>(x_2330)].w;
    u_xlat70 = ((x_2324 * x_2328) + x_2333);
    let x_2335 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2335, 0.0f, 1.0f);
    let x_2337 : f32 = u_xlat70;
    let x_2338 : f32 = u_xlat70;
    u_xlat70 = (x_2337 * x_2338);
    let x_2340 : f32 = u_xlat69;
    let x_2341 : f32 = u_xlat70;
    u_xlat69 = (x_2340 * x_2341);
    let x_2344 : u32 = u_xlatu66;
    u_xlatu70 = (x_2344 >> 5u);
    let x_2347 : u32 = u_xlatu66;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2347) & 31i)));
    let x_2353 : i32 = u_xlati71;
    let x_2355 : u32 = u_xlatu70;
    let x_2358 : f32 = x_1817.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2355)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2353) & bitcast<u32>(x_2358)));
    let x_2362 : i32 = u_xlati70;
    if ((x_2362 != 0i)) {
      let x_2372 : u32 = u_xlatu66;
      let x_2375 : f32 = x_2371.x_AdditionalLightsLightTypes[bitcast<i32>(x_2372)].el;
      u_xlati70 = i32(x_2375);
      let x_2377 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2377 != 0i));
      let x_2381 : u32 = u_xlatu66;
      u_xlati72 = (bitcast<i32>(x_2381) << bitcast<u32>(2i));
      let x_2384 : i32 = u_xlati71;
      if ((x_2384 != 0i)) {
        let x_2388 : vec3<f32> = vs_TEXCOORD1;
        let x_2390 : i32 = u_xlati72;
        let x_2393 : i32 = u_xlati72;
        let x_2397 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2390 + 1i) / 4i)][((x_2393 + 1i) % 4i)];
        let x_2399 : vec3<f32> = (vec3<f32>(x_2388.y, x_2388.y, x_2388.y) * vec3<f32>(x_2397.x, x_2397.y, x_2397.w));
        let x_2400 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
        let x_2402 : i32 = u_xlati72;
        let x_2404 : i32 = u_xlati72;
        let x_2407 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[(x_2402 / 4i)][(x_2404 % 4i)];
        let x_2409 : vec3<f32> = vs_TEXCOORD1;
        let x_2412 : vec4<f32> = u_xlat11;
        let x_2414 : vec3<f32> = ((vec3<f32>(x_2407.x, x_2407.y, x_2407.w) * vec3<f32>(x_2409.x, x_2409.x, x_2409.x)) + vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
        let x_2415 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
        let x_2417 : i32 = u_xlati72;
        let x_2420 : i32 = u_xlati72;
        let x_2424 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2417 + 2i) / 4i)][((x_2420 + 2i) % 4i)];
        let x_2426 : vec3<f32> = vs_TEXCOORD1;
        let x_2429 : vec4<f32> = u_xlat11;
        let x_2431 : vec3<f32> = ((vec3<f32>(x_2424.x, x_2424.y, x_2424.w) * vec3<f32>(x_2426.z, x_2426.z, x_2426.z)) + vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
        let x_2432 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
        let x_2434 : vec4<f32> = u_xlat11;
        let x_2436 : i32 = u_xlati72;
        let x_2439 : i32 = u_xlati72;
        let x_2443 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2436 + 3i) / 4i)][((x_2439 + 3i) % 4i)];
        let x_2445 : vec3<f32> = (vec3<f32>(x_2434.x, x_2434.y, x_2434.z) + vec3<f32>(x_2443.x, x_2443.y, x_2443.w));
        let x_2446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
        let x_2448 : vec4<f32> = u_xlat11;
        let x_2450 : vec4<f32> = u_xlat11;
        let x_2452 : vec2<f32> = (vec2<f32>(x_2448.x, x_2448.y) / vec2<f32>(x_2450.z, x_2450.z));
        let x_2453 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2452.x, x_2452.y, x_2453.z, x_2453.w);
        let x_2455 : vec4<f32> = u_xlat11;
        let x_2458 : vec2<f32> = ((vec2<f32>(x_2455.x, x_2455.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2459 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
        let x_2461 : vec4<f32> = u_xlat11;
        let x_2465 : vec2<f32> = clamp(vec2<f32>(x_2461.x, x_2461.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2466 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2465.x, x_2465.y, x_2466.z, x_2466.w);
        let x_2468 : u32 = u_xlatu66;
        let x_2471 : vec4<f32> = x_2371.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2468)];
        let x_2473 : vec4<f32> = u_xlat11;
        let x_2476 : u32 = u_xlatu66;
        let x_2479 : vec4<f32> = x_2371.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2476)];
        let x_2481 : vec2<f32> = ((vec2<f32>(x_2471.x, x_2471.y) * vec2<f32>(x_2473.x, x_2473.y)) + vec2<f32>(x_2479.z, x_2479.w));
        let x_2482 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
      } else {
        let x_2486 : i32 = u_xlati70;
        u_xlatb70 = (x_2486 == 1i);
        let x_2488 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2488);
        let x_2490 : i32 = u_xlati70;
        if ((x_2490 != 0i)) {
          let x_2495 : vec3<f32> = vs_TEXCOORD1;
          let x_2497 : i32 = u_xlati72;
          let x_2500 : i32 = u_xlati72;
          let x_2504 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2497 + 1i) / 4i)][((x_2500 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2495.y, x_2495.y) * vec2<f32>(x_2504.x, x_2504.y));
          let x_2507 : i32 = u_xlati72;
          let x_2509 : i32 = u_xlati72;
          let x_2512 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[(x_2507 / 4i)][(x_2509 % 4i)];
          let x_2514 : vec3<f32> = vs_TEXCOORD1;
          let x_2517 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2512.x, x_2512.y) * vec2<f32>(x_2514.x, x_2514.x)) + x_2517);
          let x_2519 : i32 = u_xlati72;
          let x_2522 : i32 = u_xlati72;
          let x_2526 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2519 + 2i) / 4i)][((x_2522 + 2i) % 4i)];
          let x_2528 : vec3<f32> = vs_TEXCOORD1;
          let x_2531 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2526.x, x_2526.y) * vec2<f32>(x_2528.z, x_2528.z)) + x_2531);
          let x_2533 : vec2<f32> = u_xlat53;
          let x_2534 : i32 = u_xlati72;
          let x_2537 : i32 = u_xlati72;
          let x_2541 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2534 + 3i) / 4i)][((x_2537 + 3i) % 4i)];
          u_xlat53 = (x_2533 + vec2<f32>(x_2541.x, x_2541.y));
          let x_2544 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2544 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2547 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2547);
          let x_2549 : u32 = u_xlatu66;
          let x_2552 : vec4<f32> = x_2371.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2549)];
          let x_2554 : vec2<f32> = u_xlat53;
          let x_2556 : u32 = u_xlatu66;
          let x_2559 : vec4<f32> = x_2371.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2556)];
          let x_2561 : vec2<f32> = ((vec2<f32>(x_2552.x, x_2552.y) * x_2554) + vec2<f32>(x_2559.z, x_2559.w));
          let x_2562 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
        } else {
          let x_2565 : vec3<f32> = vs_TEXCOORD1;
          let x_2567 : i32 = u_xlati72;
          let x_2570 : i32 = u_xlati72;
          let x_2574 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2567 + 1i) / 4i)][((x_2570 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2565.y, x_2565.y, x_2565.y, x_2565.y) * x_2574);
          let x_2576 : i32 = u_xlati72;
          let x_2578 : i32 = u_xlati72;
          let x_2581 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[(x_2576 / 4i)][(x_2578 % 4i)];
          let x_2582 : vec3<f32> = vs_TEXCOORD1;
          let x_2585 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2581 * vec4<f32>(x_2582.x, x_2582.x, x_2582.x, x_2582.x)) + x_2585);
          let x_2587 : i32 = u_xlati72;
          let x_2590 : i32 = u_xlati72;
          let x_2594 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2587 + 2i) / 4i)][((x_2590 + 2i) % 4i)];
          let x_2595 : vec3<f32> = vs_TEXCOORD1;
          let x_2598 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2594 * vec4<f32>(x_2595.z, x_2595.z, x_2595.z, x_2595.z)) + x_2598);
          let x_2600 : vec4<f32> = u_xlat12;
          let x_2601 : i32 = u_xlati72;
          let x_2604 : i32 = u_xlati72;
          let x_2608 : vec4<f32> = x_2371.x_AdditionalLightsWorldToLights[((x_2601 + 3i) / 4i)][((x_2604 + 3i) % 4i)];
          u_xlat12 = (x_2600 + x_2608);
          let x_2610 : vec4<f32> = u_xlat12;
          let x_2612 : vec4<f32> = u_xlat12;
          let x_2614 : vec3<f32> = (vec3<f32>(x_2610.x, x_2610.y, x_2610.z) / vec3<f32>(x_2612.w, x_2612.w, x_2612.w));
          let x_2615 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
          let x_2617 : vec4<f32> = u_xlat12;
          let x_2619 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
          let x_2622 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2622);
          let x_2624 : f32 = u_xlat70;
          let x_2626 : vec4<f32> = u_xlat12;
          let x_2628 : vec3<f32> = (vec3<f32>(x_2624, x_2624, x_2624) * vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
          let x_2629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
          let x_2631 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2631.x, x_2631.y, x_2631.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2636 : f32 = u_xlat70;
          u_xlat70 = max(x_2636, 0.000001f);
          let x_2639 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2639);
          let x_2641 : f32 = u_xlat70;
          let x_2643 : vec4<f32> = u_xlat12;
          let x_2645 : vec3<f32> = (vec3<f32>(x_2641, x_2641, x_2641) * vec3<f32>(x_2643.z, x_2643.x, x_2643.y));
          let x_2646 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
          let x_2649 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2649);
          let x_2653 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2653, 0.0f, 1.0f);
          let x_2657 : vec4<f32> = u_xlat13;
          let x_2660 : vec4<bool> = (vec4<f32>(x_2657.y, x_2657.z, x_2657.y, x_2657.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2660.x, x_2660.y);
          let x_2663 : bool = u_xlatb53.x;
          if (x_2663) {
            let x_2668 : f32 = u_xlat13.x;
            x_2664 = x_2668;
          } else {
            let x_2671 : f32 = u_xlat13.x;
            x_2664 = -(x_2671);
          }
          let x_2673 : f32 = x_2664;
          u_xlat53.x = x_2673;
          let x_2676 : bool = u_xlatb53.y;
          if (x_2676) {
            let x_2681 : f32 = u_xlat13.x;
            x_2677 = x_2681;
          } else {
            let x_2684 : f32 = u_xlat13.x;
            x_2677 = -(x_2684);
          }
          let x_2686 : f32 = x_2677;
          u_xlat53.y = x_2686;
          let x_2688 : vec4<f32> = u_xlat12;
          let x_2690 : f32 = u_xlat70;
          let x_2693 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2688.x, x_2688.y) * vec2<f32>(x_2690, x_2690)) + x_2693);
          let x_2695 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2695 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2698 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2698, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2702 : u32 = u_xlatu66;
          let x_2705 : vec4<f32> = x_2371.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2702)];
          let x_2707 : vec2<f32> = u_xlat53;
          let x_2709 : u32 = u_xlatu66;
          let x_2712 : vec4<f32> = x_2371.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2709)];
          let x_2714 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.y) * x_2707) + vec2<f32>(x_2712.z, x_2712.w));
          let x_2715 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2714.x, x_2714.y, x_2715.z, x_2715.w);
        }
      }
      let x_2722 : vec4<f32> = u_xlat11;
      let x_2725 : f32 = x_44.x_GlobalMipBias.x;
      let x_2726 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2722.x, x_2722.y), x_2725);
      u_xlat11 = x_2726;
      let x_2728 : bool = u_xlatb7.y;
      if (x_2728) {
        let x_2733 : f32 = u_xlat11.w;
        x_2729 = x_2733;
      } else {
        let x_2736 : f32 = u_xlat11.x;
        x_2729 = x_2736;
      }
      let x_2737 : f32 = x_2729;
      u_xlat70 = x_2737;
      let x_2739 : bool = u_xlatb7.x;
      if (x_2739) {
        let x_2743 : vec4<f32> = u_xlat11;
        x_2740 = vec3<f32>(x_2743.x, x_2743.y, x_2743.z);
      } else {
        let x_2746 : f32 = u_xlat70;
        x_2740 = vec3<f32>(x_2746, x_2746, x_2746);
      }
      let x_2748 : vec3<f32> = x_2740;
      let x_2749 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2755 : vec4<f32> = u_xlat11;
    let x_2757 : u32 = u_xlatu66;
    let x_2760 : vec4<f32> = x_2261.x_AdditionalLightsColor[bitcast<i32>(x_2757)];
    let x_2762 : vec3<f32> = (vec3<f32>(x_2755.x, x_2755.y, x_2755.z) * vec3<f32>(x_2760.x, x_2760.y, x_2760.z));
    let x_2763 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
    let x_2765 : f32 = u_xlat27;
    let x_2767 : vec4<f32> = u_xlat11;
    let x_2769 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
    let x_2770 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
    let x_2772 : vec3<f32> = u_xlat2;
    let x_2773 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_2772, vec3<f32>(x_2773.x, x_2773.y, x_2773.z));
    let x_2776 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2776, 0.0f, 1.0f);
    let x_2778 : f32 = u_xlat66;
    let x_2779 : f32 = u_xlat69;
    u_xlat66 = (x_2778 * x_2779);
    let x_2781 : f32 = u_xlat66;
    let x_2783 : vec4<f32> = u_xlat11;
    let x_2785 : vec3<f32> = (vec3<f32>(x_2781, x_2781, x_2781) * vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
    let x_2786 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2786.w);
    let x_2788 : vec4<f32> = u_xlat9;
    let x_2790 : vec2<f32> = u_xlat49;
    let x_2793 : vec3<f32> = u_xlat3;
    let x_2794 : vec3<f32> = ((vec3<f32>(x_2788.x, x_2788.y, x_2788.z) * vec3<f32>(x_2790.x, x_2790.x, x_2790.x)) + x_2793);
    let x_2795 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
    let x_2797 : vec4<f32> = u_xlat9;
    let x_2799 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2797.x, x_2797.y, x_2797.z), vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
    let x_2802 : f32 = u_xlat66;
    u_xlat66 = max(x_2802, 1.17549435e-37f);
    let x_2804 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2804);
    let x_2806 : f32 = u_xlat66;
    let x_2808 : vec4<f32> = u_xlat9;
    let x_2810 : vec3<f32> = (vec3<f32>(x_2806, x_2806, x_2806) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
    let x_2811 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
    let x_2813 : vec3<f32> = u_xlat2;
    let x_2814 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_2813, vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
    let x_2817 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2817, 0.0f, 1.0f);
    let x_2819 : vec4<f32> = u_xlat10;
    let x_2821 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2819.x, x_2819.y, x_2819.z), vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
    let x_2824 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2824, 0.0f, 1.0f);
    let x_2826 : f32 = u_xlat66;
    let x_2827 : f32 = u_xlat66;
    u_xlat66 = (x_2826 * x_2827);
    let x_2829 : f32 = u_xlat66;
    let x_2831 : f32 = u_xlat48.x;
    u_xlat66 = ((x_2829 * x_2831) + 1.000010014f);
    let x_2834 : f32 = u_xlat69;
    let x_2835 : f32 = u_xlat69;
    u_xlat69 = (x_2834 * x_2835);
    let x_2837 : f32 = u_xlat66;
    let x_2838 : f32 = u_xlat66;
    u_xlat66 = (x_2837 * x_2838);
    let x_2840 : f32 = u_xlat69;
    u_xlat69 = max(x_2840, 0.100000001f);
    let x_2842 : f32 = u_xlat66;
    let x_2843 : f32 = u_xlat69;
    u_xlat66 = (x_2842 * x_2843);
    let x_2845 : f32 = u_xlat68;
    let x_2846 : f32 = u_xlat66;
    u_xlat66 = (x_2845 * x_2846);
    let x_2848 : f32 = u_xlat67;
    let x_2849 : f32 = u_xlat66;
    u_xlat66 = (x_2848 / x_2849);
    let x_2851 : vec4<f32> = u_xlat0;
    let x_2853 : f32 = u_xlat66;
    let x_2856 : vec3<f32> = u_xlat22;
    let x_2857 : vec3<f32> = ((vec3<f32>(x_2851.x, x_2851.y, x_2851.z) * vec3<f32>(x_2853, x_2853, x_2853)) + x_2856);
    let x_2858 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2857.x, x_2857.y, x_2857.z, x_2858.w);
    let x_2860 : vec4<f32> = u_xlat9;
    let x_2862 : vec4<f32> = u_xlat11;
    let x_2865 : vec4<f32> = u_xlat8;
    let x_2867 : vec3<f32> = ((vec3<f32>(x_2860.x, x_2860.y, x_2860.z) * vec3<f32>(x_2862.x, x_2862.y, x_2862.z)) + vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
    let x_2868 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);

    continuing {
      let x_2870 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2870 + bitcast<u32>(1i));
    }
  }
  let x_2872 : vec4<f32> = u_xlat5;
  let x_2874 : vec3<f32> = u_xlat6;
  let x_2877 : vec4<f32> = u_xlat4;
  let x_2879 : vec3<f32> = ((vec3<f32>(x_2872.x, x_2872.y, x_2872.z) * vec3<f32>(x_2874.x, x_2874.x, x_2874.x)) + vec3<f32>(x_2877.x, x_2877.y, x_2877.z));
  let x_2880 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
  let x_2884 : vec4<f32> = u_xlat8;
  let x_2886 : vec4<f32> = u_xlat0;
  let x_2888 : vec3<f32> = (vec3<f32>(x_2884.x, x_2884.y, x_2884.z) + vec3<f32>(x_2886.x, x_2886.y, x_2886.z));
  let x_2889 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2888.x, x_2888.y, x_2888.z, x_2889.w);
  let x_2894 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2894 == 1.0f);
  let x_2896 : bool = u_xlatb0;
  if (x_2896) {
    let x_2901 : f32 = u_xlat1.x;
    x_2897 = x_2901;
  } else {
    x_2897 = 1.0f;
  }
  let x_2903 : f32 = x_2897;
  SV_Target0.w = x_2903;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

