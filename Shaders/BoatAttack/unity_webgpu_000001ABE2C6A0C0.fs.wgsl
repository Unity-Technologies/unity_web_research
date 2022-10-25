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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_367 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1715 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2148 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2257 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb63 : bool;
  var u_xlat65 : f32;
  var u_xlat3 : vec3<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat26 : f32;
  var u_xlat68 : f32;
  var u_xlat47 : f32;
  var u_xlatb6 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
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
  var u_xlatb48 : bool;
  var x_1669 : f32;
  var x_1798 : f32;
  var x_1809 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu65 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu70 : u32;
  var u_xlati72 : i32;
  var u_xlati70 : i32;
  var u_xlati73 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2550 : f32;
  var x_2563 : f32;
  var x_2615 : f32;
  var x_2626 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2805 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat63 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat63;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat63;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat63 = x_110;
  let x_111 : f32 = u_xlat63;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat63 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat63;
  u_xlatb63 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb63;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat65;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_154 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_154;
  let x_157 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_157;
  let x_161 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_161;
  let x_163 : bool = u_xlatb63;
  if (x_163) {
    let x_167 : vec3<f32> = u_xlat2;
    x_164 = x_167;
  } else {
    let x_169 : vec3<f32> = u_xlat3;
    x_164 = x_169;
  }
  let x_170 : vec3<f32> = x_164;
  u_xlat2 = x_170;
  let x_172 : vec3<f32> = vs_TEXCOORD2;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_172, x_173);
  let x_175 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat63;
  let x_179 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_177, x_177, x_177) * x_179);
  let x_182 : f32 = vs_TEXCOORD1.y;
  let x_184 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_182 * x_184);
  let x_187 : f32 = x_44.unity_MatrixV[0i].z;
  let x_189 : f32 = vs_TEXCOORD1.x;
  let x_191 : f32 = u_xlat63;
  u_xlat63 = ((x_187 * x_189) + x_191);
  let x_194 : f32 = x_44.unity_MatrixV[2i].z;
  let x_196 : f32 = vs_TEXCOORD1.z;
  let x_198 : f32 = u_xlat63;
  u_xlat63 = ((x_194 * x_196) + x_198);
  let x_200 : f32 = u_xlat63;
  let x_203 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_200 + x_203);
  let x_205 : f32 = u_xlat63;
  let x_209 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_205) + -(x_209));
  let x_212 : f32 = u_xlat63;
  u_xlat63 = max(x_212, 0.0f);
  let x_214 : f32 = u_xlat63;
  let x_217 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_214 * x_217);
  let x_226 : vec2<f32> = vs_TEXCOORD8;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_226, x_228);
  u_xlat4 = vec3<f32>(x_229.x, x_229.y, x_229.z);
  let x_234 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_235 : vec2<f32> = vec2<f32>(x_234.x, x_234.y);
  let x_239 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_235.x, x_235.y));
  let x_240 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_242 : vec3<f32> = u_xlat5;
  let x_244 : vec4<f32> = hlslcc_FragCoord;
  let x_246 : vec2<f32> = (vec2<f32>(x_242.x, x_242.y) * vec2<f32>(x_244.x, x_244.y));
  let x_247 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_246.x, x_246.y, x_247.z);
  let x_250 : f32 = u_xlat5.y;
  let x_253 : f32 = x_44.x_ScaleBiasRt.x;
  let x_256 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_250 * x_253) + x_256);
  let x_258 : f32 = u_xlat65;
  u_xlat5.z = (-(x_258) + 1.0f);
  let x_263 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_263) * 0.959999979f) + 0.959999979f);
  let x_269 : f32 = u_xlat65;
  let x_272 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_269) + x_272);
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_275.y, x_275.z, x_275.w) * vec3<f32>(x_277, x_277, x_277));
  let x_280 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = x_57.x_BaseColor;
  let x_288 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : f32 = x_57.x_Metallic;
  let x_294 : f32 = x_57.x_Metallic;
  let x_296 : f32 = x_57.x_Metallic;
  let x_297 : vec3<f32> = vec3<f32>(x_292, x_294, x_296);
  let x_302 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_302.x, x_302.y, x_302.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_311) + 1.0f);
  let x_315 : f32 = u_xlat65;
  let x_316 : f32 = u_xlat65;
  u_xlat67 = (x_315 * x_316);
  let x_318 : f32 = u_xlat67;
  u_xlat67 = max(x_318, 0.0078125f);
  let x_322 : f32 = u_xlat67;
  let x_323 : f32 = u_xlat67;
  u_xlat26 = (x_322 * x_323);
  let x_325 : f32 = u_xlat66;
  u_xlat66 = (x_325 + 1.0f);
  let x_327 : f32 = u_xlat66;
  u_xlat66 = clamp(x_327, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat67;
  u_xlat68 = ((x_330 * 4.0f) + 2.0f);
  let x_340 : vec3<f32> = u_xlat5;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_340.x, x_340.z), x_343);
  u_xlat5.x = x_344.x;
  let x_349 : f32 = u_xlat5.x;
  u_xlat47 = (x_349 + -1.0f);
  let x_354 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_355 : f32 = u_xlat47;
  u_xlat47 = ((x_354 * x_355) + 1.0f);
  let x_359 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_359, 1.0f);
  let x_369 : f32 = x_367.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_369);
  let x_371 : bool = u_xlatb6;
  if (x_371) {
    let x_375 : f32 = x_367.x_MainLightShadowParams.y;
    u_xlatb6 = (x_375 == 1.0f);
    let x_377 : bool = u_xlatb6;
    if (x_377) {
      let x_382 : vec4<f32> = vs_TEXCOORD6;
      let x_385 : vec4<f32> = x_367.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_382.x, x_382.y, x_382.x, x_382.y) + x_385);
      let x_388 : vec4<f32> = u_xlat6;
      let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
      let x_391 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_404 : vec3<f32> = txVec0;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_404.xy, x_404.z);
      u_xlat7.x = x_406;
      let x_409 : vec4<f32> = u_xlat6;
      let x_410 : vec2<f32> = vec2<f32>(x_409.z, x_409.w);
      let x_412 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_410.x, x_410.y, x_412);
      let x_419 : vec3<f32> = txVec1;
      let x_421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_419.xy, x_419.z);
      u_xlat7.y = x_421;
      let x_423 : vec4<f32> = vs_TEXCOORD6;
      let x_426 : vec4<f32> = x_367.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_423.x, x_423.y, x_423.x, x_423.y) + x_426);
      let x_429 : vec4<f32> = u_xlat6;
      let x_430 : vec2<f32> = vec2<f32>(x_429.x, x_429.y);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_430.x, x_430.y, x_432);
      let x_439 : vec3<f32> = txVec2;
      let x_441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_439.xy, x_439.z);
      u_xlat7.z = x_441;
      let x_444 : vec4<f32> = u_xlat6;
      let x_445 : vec2<f32> = vec2<f32>(x_444.z, x_444.w);
      let x_447 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_445.x, x_445.y, x_447);
      let x_454 : vec3<f32> = txVec3;
      let x_456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_454.xy, x_454.z);
      u_xlat7.w = x_456;
      let x_458 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_458, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_468 : f32 = x_367.x_MainLightShadowParams.y;
      u_xlatb27.x = (x_468 == 2.0f);
      let x_472 : bool = u_xlatb27.x;
      if (x_472) {
        let x_476 : vec4<f32> = vs_TEXCOORD6;
        let x_479 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_484 : vec2<f32> = ((vec2<f32>(x_476.x, x_476.y) * vec2<f32>(x_479.z, x_479.w)) + vec2<f32>(0.5f, 0.5f));
        let x_485 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_484.x, x_484.y, x_485.z);
        let x_487 : vec3<f32> = u_xlat27;
        let x_489 : vec2<f32> = floor(vec2<f32>(x_487.x, x_487.y));
        let x_490 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_489.x, x_489.y, x_490.z);
        let x_492 : vec4<f32> = vs_TEXCOORD6;
        let x_495 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_498 : vec3<f32> = u_xlat27;
        let x_501 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_495.z, x_495.w)) + -(vec2<f32>(x_498.x, x_498.y)));
        let x_502 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_505 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_505.x, x_505.x, x_505.y, x_505.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_510 : vec4<f32> = u_xlat8;
        let x_512 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_510.x, x_510.x, x_510.z, x_510.z) * vec4<f32>(x_512.x, x_512.x, x_512.z, x_512.z));
        let x_517 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_517.y, x_517.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_522 : vec4<f32> = u_xlat9;
        let x_525 : vec4<f32> = u_xlat7;
        let x_528 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_525.x, x_525.y)));
        let x_529 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_528.x, x_529.y, x_528.y, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_534 : vec2<f32> = (-(vec2<f32>(x_531.x, x_531.y)) + vec2<f32>(1.0f, 1.0f));
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_538.x, x_538.y), vec2<f32>(0.0f, 0.0f));
        let x_542 : vec2<f32> = u_xlat51;
        let x_544 : vec2<f32> = u_xlat51;
        let x_546 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_542) * x_544) + vec2<f32>(x_546.x, x_546.y));
        let x_549 : vec4<f32> = u_xlat7;
        let x_551 : vec2<f32> = max(vec2<f32>(x_549.x, x_549.y), vec2<f32>(0.0f, 0.0f));
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat7;
        let x_557 : vec4<f32> = u_xlat7;
        let x_560 : vec4<f32> = u_xlat8;
        let x_562 : vec2<f32> = ((-(vec2<f32>(x_554.x, x_554.y)) * vec2<f32>(x_557.x, x_557.y)) + vec2<f32>(x_560.y, x_560.w));
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_565 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_565 + vec2<f32>(1.0f, 1.0f));
        let x_567 : vec4<f32> = u_xlat7;
        let x_569 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) + vec2<f32>(1.0f, 1.0f));
        let x_570 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_573 : vec4<f32> = u_xlat8;
        let x_577 : vec2<f32> = (vec2<f32>(x_573.x, x_573.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_578 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_581 : vec4<f32> = u_xlat9;
        let x_583 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_584 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec2<f32> = u_xlat51;
        let x_587 : vec2<f32> = (x_586 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_591 : vec4<f32> = u_xlat7;
        let x_593 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_594 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat8;
        let x_598 : vec2<f32> = (vec2<f32>(x_596.y, x_596.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_602 : f32 = u_xlat9.x;
        u_xlat10.z = x_602;
        let x_605 : f32 = u_xlat7.x;
        u_xlat10.w = x_605;
        let x_608 : f32 = u_xlat12.x;
        u_xlat11.z = x_608;
        let x_611 : f32 = u_xlat49.x;
        u_xlat11.w = x_611;
        let x_613 : vec4<f32> = u_xlat10;
        let x_615 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_613.z, x_613.w, x_613.x, x_613.z) + vec4<f32>(x_615.z, x_615.w, x_615.x, x_615.z));
        let x_619 : f32 = u_xlat10.y;
        u_xlat9.z = x_619;
        let x_622 : f32 = u_xlat7.y;
        u_xlat9.w = x_622;
        let x_625 : f32 = u_xlat11.y;
        u_xlat12.z = x_625;
        let x_628 : f32 = u_xlat49.y;
        u_xlat12.w = x_628;
        let x_630 : vec4<f32> = u_xlat9;
        let x_632 : vec4<f32> = u_xlat12;
        let x_634 : vec3<f32> = (vec3<f32>(x_630.z, x_630.y, x_630.w) + vec3<f32>(x_632.z, x_632.y, x_632.w));
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
        let x_637 : vec4<f32> = u_xlat11;
        let x_639 : vec4<f32> = u_xlat8;
        let x_641 : vec3<f32> = (vec3<f32>(x_637.x, x_637.z, x_637.w) / vec3<f32>(x_639.z, x_639.w, x_639.y));
        let x_642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_650 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_651 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
        let x_653 : vec4<f32> = u_xlat12;
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec3<f32> = (vec3<f32>(x_653.z, x_653.y, x_653.w) / vec3<f32>(x_655.x, x_655.y, x_655.z));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
        let x_660 : vec4<f32> = u_xlat10;
        let x_662 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_663 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat9;
        let x_668 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_670 : vec3<f32> = (vec3<f32>(x_665.y, x_665.x, x_665.z) * vec3<f32>(x_668.x, x_668.x, x_668.x));
        let x_671 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat10;
        let x_676 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_678 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(x_676.y, x_676.y, x_676.y));
        let x_679 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
        let x_682 : f32 = u_xlat10.x;
        u_xlat9.w = x_682;
        let x_684 : vec3<f32> = u_xlat27;
        let x_687 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y) * vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y)) + vec4<f32>(x_690.y, x_690.w, x_690.x, x_690.w));
        let x_693 : vec3<f32> = u_xlat27;
        let x_696 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_699 : vec4<f32> = u_xlat9;
        let x_701 : vec2<f32> = ((vec2<f32>(x_693.x, x_693.y) * vec2<f32>(x_696.x, x_696.y)) + vec2<f32>(x_699.z, x_699.w));
        let x_702 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
        let x_705 : f32 = u_xlat9.y;
        u_xlat10.w = x_705;
        let x_707 : vec4<f32> = u_xlat10;
        let x_708 : vec2<f32> = vec2<f32>(x_707.y, x_707.z);
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_709.x, x_708.x, x_709.z, x_708.y);
        let x_712 : vec3<f32> = u_xlat27;
        let x_715 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_718 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y) * vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y)) + vec4<f32>(x_718.x, x_718.y, x_718.z, x_718.y));
        let x_721 : vec3<f32> = u_xlat27;
        let x_724 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_727 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) * vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y)) + vec4<f32>(x_727.w, x_727.y, x_727.w, x_727.z));
        let x_730 : vec3<f32> = u_xlat27;
        let x_733 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_736 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y) * vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y)) + vec4<f32>(x_736.x, x_736.w, x_736.z, x_736.w));
        let x_740 : vec4<f32> = u_xlat7;
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_740.x, x_740.x, x_740.x, x_740.y) * vec4<f32>(x_742.z, x_742.w, x_742.y, x_742.z));
        let x_746 : vec4<f32> = u_xlat7;
        let x_748 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_746.y, x_746.y, x_746.z, x_746.z) * x_748);
        let x_751 : f32 = u_xlat7.z;
        let x_753 : f32 = u_xlat8.y;
        u_xlat27.x = (x_751 * x_753);
        let x_757 : vec4<f32> = u_xlat11;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_768 : vec3<f32> = txVec4;
        let x_770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_768.xy, x_768.z);
        u_xlat48 = x_770;
        let x_772 : vec4<f32> = u_xlat11;
        let x_773 : vec2<f32> = vec2<f32>(x_772.z, x_772.w);
        let x_775 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_773.x, x_773.y, x_775);
        let x_783 : vec3<f32> = txVec5;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_783.xy, x_783.z);
        u_xlat69 = x_785;
        let x_786 : f32 = u_xlat69;
        let x_788 : f32 = u_xlat14.y;
        u_xlat69 = (x_786 * x_788);
        let x_791 : f32 = u_xlat14.x;
        let x_792 : f32 = u_xlat48;
        let x_794 : f32 = u_xlat69;
        u_xlat48 = ((x_791 * x_792) + x_794);
        let x_797 : vec4<f32> = u_xlat12;
        let x_798 : vec2<f32> = vec2<f32>(x_797.x, x_797.y);
        let x_800 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_798.x, x_798.y, x_800);
        let x_807 : vec3<f32> = txVec6;
        let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_807.xy, x_807.z);
        u_xlat69 = x_809;
        let x_811 : f32 = u_xlat14.z;
        let x_812 : f32 = u_xlat69;
        let x_814 : f32 = u_xlat48;
        u_xlat48 = ((x_811 * x_812) + x_814);
        let x_817 : vec4<f32> = u_xlat10;
        let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec7;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat69 = x_829;
        let x_831 : f32 = u_xlat14.w;
        let x_832 : f32 = u_xlat69;
        let x_834 : f32 = u_xlat48;
        u_xlat48 = ((x_831 * x_832) + x_834);
        let x_837 : vec4<f32> = u_xlat13;
        let x_838 : vec2<f32> = vec2<f32>(x_837.x, x_837.y);
        let x_840 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec8;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_847.xy, x_847.z);
        u_xlat69 = x_849;
        let x_851 : f32 = u_xlat15.x;
        let x_852 : f32 = u_xlat69;
        let x_854 : f32 = u_xlat48;
        u_xlat48 = ((x_851 * x_852) + x_854);
        let x_857 : vec4<f32> = u_xlat13;
        let x_858 : vec2<f32> = vec2<f32>(x_857.z, x_857.w);
        let x_860 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_858.x, x_858.y, x_860);
        let x_867 : vec3<f32> = txVec9;
        let x_869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_867.xy, x_867.z);
        u_xlat69 = x_869;
        let x_871 : f32 = u_xlat15.y;
        let x_872 : f32 = u_xlat69;
        let x_874 : f32 = u_xlat48;
        u_xlat48 = ((x_871 * x_872) + x_874);
        let x_877 : vec4<f32> = u_xlat10;
        let x_878 : vec2<f32> = vec2<f32>(x_877.z, x_877.w);
        let x_880 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec10;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_887.xy, x_887.z);
        u_xlat69 = x_889;
        let x_891 : f32 = u_xlat15.z;
        let x_892 : f32 = u_xlat69;
        let x_894 : f32 = u_xlat48;
        u_xlat48 = ((x_891 * x_892) + x_894);
        let x_897 : vec4<f32> = u_xlat9;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec11;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_907.xy, x_907.z);
        u_xlat69 = x_909;
        let x_911 : f32 = u_xlat15.w;
        let x_912 : f32 = u_xlat69;
        let x_914 : f32 = u_xlat48;
        u_xlat48 = ((x_911 * x_912) + x_914);
        let x_917 : vec4<f32> = u_xlat9;
        let x_918 : vec2<f32> = vec2<f32>(x_917.z, x_917.w);
        let x_920 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec12;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
        u_xlat69 = x_929;
        let x_931 : f32 = u_xlat27.x;
        let x_932 : f32 = u_xlat69;
        let x_934 : f32 = u_xlat48;
        u_xlat6.x = ((x_931 * x_932) + x_934);
      } else {
        let x_938 : vec4<f32> = vs_TEXCOORD6;
        let x_941 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_944 : vec2<f32> = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.z, x_941.w)) + vec2<f32>(0.5f, 0.5f));
        let x_945 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_944.x, x_944.y, x_945.z);
        let x_947 : vec3<f32> = u_xlat27;
        let x_949 : vec2<f32> = floor(vec2<f32>(x_947.x, x_947.y));
        let x_950 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_949.x, x_949.y, x_950.z);
        let x_952 : vec4<f32> = vs_TEXCOORD6;
        let x_955 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_958 : vec3<f32> = u_xlat27;
        let x_961 : vec2<f32> = ((vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_955.z, x_955.w)) + -(vec2<f32>(x_958.x, x_958.y)));
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_964.x, x_964.x, x_964.y, x_964.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_967 : vec4<f32> = u_xlat8;
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_967.x, x_967.x, x_967.z, x_967.z) * vec4<f32>(x_969.x, x_969.x, x_969.z, x_969.z));
        let x_972 : vec4<f32> = u_xlat9;
        let x_976 : vec2<f32> = (vec2<f32>(x_972.y, x_972.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_977 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec4<f32> = u_xlat9;
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_979.x, x_979.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_982.x, x_982.y)));
        let x_986 : vec4<f32> = u_xlat7;
        let x_989 : vec2<f32> = (-(vec2<f32>(x_986.x, x_986.y)) + vec2<f32>(1.0f, 1.0f));
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_989.x, x_990.y, x_989.y, x_990.w);
        let x_992 : vec4<f32> = u_xlat7;
        let x_994 : vec2<f32> = min(vec2<f32>(x_992.x, x_992.y), vec2<f32>(0.0f, 0.0f));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat9;
        let x_1000 : vec4<f32> = u_xlat9;
        let x_1003 : vec4<f32> = u_xlat8;
        let x_1005 : vec2<f32> = ((-(vec2<f32>(x_997.x, x_997.y)) * vec2<f32>(x_1000.x, x_1000.y)) + vec2<f32>(x_1003.x, x_1003.z));
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1005.x, x_1006.y, x_1005.y, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat7;
        let x_1010 : vec2<f32> = max(vec2<f32>(x_1008.x, x_1008.y), vec2<f32>(0.0f, 0.0f));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1021 : vec2<f32> = ((-(vec2<f32>(x_1013.x, x_1013.y)) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.y, x_1019.w));
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1022.x, x_1021.x, x_1022.z, x_1021.y);
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1024 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1028 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1028 * 0.081632003f);
        let x_1032 : vec2<f32> = u_xlat49;
        let x_1035 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1036 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1038.x, x_1038.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1042 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1042 * 0.081632003f);
        let x_1046 : f32 = u_xlat11.y;
        u_xlat9.x = x_1046;
        let x_1048 : vec4<f32> = u_xlat7;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1056.x, x_1055.x, x_1056.z, x_1055.y);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1063 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1062.x, x_1063.y, x_1062.y, x_1063.w);
        let x_1066 : f32 = u_xlat49.x;
        u_xlat8.y = x_1066;
        let x_1069 : f32 = u_xlat10.y;
        u_xlat8.w = x_1069;
        let x_1071 : vec4<f32> = u_xlat8;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1071 + x_1072);
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1074.y, x_1074.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1078 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1083 : vec2<f32> = ((vec2<f32>(x_1080.y, x_1080.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1084 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1083.x, x_1084.y, x_1083.y, x_1084.w);
        let x_1087 : f32 = u_xlat49.y;
        u_xlat10.y = x_1087;
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1089 + x_1090);
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1092 / x_1093);
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1095 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1101 / x_1102);
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1104 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1106 : vec4<f32> = u_xlat8;
        let x_1109 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1106.w, x_1106.x, x_1106.y, x_1106.z) * vec4<f32>(x_1109.x, x_1109.x, x_1109.x, x_1109.x));
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1115 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1112.x, x_1112.w, x_1112.y, x_1112.z) * vec4<f32>(x_1115.y, x_1115.y, x_1115.y, x_1115.y));
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1119 : vec3<f32> = vec3<f32>(x_1118.y, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1119.z);
        let x_1123 : f32 = u_xlat10.x;
        u_xlat11.y = x_1123;
        let x_1125 : vec3<f32> = u_xlat27;
        let x_1128 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1131.y));
        let x_1134 : vec3<f32> = u_xlat27;
        let x_1137 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat11;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1146 : f32 = u_xlat11.y;
        u_xlat8.y = x_1146;
        let x_1149 : f32 = u_xlat10.z;
        u_xlat11.y = x_1149;
        let x_1151 : vec3<f32> = u_xlat27;
        let x_1154 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1161 : vec3<f32> = u_xlat27;
        let x_1164 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.w, x_1167.y));
        let x_1171 : f32 = u_xlat11.y;
        u_xlat8.z = x_1171;
        let x_1173 : vec3<f32> = u_xlat27;
        let x_1176 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.z));
        let x_1183 : f32 = u_xlat10.w;
        u_xlat11.y = x_1183;
        let x_1186 : vec3<f32> = u_xlat27;
        let x_1189 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y) * vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y)) + vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1192.y));
        let x_1196 : vec3<f32> = u_xlat27;
        let x_1199 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.w, x_1202.y));
        let x_1205 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1204.x, x_1204.y, x_1205.z);
        let x_1208 : f32 = u_xlat11.y;
        u_xlat8.w = x_1208;
        let x_1211 : vec3<f32> = u_xlat27;
        let x_1214 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(x_1217.x, x_1217.w));
        let x_1220 : vec4<f32> = u_xlat11;
        let x_1221 : vec3<f32> = vec3<f32>(x_1220.x, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1221.x, x_1222.y, x_1221.y, x_1221.z);
        let x_1224 : vec3<f32> = u_xlat27;
        let x_1227 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1234 : vec3<f32> = u_xlat27;
        let x_1237 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.w, x_1240.y));
        let x_1244 : f32 = u_xlat8.x;
        u_xlat10.x = x_1244;
        let x_1246 : vec3<f32> = u_xlat27;
        let x_1249 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1246.x, x_1246.y) * vec2<f32>(x_1249.x, x_1249.y)) + vec2<f32>(x_1252.x, x_1252.y));
        let x_1255 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1254.x, x_1254.y, x_1255.z);
        let x_1258 : vec4<f32> = u_xlat7;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1258.x, x_1258.x, x_1258.x, x_1258.x) * x_1260);
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1263.y, x_1263.y, x_1263.y, x_1263.y) * x_1265);
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1268.z, x_1268.z, x_1268.z, x_1268.z) * x_1270);
        let x_1272 : vec4<f32> = u_xlat7;
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1272.w, x_1272.w, x_1272.w, x_1272.w) * x_1274);
        let x_1277 : vec4<f32> = u_xlat12;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec13;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat69 = x_1289;
        let x_1291 : vec4<f32> = u_xlat12;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.z, x_1291.w);
        let x_1294 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec14;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1301.xy, x_1301.z);
        u_xlat8.x = x_1303;
        let x_1306 : f32 = u_xlat8.x;
        let x_1308 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1306 * x_1308);
        let x_1312 : f32 = u_xlat18.x;
        let x_1313 : f32 = u_xlat69;
        let x_1316 : f32 = u_xlat8.x;
        u_xlat69 = ((x_1312 * x_1313) + x_1316);
        let x_1319 : vec4<f32> = u_xlat13;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.x, x_1319.y);
        let x_1322 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec15;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1329.xy, x_1329.z);
        u_xlat8.x = x_1331;
        let x_1334 : f32 = u_xlat18.z;
        let x_1336 : f32 = u_xlat8.x;
        let x_1338 : f32 = u_xlat69;
        u_xlat69 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat15;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec16;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat8.x = x_1353;
        let x_1356 : f32 = u_xlat18.w;
        let x_1358 : f32 = u_xlat8.x;
        let x_1360 : f32 = u_xlat69;
        u_xlat69 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat14;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec17;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat8.x = x_1375;
        let x_1378 : f32 = u_xlat19.x;
        let x_1380 : f32 = u_xlat8.x;
        let x_1382 : f32 = u_xlat69;
        u_xlat69 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat14;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec18;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat8.x = x_1397;
        let x_1400 : f32 = u_xlat19.y;
        let x_1402 : f32 = u_xlat8.x;
        let x_1404 : f32 = u_xlat69;
        u_xlat69 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec2<f32> = u_xlat55;
        let x_1409 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec19;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat8.x = x_1418;
        let x_1421 : f32 = u_xlat19.z;
        let x_1423 : f32 = u_xlat8.x;
        let x_1425 : f32 = u_xlat69;
        u_xlat69 = ((x_1421 * x_1423) + x_1425);
        let x_1428 : vec4<f32> = u_xlat15;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.z, x_1428.w);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec20;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat8.x = x_1440;
        let x_1443 : f32 = u_xlat19.w;
        let x_1445 : f32 = u_xlat8.x;
        let x_1447 : f32 = u_xlat69;
        u_xlat69 = ((x_1443 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat16;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec21;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat8.x = x_1462;
        let x_1465 : f32 = u_xlat20.x;
        let x_1467 : f32 = u_xlat8.x;
        let x_1469 : f32 = u_xlat69;
        u_xlat69 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat16;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec22;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat8.x = x_1484;
        let x_1487 : f32 = u_xlat20.y;
        let x_1489 : f32 = u_xlat8.x;
        let x_1491 : f32 = u_xlat69;
        u_xlat69 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec3<f32> = u_xlat29;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
        let x_1497 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec23;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat8.x = x_1506;
        let x_1509 : f32 = u_xlat20.z;
        let x_1511 : f32 = u_xlat8.x;
        let x_1513 : f32 = u_xlat69;
        u_xlat69 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec2<f32> = u_xlat17;
        let x_1518 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec24;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat8.x = x_1527;
        let x_1530 : f32 = u_xlat20.w;
        let x_1532 : f32 = u_xlat8.x;
        let x_1534 : f32 = u_xlat69;
        u_xlat69 = ((x_1530 * x_1532) + x_1534);
        let x_1537 : vec4<f32> = u_xlat11;
        let x_1538 : vec2<f32> = vec2<f32>(x_1537.x, x_1537.y);
        let x_1540 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec25;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat8.x = x_1549;
        let x_1552 : f32 = u_xlat7.x;
        let x_1554 : f32 = u_xlat8.x;
        let x_1556 : f32 = u_xlat69;
        u_xlat69 = ((x_1552 * x_1554) + x_1556);
        let x_1559 : vec4<f32> = u_xlat11;
        let x_1560 : vec2<f32> = vec2<f32>(x_1559.z, x_1559.w);
        let x_1562 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec26;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1569.xy, x_1569.z);
        u_xlat7.x = x_1571;
        let x_1574 : f32 = u_xlat7.y;
        let x_1576 : f32 = u_xlat7.x;
        let x_1578 : f32 = u_xlat69;
        u_xlat69 = ((x_1574 * x_1576) + x_1578);
        let x_1581 : vec2<f32> = u_xlat52;
        let x_1583 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec27;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1590.xy, x_1590.z);
        u_xlat7.x = x_1592;
        let x_1595 : f32 = u_xlat7.z;
        let x_1597 : f32 = u_xlat7.x;
        let x_1599 : f32 = u_xlat69;
        u_xlat69 = ((x_1595 * x_1597) + x_1599);
        let x_1602 : vec3<f32> = u_xlat27;
        let x_1603 : vec2<f32> = vec2<f32>(x_1602.x, x_1602.y);
        let x_1605 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec28;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat27.x = x_1614;
        let x_1617 : f32 = u_xlat7.w;
        let x_1619 : f32 = u_xlat27.x;
        let x_1621 : f32 = u_xlat69;
        u_xlat6.x = ((x_1617 * x_1619) + x_1621);
      }
    }
  } else {
    let x_1626 : vec4<f32> = vs_TEXCOORD6;
    let x_1627 : vec2<f32> = vec2<f32>(x_1626.x, x_1626.y);
    let x_1629 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
    let x_1636 : vec3<f32> = txVec29;
    let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1636.xy, x_1636.z);
    u_xlat6.x = x_1638;
  }
  let x_1641 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1641) + 1.0f);
  let x_1646 : f32 = u_xlat6.x;
  let x_1648 : f32 = x_367.x_MainLightShadowParams.x;
  let x_1651 : f32 = u_xlat27.x;
  u_xlat6.x = ((x_1646 * x_1648) + x_1651);
  let x_1655 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (0.0f >= x_1655);
  let x_1660 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (x_1660 >= 1.0f);
  let x_1662 : bool = u_xlatb48;
  let x_1664 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1662 | x_1664);
  let x_1668 : bool = u_xlatb27.x;
  if (x_1668) {
    x_1669 = 1.0f;
  } else {
    let x_1674 : f32 = u_xlat6.x;
    x_1669 = x_1674;
  }
  let x_1675 : f32 = x_1669;
  u_xlat6.x = x_1675;
  let x_1677 : vec3<f32> = vs_TEXCOORD1;
  let x_1679 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1677 + -(x_1679));
  let x_1682 : vec3<f32> = u_xlat27;
  let x_1683 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1682, x_1683);
  let x_1687 : f32 = u_xlat27.x;
  let x_1689 : f32 = x_367.x_MainLightShadowParams.z;
  let x_1692 : f32 = x_367.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1687 * x_1689) + x_1692);
  let x_1696 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1696, 0.0f, 1.0f);
  let x_1700 : f32 = u_xlat6.x;
  u_xlat48 = (-(x_1700) + 1.0f);
  let x_1704 : f32 = u_xlat27.x;
  let x_1705 : f32 = u_xlat48;
  let x_1708 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1704 * x_1705) + x_1708);
  let x_1717 : f32 = x_1715.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1717 == -1.0f));
  let x_1721 : bool = u_xlatb27.x;
  if (x_1721) {
    let x_1724 : vec3<f32> = vs_TEXCOORD1;
    let x_1727 : vec4<f32> = x_1715.x_MainLightWorldToLight[1i];
    let x_1729 : vec2<f32> = (vec2<f32>(x_1724.y, x_1724.y) * vec2<f32>(x_1727.x, x_1727.y));
    let x_1730 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1729.x, x_1729.y, x_1730.z);
    let x_1733 : vec4<f32> = x_1715.x_MainLightWorldToLight[0i];
    let x_1735 : vec3<f32> = vs_TEXCOORD1;
    let x_1738 : vec3<f32> = u_xlat27;
    let x_1740 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1735.x, x_1735.x)) + vec2<f32>(x_1738.x, x_1738.y));
    let x_1741 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1740.x, x_1740.y, x_1741.z);
    let x_1744 : vec4<f32> = x_1715.x_MainLightWorldToLight[2i];
    let x_1746 : vec3<f32> = vs_TEXCOORD1;
    let x_1749 : vec3<f32> = u_xlat27;
    let x_1751 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.y) * vec2<f32>(x_1746.z, x_1746.z)) + vec2<f32>(x_1749.x, x_1749.y));
    let x_1752 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1751.x, x_1751.y, x_1752.z);
    let x_1754 : vec3<f32> = u_xlat27;
    let x_1757 : vec4<f32> = x_1715.x_MainLightWorldToLight[3i];
    let x_1759 : vec2<f32> = (vec2<f32>(x_1754.x, x_1754.y) + vec2<f32>(x_1757.x, x_1757.y));
    let x_1760 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1759.x, x_1759.y, x_1760.z);
    let x_1762 : vec3<f32> = u_xlat27;
    let x_1765 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1766 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1765.x, x_1765.y, x_1766.z);
    let x_1773 : vec3<f32> = u_xlat27;
    let x_1776 : f32 = x_44.x_GlobalMipBias.x;
    let x_1777 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1773.x, x_1773.y), x_1776);
    u_xlat7 = x_1777;
    let x_1779 : f32 = x_1715.x_MainLightCookieTextureFormat;
    let x_1781 : f32 = x_1715.x_MainLightCookieTextureFormat;
    let x_1783 : f32 = x_1715.x_MainLightCookieTextureFormat;
    let x_1785 : f32 = x_1715.x_MainLightCookieTextureFormat;
    let x_1786 : vec4<f32> = vec4<f32>(x_1779, x_1781, x_1783, x_1785);
    let x_1794 : vec4<bool> = (vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1786.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1794.x, x_1794.y);
    let x_1797 : bool = u_xlatb27.y;
    if (x_1797) {
      let x_1802 : f32 = u_xlat7.w;
      x_1798 = x_1802;
    } else {
      let x_1805 : f32 = u_xlat7.x;
      x_1798 = x_1805;
    }
    let x_1806 : f32 = x_1798;
    u_xlat48 = x_1806;
    let x_1808 : bool = u_xlatb27.x;
    if (x_1808) {
      let x_1812 : vec4<f32> = u_xlat7;
      x_1809 = vec3<f32>(x_1812.x, x_1812.y, x_1812.z);
    } else {
      let x_1815 : f32 = u_xlat48;
      x_1809 = vec3<f32>(x_1815, x_1815, x_1815);
    }
    let x_1817 : vec3<f32> = x_1809;
    u_xlat27 = x_1817;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1822 : vec3<f32> = u_xlat27;
  let x_1824 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat27 = (x_1822 * vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
  let x_1827 : f32 = u_xlat47;
  let x_1829 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1827, x_1827, x_1827) * x_1829);
  let x_1831 : vec3<f32> = u_xlat2;
  let x_1833 : vec3<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1831), x_1833);
  let x_1837 : f32 = u_xlat7.x;
  let x_1839 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1837 + x_1839);
  let x_1842 : vec3<f32> = u_xlat3;
  let x_1843 : vec4<f32> = u_xlat7;
  let x_1847 : vec3<f32> = u_xlat2;
  let x_1849 : vec3<f32> = ((x_1842 * -(vec3<f32>(x_1843.x, x_1843.x, x_1843.x))) + -(x_1847));
  let x_1850 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1853 : vec3<f32> = u_xlat3;
  let x_1854 : vec3<f32> = u_xlat2;
  u_xlat70 = dot(x_1853, x_1854);
  let x_1856 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1856, 0.0f, 1.0f);
  let x_1858 : f32 = u_xlat70;
  u_xlat70 = (-(x_1858) + 1.0f);
  let x_1861 : f32 = u_xlat70;
  let x_1862 : f32 = u_xlat70;
  u_xlat70 = (x_1861 * x_1862);
  let x_1864 : f32 = u_xlat70;
  let x_1865 : f32 = u_xlat70;
  u_xlat70 = (x_1864 * x_1865);
  let x_1867 : f32 = u_xlat65;
  u_xlat8.x = ((-(x_1867) * 0.699999988f) + 1.700000048f);
  let x_1874 : f32 = u_xlat65;
  let x_1876 : f32 = u_xlat8.x;
  u_xlat65 = (x_1874 * x_1876);
  let x_1878 : f32 = u_xlat65;
  u_xlat65 = (x_1878 * 6.0f);
  let x_1889 : vec4<f32> = u_xlat7;
  let x_1891 : f32 = u_xlat65;
  let x_1892 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1889.x, x_1889.y, x_1889.z), x_1891);
  u_xlat8 = x_1892;
  let x_1894 : f32 = u_xlat8.w;
  u_xlat65 = (x_1894 + -1.0f);
  let x_1897 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1898 : f32 = u_xlat65;
  u_xlat65 = ((x_1897 * x_1898) + 1.0f);
  let x_1901 : f32 = u_xlat65;
  u_xlat65 = max(x_1901, 0.0f);
  let x_1903 : f32 = u_xlat65;
  u_xlat65 = log2(x_1903);
  let x_1905 : f32 = u_xlat65;
  let x_1907 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1905 * x_1907);
  let x_1909 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1909);
  let x_1911 : f32 = u_xlat65;
  let x_1913 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1911 * x_1913);
  let x_1915 : vec4<f32> = u_xlat8;
  let x_1917 : f32 = u_xlat65;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1915.x, x_1915.y, x_1915.z) * vec3<f32>(x_1917, x_1917, x_1917));
  let x_1920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : f32 = u_xlat67;
  let x_1924 : f32 = u_xlat67;
  let x_1928 : vec2<f32> = ((vec2<f32>(x_1922, x_1922) * vec2<f32>(x_1924, x_1924)) + vec2<f32>(-1.0f, 1.0f));
  let x_1929 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1928.x, x_1928.y, x_1929.z, x_1929.w);
  let x_1932 : f32 = u_xlat8.y;
  u_xlat65 = (1.0f / x_1932);
  let x_1934 : vec4<f32> = u_xlat0;
  let x_1937 : f32 = u_xlat66;
  u_xlat29 = (-(vec3<f32>(x_1934.x, x_1934.y, x_1934.z)) + vec3<f32>(x_1937, x_1937, x_1937));
  let x_1940 : f32 = u_xlat70;
  let x_1942 : vec3<f32> = u_xlat29;
  let x_1944 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_1940, x_1940, x_1940) * x_1942) + vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
  let x_1947 : f32 = u_xlat65;
  let x_1949 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1947, x_1947, x_1947) * x_1949);
  let x_1951 : vec4<f32> = u_xlat7;
  let x_1953 : vec3<f32> = u_xlat29;
  let x_1954 : vec3<f32> = (vec3<f32>(x_1951.x, x_1951.y, x_1951.z) * x_1953);
  let x_1955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : vec3<f32> = u_xlat4;
  let x_1958 : vec3<f32> = u_xlat22;
  let x_1960 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1957 * x_1958) + vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1964 : f32 = u_xlat6.x;
  let x_1967 : f32 = x_95.unity_LightData.z;
  u_xlat65 = (x_1964 * x_1967);
  let x_1969 : vec3<f32> = u_xlat3;
  let x_1971 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1969, vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1974, 0.0f, 1.0f);
  let x_1976 : f32 = u_xlat65;
  let x_1977 : f32 = u_xlat66;
  u_xlat65 = (x_1976 * x_1977);
  let x_1979 : f32 = u_xlat65;
  let x_1981 : vec3<f32> = u_xlat27;
  let x_1982 : vec3<f32> = (vec3<f32>(x_1979, x_1979, x_1979) * x_1981);
  let x_1983 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec3<f32> = u_xlat2;
  let x_1987 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1989 : vec3<f32> = (x_1985 + vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1992 : vec4<f32> = u_xlat7;
  let x_1994 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_1992.x, x_1992.y, x_1992.z), vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
  let x_1997 : f32 = u_xlat65;
  u_xlat65 = max(x_1997, 1.17549435e-37f);
  let x_2000 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_2000);
  let x_2002 : f32 = u_xlat65;
  let x_2004 : vec4<f32> = u_xlat7;
  let x_2006 : vec3<f32> = (vec3<f32>(x_2002, x_2002, x_2002) * vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
  let x_2007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2007.w);
  let x_2009 : vec3<f32> = u_xlat3;
  let x_2010 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(x_2009, vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2013, 0.0f, 1.0f);
  let x_2016 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2018 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2016.x, x_2016.y, x_2016.z), vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
  let x_2021 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2021, 0.0f, 1.0f);
  let x_2023 : f32 = u_xlat65;
  let x_2024 : f32 = u_xlat65;
  u_xlat65 = (x_2023 * x_2024);
  let x_2026 : f32 = u_xlat65;
  let x_2028 : f32 = u_xlat8.x;
  u_xlat65 = ((x_2026 * x_2028) + 1.000010014f);
  let x_2032 : f32 = u_xlat66;
  let x_2033 : f32 = u_xlat66;
  u_xlat66 = (x_2032 * x_2033);
  let x_2035 : f32 = u_xlat65;
  let x_2036 : f32 = u_xlat65;
  u_xlat65 = (x_2035 * x_2036);
  let x_2038 : f32 = u_xlat66;
  u_xlat66 = max(x_2038, 0.100000001f);
  let x_2041 : f32 = u_xlat65;
  let x_2042 : f32 = u_xlat66;
  u_xlat65 = (x_2041 * x_2042);
  let x_2044 : f32 = u_xlat68;
  let x_2045 : f32 = u_xlat65;
  u_xlat65 = (x_2044 * x_2045);
  let x_2047 : f32 = u_xlat26;
  let x_2048 : f32 = u_xlat65;
  u_xlat65 = (x_2047 / x_2048);
  let x_2050 : vec4<f32> = u_xlat0;
  let x_2052 : f32 = u_xlat65;
  let x_2055 : vec3<f32> = u_xlat22;
  let x_2056 : vec3<f32> = ((vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * vec3<f32>(x_2052, x_2052, x_2052)) + x_2055);
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : vec4<f32> = u_xlat6;
  let x_2061 : vec4<f32> = u_xlat7;
  let x_2063 : vec3<f32> = (vec3<f32>(x_2059.x, x_2059.y, x_2059.z) * vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  let x_2067 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2069 : f32 = x_95.unity_LightData.y;
  u_xlat65 = min(x_2067, x_2069);
  let x_2073 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2073));
  let x_2078 : f32 = x_1715.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2080 : f32 = x_1715.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2082 : f32 = x_1715.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2084 : f32 = x_1715.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2085 : vec4<f32> = vec4<f32>(x_2078, x_2080, x_2082, x_2084);
  let x_2091 : vec4<bool> = (vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2085.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2091.x, x_2091.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2102 : u32 = u_xlatu_loop_1;
    let x_2103 : u32 = u_xlatu65;
    if ((x_2102 < x_2103)) {
    } else {
      break;
    }
    let x_2106 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2106 >> 2u);
    let x_2110 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2110 & 3u));
    let x_2113 : u32 = u_xlatu67;
    let x_2116 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2113)];
    let x_2126 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2131 : vec4<u32> = indexable[x_2126];
    u_xlat67 = dot(x_2116, bitcast<vec4<f32>>(x_2131));
    let x_2134 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2134));
    let x_2137 : vec3<f32> = vs_TEXCOORD1;
    let x_2149 : u32 = u_xlatu67;
    let x_2152 : vec4<f32> = x_2148.x_AdditionalLightsPosition[bitcast<i32>(x_2149)];
    let x_2155 : u32 = u_xlatu67;
    let x_2158 : vec4<f32> = x_2148.x_AdditionalLightsPosition[bitcast<i32>(x_2155)];
    let x_2160 : vec3<f32> = ((-(x_2137) * vec3<f32>(x_2152.w, x_2152.w, x_2152.w)) + vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
    let x_2161 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
    let x_2163 : vec4<f32> = u_xlat9;
    let x_2165 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2163.x, x_2163.y, x_2163.z), vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
    let x_2168 : f32 = u_xlat69;
    u_xlat69 = max(x_2168, 6.10351562e-05f);
    let x_2171 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2171);
    let x_2174 : vec2<f32> = u_xlat49;
    let x_2176 : vec4<f32> = u_xlat9;
    let x_2178 : vec3<f32> = (vec3<f32>(x_2174.x, x_2174.x, x_2174.x) * vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
    let x_2179 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
    let x_2181 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2181);
    let x_2183 : f32 = u_xlat69;
    let x_2184 : u32 = u_xlatu67;
    let x_2187 : f32 = x_2148.x_AdditionalLightsAttenuation[bitcast<i32>(x_2184)].x;
    u_xlat69 = (x_2183 * x_2187);
    let x_2189 : f32 = u_xlat69;
    let x_2191 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2189) * x_2191) + 1.0f);
    let x_2194 : f32 = u_xlat69;
    u_xlat69 = max(x_2194, 0.0f);
    let x_2196 : f32 = u_xlat69;
    let x_2197 : f32 = u_xlat69;
    u_xlat69 = (x_2196 * x_2197);
    let x_2199 : f32 = u_xlat69;
    let x_2200 : f32 = u_xlat70;
    u_xlat69 = (x_2199 * x_2200);
    let x_2202 : u32 = u_xlatu67;
    let x_2205 : vec4<f32> = x_2148.x_AdditionalLightsSpotDir[bitcast<i32>(x_2202)];
    let x_2207 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2205.x, x_2205.y, x_2205.z), vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
    let x_2210 : f32 = u_xlat70;
    let x_2211 : u32 = u_xlatu67;
    let x_2214 : f32 = x_2148.x_AdditionalLightsAttenuation[bitcast<i32>(x_2211)].z;
    let x_2216 : u32 = u_xlatu67;
    let x_2219 : f32 = x_2148.x_AdditionalLightsAttenuation[bitcast<i32>(x_2216)].w;
    u_xlat70 = ((x_2210 * x_2214) + x_2219);
    let x_2221 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2221, 0.0f, 1.0f);
    let x_2223 : f32 = u_xlat70;
    let x_2224 : f32 = u_xlat70;
    u_xlat70 = (x_2223 * x_2224);
    let x_2226 : f32 = u_xlat69;
    let x_2227 : f32 = u_xlat70;
    u_xlat69 = (x_2226 * x_2227);
    let x_2230 : u32 = u_xlatu67;
    u_xlatu70 = (x_2230 >> 5u);
    let x_2233 : u32 = u_xlatu67;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2233) & 31i)));
    let x_2239 : i32 = u_xlati72;
    let x_2241 : u32 = u_xlatu70;
    let x_2244 : f32 = x_1715.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2241)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2239) & bitcast<u32>(x_2244)));
    let x_2248 : i32 = u_xlati70;
    if ((x_2248 != 0i)) {
      let x_2258 : u32 = u_xlatu67;
      let x_2261 : f32 = x_2257.x_AdditionalLightsLightTypes[bitcast<i32>(x_2258)].el;
      u_xlati70 = i32(x_2261);
      let x_2263 : i32 = u_xlati70;
      u_xlati72 = select(1i, 0i, (x_2263 != 0i));
      let x_2267 : u32 = u_xlatu67;
      u_xlati73 = (bitcast<i32>(x_2267) << bitcast<u32>(2i));
      let x_2270 : i32 = u_xlati72;
      if ((x_2270 != 0i)) {
        let x_2274 : vec3<f32> = vs_TEXCOORD1;
        let x_2276 : i32 = u_xlati73;
        let x_2279 : i32 = u_xlati73;
        let x_2283 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2276 + 1i) / 4i)][((x_2279 + 1i) % 4i)];
        let x_2285 : vec3<f32> = (vec3<f32>(x_2274.y, x_2274.y, x_2274.y) * vec3<f32>(x_2283.x, x_2283.y, x_2283.w));
        let x_2286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
        let x_2288 : i32 = u_xlati73;
        let x_2290 : i32 = u_xlati73;
        let x_2293 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[(x_2288 / 4i)][(x_2290 % 4i)];
        let x_2295 : vec3<f32> = vs_TEXCOORD1;
        let x_2298 : vec4<f32> = u_xlat11;
        let x_2300 : vec3<f32> = ((vec3<f32>(x_2293.x, x_2293.y, x_2293.w) * vec3<f32>(x_2295.x, x_2295.x, x_2295.x)) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
        let x_2301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2303 : i32 = u_xlati73;
        let x_2306 : i32 = u_xlati73;
        let x_2310 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2303 + 2i) / 4i)][((x_2306 + 2i) % 4i)];
        let x_2312 : vec3<f32> = vs_TEXCOORD1;
        let x_2315 : vec4<f32> = u_xlat11;
        let x_2317 : vec3<f32> = ((vec3<f32>(x_2310.x, x_2310.y, x_2310.w) * vec3<f32>(x_2312.z, x_2312.z, x_2312.z)) + vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
        let x_2318 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
        let x_2320 : vec4<f32> = u_xlat11;
        let x_2322 : i32 = u_xlati73;
        let x_2325 : i32 = u_xlati73;
        let x_2329 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2322 + 3i) / 4i)][((x_2325 + 3i) % 4i)];
        let x_2331 : vec3<f32> = (vec3<f32>(x_2320.x, x_2320.y, x_2320.z) + vec3<f32>(x_2329.x, x_2329.y, x_2329.w));
        let x_2332 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
        let x_2334 : vec4<f32> = u_xlat11;
        let x_2336 : vec4<f32> = u_xlat11;
        let x_2338 : vec2<f32> = (vec2<f32>(x_2334.x, x_2334.y) / vec2<f32>(x_2336.z, x_2336.z));
        let x_2339 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
        let x_2341 : vec4<f32> = u_xlat11;
        let x_2344 : vec2<f32> = ((vec2<f32>(x_2341.x, x_2341.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
        let x_2347 : vec4<f32> = u_xlat11;
        let x_2351 : vec2<f32> = clamp(vec2<f32>(x_2347.x, x_2347.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2352 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2351.x, x_2351.y, x_2352.z, x_2352.w);
        let x_2354 : u32 = u_xlatu67;
        let x_2357 : vec4<f32> = x_2257.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2354)];
        let x_2359 : vec4<f32> = u_xlat11;
        let x_2362 : u32 = u_xlatu67;
        let x_2365 : vec4<f32> = x_2257.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2362)];
        let x_2367 : vec2<f32> = ((vec2<f32>(x_2357.x, x_2357.y) * vec2<f32>(x_2359.x, x_2359.y)) + vec2<f32>(x_2365.z, x_2365.w));
        let x_2368 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
      } else {
        let x_2372 : i32 = u_xlati70;
        u_xlatb70 = (x_2372 == 1i);
        let x_2374 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2374);
        let x_2376 : i32 = u_xlati70;
        if ((x_2376 != 0i)) {
          let x_2381 : vec3<f32> = vs_TEXCOORD1;
          let x_2383 : i32 = u_xlati73;
          let x_2386 : i32 = u_xlati73;
          let x_2390 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2383 + 1i) / 4i)][((x_2386 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2381.y, x_2381.y) * vec2<f32>(x_2390.x, x_2390.y));
          let x_2393 : i32 = u_xlati73;
          let x_2395 : i32 = u_xlati73;
          let x_2398 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[(x_2393 / 4i)][(x_2395 % 4i)];
          let x_2400 : vec3<f32> = vs_TEXCOORD1;
          let x_2403 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2398.x, x_2398.y) * vec2<f32>(x_2400.x, x_2400.x)) + x_2403);
          let x_2405 : i32 = u_xlati73;
          let x_2408 : i32 = u_xlati73;
          let x_2412 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2405 + 2i) / 4i)][((x_2408 + 2i) % 4i)];
          let x_2414 : vec3<f32> = vs_TEXCOORD1;
          let x_2417 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(x_2414.z, x_2414.z)) + x_2417);
          let x_2419 : vec2<f32> = u_xlat53;
          let x_2420 : i32 = u_xlati73;
          let x_2423 : i32 = u_xlati73;
          let x_2427 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2420 + 3i) / 4i)][((x_2423 + 3i) % 4i)];
          u_xlat53 = (x_2419 + vec2<f32>(x_2427.x, x_2427.y));
          let x_2430 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2430 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2433 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2433);
          let x_2435 : u32 = u_xlatu67;
          let x_2438 : vec4<f32> = x_2257.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2435)];
          let x_2440 : vec2<f32> = u_xlat53;
          let x_2442 : u32 = u_xlatu67;
          let x_2445 : vec4<f32> = x_2257.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2442)];
          let x_2447 : vec2<f32> = ((vec2<f32>(x_2438.x, x_2438.y) * x_2440) + vec2<f32>(x_2445.z, x_2445.w));
          let x_2448 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
        } else {
          let x_2451 : vec3<f32> = vs_TEXCOORD1;
          let x_2453 : i32 = u_xlati73;
          let x_2456 : i32 = u_xlati73;
          let x_2460 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2453 + 1i) / 4i)][((x_2456 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2451.y, x_2451.y, x_2451.y, x_2451.y) * x_2460);
          let x_2462 : i32 = u_xlati73;
          let x_2464 : i32 = u_xlati73;
          let x_2467 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[(x_2462 / 4i)][(x_2464 % 4i)];
          let x_2468 : vec3<f32> = vs_TEXCOORD1;
          let x_2471 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2467 * vec4<f32>(x_2468.x, x_2468.x, x_2468.x, x_2468.x)) + x_2471);
          let x_2473 : i32 = u_xlati73;
          let x_2476 : i32 = u_xlati73;
          let x_2480 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2473 + 2i) / 4i)][((x_2476 + 2i) % 4i)];
          let x_2481 : vec3<f32> = vs_TEXCOORD1;
          let x_2484 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2480 * vec4<f32>(x_2481.z, x_2481.z, x_2481.z, x_2481.z)) + x_2484);
          let x_2486 : vec4<f32> = u_xlat12;
          let x_2487 : i32 = u_xlati73;
          let x_2490 : i32 = u_xlati73;
          let x_2494 : vec4<f32> = x_2257.x_AdditionalLightsWorldToLights[((x_2487 + 3i) / 4i)][((x_2490 + 3i) % 4i)];
          u_xlat12 = (x_2486 + x_2494);
          let x_2496 : vec4<f32> = u_xlat12;
          let x_2498 : vec4<f32> = u_xlat12;
          let x_2500 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) / vec3<f32>(x_2498.w, x_2498.w, x_2498.w));
          let x_2501 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
          let x_2503 : vec4<f32> = u_xlat12;
          let x_2505 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2503.x, x_2503.y, x_2503.z), vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
          let x_2508 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2508);
          let x_2510 : f32 = u_xlat70;
          let x_2512 : vec4<f32> = u_xlat12;
          let x_2514 : vec3<f32> = (vec3<f32>(x_2510, x_2510, x_2510) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
          let x_2515 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
          let x_2517 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2517.x, x_2517.y, x_2517.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2522 : f32 = u_xlat70;
          u_xlat70 = max(x_2522, 0.000001f);
          let x_2525 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2525);
          let x_2527 : f32 = u_xlat70;
          let x_2529 : vec4<f32> = u_xlat12;
          let x_2531 : vec3<f32> = (vec3<f32>(x_2527, x_2527, x_2527) * vec3<f32>(x_2529.z, x_2529.x, x_2529.y));
          let x_2532 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
          let x_2535 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2535);
          let x_2539 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2539, 0.0f, 1.0f);
          let x_2543 : vec4<f32> = u_xlat13;
          let x_2546 : vec4<bool> = (vec4<f32>(x_2543.y, x_2543.z, x_2543.y, x_2543.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2546.x, x_2546.y);
          let x_2549 : bool = u_xlatb53.x;
          if (x_2549) {
            let x_2554 : f32 = u_xlat13.x;
            x_2550 = x_2554;
          } else {
            let x_2557 : f32 = u_xlat13.x;
            x_2550 = -(x_2557);
          }
          let x_2559 : f32 = x_2550;
          u_xlat53.x = x_2559;
          let x_2562 : bool = u_xlatb53.y;
          if (x_2562) {
            let x_2567 : f32 = u_xlat13.x;
            x_2563 = x_2567;
          } else {
            let x_2570 : f32 = u_xlat13.x;
            x_2563 = -(x_2570);
          }
          let x_2572 : f32 = x_2563;
          u_xlat53.y = x_2572;
          let x_2574 : vec4<f32> = u_xlat12;
          let x_2576 : f32 = u_xlat70;
          let x_2579 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2574.x, x_2574.y) * vec2<f32>(x_2576, x_2576)) + x_2579);
          let x_2581 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2581 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2584 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2584, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2588 : u32 = u_xlatu67;
          let x_2591 : vec4<f32> = x_2257.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2588)];
          let x_2593 : vec2<f32> = u_xlat53;
          let x_2595 : u32 = u_xlatu67;
          let x_2598 : vec4<f32> = x_2257.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2595)];
          let x_2600 : vec2<f32> = ((vec2<f32>(x_2591.x, x_2591.y) * x_2593) + vec2<f32>(x_2598.z, x_2598.w));
          let x_2601 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
        }
      }
      let x_2608 : vec4<f32> = u_xlat11;
      let x_2611 : f32 = x_44.x_GlobalMipBias.x;
      let x_2612 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2608.x, x_2608.y), x_2611);
      u_xlat11 = x_2612;
      let x_2614 : bool = u_xlatb7.y;
      if (x_2614) {
        let x_2619 : f32 = u_xlat11.w;
        x_2615 = x_2619;
      } else {
        let x_2622 : f32 = u_xlat11.x;
        x_2615 = x_2622;
      }
      let x_2623 : f32 = x_2615;
      u_xlat70 = x_2623;
      let x_2625 : bool = u_xlatb7.x;
      if (x_2625) {
        let x_2629 : vec4<f32> = u_xlat11;
        x_2626 = vec3<f32>(x_2629.x, x_2629.y, x_2629.z);
      } else {
        let x_2632 : f32 = u_xlat70;
        x_2626 = vec3<f32>(x_2632, x_2632, x_2632);
      }
      let x_2634 : vec3<f32> = x_2626;
      let x_2635 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2641 : vec4<f32> = u_xlat11;
    let x_2643 : u32 = u_xlatu67;
    let x_2646 : vec4<f32> = x_2148.x_AdditionalLightsColor[bitcast<i32>(x_2643)];
    let x_2648 : vec3<f32> = (vec3<f32>(x_2641.x, x_2641.y, x_2641.z) * vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
    let x_2649 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2649.w);
    let x_2651 : f32 = u_xlat47;
    let x_2653 : vec4<f32> = u_xlat11;
    let x_2655 : vec3<f32> = (vec3<f32>(x_2651, x_2651, x_2651) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
    let x_2656 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
    let x_2658 : vec3<f32> = u_xlat3;
    let x_2659 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2658, vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
    let x_2662 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2662, 0.0f, 1.0f);
    let x_2664 : f32 = u_xlat67;
    let x_2665 : f32 = u_xlat69;
    u_xlat67 = (x_2664 * x_2665);
    let x_2667 : f32 = u_xlat67;
    let x_2669 : vec4<f32> = u_xlat11;
    let x_2671 : vec3<f32> = (vec3<f32>(x_2667, x_2667, x_2667) * vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
    let x_2672 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
    let x_2674 : vec4<f32> = u_xlat9;
    let x_2676 : vec2<f32> = u_xlat49;
    let x_2679 : vec3<f32> = u_xlat2;
    let x_2680 : vec3<f32> = ((vec3<f32>(x_2674.x, x_2674.y, x_2674.z) * vec3<f32>(x_2676.x, x_2676.x, x_2676.x)) + x_2679);
    let x_2681 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
    let x_2683 : vec4<f32> = u_xlat9;
    let x_2685 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2683.x, x_2683.y, x_2683.z), vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : f32 = u_xlat67;
    u_xlat67 = max(x_2688, 1.17549435e-37f);
    let x_2690 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2690);
    let x_2692 : f32 = u_xlat67;
    let x_2694 : vec4<f32> = u_xlat9;
    let x_2696 : vec3<f32> = (vec3<f32>(x_2692, x_2692, x_2692) * vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
    let x_2697 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
    let x_2699 : vec3<f32> = u_xlat3;
    let x_2700 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2699, vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
    let x_2703 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2703, 0.0f, 1.0f);
    let x_2705 : vec4<f32> = u_xlat10;
    let x_2707 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2705.x, x_2705.y, x_2705.z), vec3<f32>(x_2707.x, x_2707.y, x_2707.z));
    let x_2710 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2710, 0.0f, 1.0f);
    let x_2712 : f32 = u_xlat67;
    let x_2713 : f32 = u_xlat67;
    u_xlat67 = (x_2712 * x_2713);
    let x_2715 : f32 = u_xlat67;
    let x_2717 : f32 = u_xlat8.x;
    u_xlat67 = ((x_2715 * x_2717) + 1.000010014f);
    let x_2720 : f32 = u_xlat69;
    let x_2721 : f32 = u_xlat69;
    u_xlat69 = (x_2720 * x_2721);
    let x_2723 : f32 = u_xlat67;
    let x_2724 : f32 = u_xlat67;
    u_xlat67 = (x_2723 * x_2724);
    let x_2726 : f32 = u_xlat69;
    u_xlat69 = max(x_2726, 0.100000001f);
    let x_2728 : f32 = u_xlat67;
    let x_2729 : f32 = u_xlat69;
    u_xlat67 = (x_2728 * x_2729);
    let x_2731 : f32 = u_xlat68;
    let x_2732 : f32 = u_xlat67;
    u_xlat67 = (x_2731 * x_2732);
    let x_2734 : f32 = u_xlat26;
    let x_2735 : f32 = u_xlat67;
    u_xlat67 = (x_2734 / x_2735);
    let x_2737 : vec4<f32> = u_xlat0;
    let x_2739 : f32 = u_xlat67;
    let x_2742 : vec3<f32> = u_xlat22;
    let x_2743 : vec3<f32> = ((vec3<f32>(x_2737.x, x_2737.y, x_2737.z) * vec3<f32>(x_2739, x_2739, x_2739)) + x_2742);
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
    let x_2746 : vec4<f32> = u_xlat9;
    let x_2748 : vec4<f32> = u_xlat11;
    let x_2751 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_2746.x, x_2746.y, x_2746.z) * vec3<f32>(x_2748.x, x_2748.y, x_2748.z)) + x_2751);

    continuing {
      let x_2753 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2753 + bitcast<u32>(1i));
    }
  }
  let x_2755 : vec3<f32> = u_xlat4;
  let x_2756 : vec3<f32> = u_xlat5;
  let x_2759 : vec4<f32> = u_xlat6;
  let x_2761 : vec3<f32> = ((x_2755 * vec3<f32>(x_2756.x, x_2756.x, x_2756.x)) + vec3<f32>(x_2759.x, x_2759.y, x_2759.z));
  let x_2762 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
  let x_2764 : vec3<f32> = u_xlat29;
  let x_2765 : vec4<f32> = u_xlat0;
  let x_2767 : vec3<f32> = (x_2764 + vec3<f32>(x_2765.x, x_2765.y, x_2765.z));
  let x_2768 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2767.x, x_2767.y, x_2767.z, x_2768.w);
  let x_2770 : f32 = u_xlat63;
  let x_2771 : f32 = u_xlat63;
  u_xlat63 = (x_2770 * -(x_2771));
  let x_2774 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2774);
  let x_2776 : vec4<f32> = u_xlat0;
  let x_2780 : vec4<f32> = x_44.unity_FogColor;
  let x_2783 : vec3<f32> = (vec3<f32>(x_2776.x, x_2776.y, x_2776.z) + -(vec3<f32>(x_2780.x, x_2780.y, x_2780.z)));
  let x_2784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2784.w);
  let x_2788 : f32 = u_xlat63;
  let x_2790 : vec4<f32> = u_xlat0;
  let x_2794 : vec4<f32> = x_44.unity_FogColor;
  let x_2796 : vec3<f32> = ((vec3<f32>(x_2788, x_2788, x_2788) * vec3<f32>(x_2790.x, x_2790.y, x_2790.z)) + vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
  let x_2797 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
  let x_2802 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2802 == 1.0f);
  let x_2804 : bool = u_xlatb0;
  if (x_2804) {
    let x_2809 : f32 = u_xlat1.x;
    x_2805 = x_2809;
  } else {
    x_2805 = 1.0f;
  }
  let x_2811 : f32 = x_2805;
  SV_Target0.w = x_2811;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

