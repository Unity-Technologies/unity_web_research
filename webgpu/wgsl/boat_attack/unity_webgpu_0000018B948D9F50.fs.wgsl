diagnostic(off, derivative_uniformity);

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_8,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : vec2<bool>;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1277 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1475 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1779 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1229 : f32;
  var x_1358 : f32;
  var x_1369 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1915 : f32;
  var x_1925 : f32;
  var txVec1 : vec3<f32>;
  var x_2354 : f32;
  var x_2367 : f32;
  var x_2425 : f32;
  var x_2436 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb43;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb44;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat43;
  u_xlat43 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat43;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat43;
  u_xlat43 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_405);
  let x_407 : f32 = u_xlat43;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat43;
  u_xlat43 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_453);
  let x_455 : f32 = u_xlat43;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat43;
  u_xlat43 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_522);
  let x_524 : f32 = u_xlat43;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat43;
  u_xlat43 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat43;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_837 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_837 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_953 : f32 = u_xlat43;
  u_xlat43 = (-(x_953) + 4.0f);
  let x_958 : f32 = u_xlat43;
  u_xlatu43 = u32(x_958);
  let x_962 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_962) << bitcast<u32>(2i));
  let x_965 : vec3<f32> = vs_TEXCOORD7;
  let x_967 : i32 = u_xlati43;
  let x_970 : i32 = u_xlati43;
  let x_974 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
  let x_976 : vec3<f32> = (vec3<f32>(x_965.y, x_965.y, x_965.y) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : i32 = u_xlati43;
  let x_981 : i32 = u_xlati43;
  let x_984 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : i32 = u_xlati43;
  let x_997 : i32 = u_xlati43;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : i32 = u_xlati43;
  let x_1016 : i32 = u_xlati43;
  let x_1020 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
  let x_1022 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1027 : f32 = vs_TEXCOORD7.y;
  let x_1029 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_1027 * x_1029);
  let x_1032 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1034 : f32 = vs_TEXCOORD7.x;
  let x_1036 : f32 = u_xlat43;
  u_xlat43 = ((x_1032 * x_1034) + x_1036);
  let x_1039 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1041 : f32 = vs_TEXCOORD7.z;
  let x_1043 : f32 = u_xlat43;
  u_xlat43 = ((x_1039 * x_1041) + x_1043);
  let x_1045 : f32 = u_xlat43;
  let x_1047 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_1045 + x_1047);
  let x_1049 : f32 = u_xlat43;
  let x_1052 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_1049) + -(x_1052));
  let x_1055 : f32 = u_xlat43;
  u_xlat43 = max(x_1055, 0.0f);
  let x_1057 : f32 = u_xlat43;
  let x_1059 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_1057 * x_1059);
  let x_1066 : vec4<f32> = vs_TEXCOORD0;
  let x_1069 : f32 = x_113.x_GlobalMipBias.x;
  let x_1070 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1066.z, x_1066.w), x_1069);
  u_xlat3 = x_1070;
  let x_1075 : vec4<f32> = vs_TEXCOORD0;
  let x_1078 : f32 = x_113.x_GlobalMipBias.x;
  let x_1079 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1075.z, x_1075.w), x_1078);
  let x_1080 : vec3<f32> = vec3<f32>(x_1079.x, x_1079.y, x_1079.z);
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat3;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1088 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1091 : vec4<f32> = u_xlat1;
  let x_1093 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : f32 = u_xlat44;
  u_xlat44 = (x_1096 + 0.5f);
  let x_1098 : f32 = u_xlat44;
  let x_1100 : vec4<f32> = u_xlat4;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1106 : f32 = u_xlat3.w;
  u_xlat44 = max(x_1106, 0.00009999999747378752f);
  let x_1109 : vec4<f32> = u_xlat3;
  let x_1111 : f32 = u_xlat44;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) / vec3<f32>(x_1111, x_1111, x_1111));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1117 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1117) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1123 : f32 = u_xlat28;
  let x_1124 : f32 = u_xlat44;
  u_xlat45 = (x_1123 + -(x_1124));
  let x_1127 : f32 = u_xlat44;
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat5;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec3<f32> = u_xlat0;
  let x_1143 : vec4<f32> = u_xlat5;
  let x_1148 : vec3<f32> = ((vec3<f32>(x_1141.x, x_1141.x, x_1141.x) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1151 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1151) + 1.0f);
  let x_1156 : f32 = u_xlat0.x;
  let x_1158 : f32 = u_xlat0.x;
  u_xlat28 = (x_1156 * x_1158);
  let x_1160 : f32 = u_xlat28;
  u_xlat28 = max(x_1160, 0.0078125f);
  let x_1163 : f32 = u_xlat28;
  let x_1164 : f32 = u_xlat28;
  u_xlat44 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat45;
  u_xlat45 = (x_1166 + 1.0f);
  let x_1168 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1168, 0.0f, 1.0f);
  let x_1171 : f32 = u_xlat28;
  u_xlat46 = ((x_1171 * 4.0f) + 2.0f);
  let x_1174 : f32 = u_xlat14;
  u_xlat14 = min(x_1174, 1.0f);
  let x_1178 : vec4<f32> = u_xlat2;
  let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
  let x_1181 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
  let x_1193 : vec3<f32> = txVec0;
  let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
  u_xlat2.x = x_1195;
  let x_1199 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1199) + 1.0f);
  let x_1203 : f32 = u_xlat2.x;
  let x_1205 : f32 = x_845.x_MainLightShadowParams.x;
  let x_1207 : f32 = u_xlat16;
  u_xlat2.x = ((x_1203 * x_1205) + x_1207);
  let x_1214 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1214);
  let x_1219 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1219 >= 1.0f);
  let x_1221 : bool = u_xlatb30;
  let x_1223 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1221 | x_1223);
  let x_1227 : bool = u_xlatb16.x;
  if (x_1227) {
    x_1229 = 1.0f;
  } else {
    let x_1234 : f32 = u_xlat2.x;
    x_1229 = x_1234;
  }
  let x_1235 : f32 = x_1229;
  u_xlat2.x = x_1235;
  let x_1237 : vec3<f32> = vs_TEXCOORD7;
  let x_1240 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_1242 : vec3<f32> = (x_1237 + -(x_1240));
  let x_1243 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec4<f32> = u_xlat6;
  let x_1247 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1245.x, x_1245.y, x_1245.z), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1251 : f32 = u_xlat16;
  let x_1253 : f32 = x_845.x_MainLightShadowParams.z;
  let x_1256 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1251 * x_1253) + x_1256);
  let x_1258 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1258, 0.0f, 1.0f);
  let x_1262 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_1262) + 1.0f);
  let x_1265 : f32 = u_xlat30;
  let x_1266 : f32 = u_xlat47;
  let x_1269 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1265 * x_1266) + x_1269);
  let x_1279 : f32 = x_1277.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1279 == -1.0f));
  let x_1281 : bool = u_xlatb30;
  if (x_1281) {
    let x_1284 : vec3<f32> = vs_TEXCOORD7;
    let x_1287 : vec4<f32> = x_1277.x_MainLightWorldToLight[1i];
    let x_1289 : vec2<f32> = (vec2<f32>(x_1284.y, x_1284.y) * vec2<f32>(x_1287.x, x_1287.y));
    let x_1290 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
    let x_1293 : vec4<f32> = x_1277.x_MainLightWorldToLight[0i];
    let x_1295 : vec3<f32> = vs_TEXCOORD7;
    let x_1298 : vec4<f32> = u_xlat6;
    let x_1300 : vec2<f32> = ((vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1295.x, x_1295.x)) + vec2<f32>(x_1298.x, x_1298.y));
    let x_1301 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
    let x_1304 : vec4<f32> = x_1277.x_MainLightWorldToLight[2i];
    let x_1306 : vec3<f32> = vs_TEXCOORD7;
    let x_1309 : vec4<f32> = u_xlat6;
    let x_1311 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1306.z, x_1306.z)) + vec2<f32>(x_1309.x, x_1309.y));
    let x_1312 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
    let x_1314 : vec4<f32> = u_xlat6;
    let x_1317 : vec4<f32> = x_1277.x_MainLightWorldToLight[3i];
    let x_1319 : vec2<f32> = (vec2<f32>(x_1314.x, x_1314.y) + vec2<f32>(x_1317.x, x_1317.y));
    let x_1320 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
    let x_1322 : vec4<f32> = u_xlat6;
    let x_1325 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1326 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
    let x_1333 : vec4<f32> = u_xlat6;
    let x_1336 : f32 = x_113.x_GlobalMipBias.x;
    let x_1337 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1333.x, x_1333.y), x_1336);
    u_xlat6 = x_1337;
    let x_1340 : f32 = x_1277.x_MainLightCookieTextureFormat;
    let x_1342 : f32 = x_1277.x_MainLightCookieTextureFormat;
    let x_1344 : f32 = x_1277.x_MainLightCookieTextureFormat;
    let x_1346 : f32 = x_1277.x_MainLightCookieTextureFormat;
    let x_1347 : vec4<f32> = vec4<f32>(x_1340, x_1342, x_1344, x_1346);
    let x_1354 : vec4<bool> = (vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1347.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1354.x, x_1354.y);
    let x_1357 : bool = u_xlatb7.y;
    if (x_1357) {
      let x_1362 : f32 = u_xlat6.w;
      x_1358 = x_1362;
    } else {
      let x_1365 : f32 = u_xlat6.x;
      x_1358 = x_1365;
    }
    let x_1366 : f32 = x_1358;
    u_xlat30 = x_1366;
    let x_1368 : bool = u_xlatb7.x;
    if (x_1368) {
      let x_1372 : vec4<f32> = u_xlat6;
      x_1369 = vec3<f32>(x_1372.x, x_1372.y, x_1372.z);
    } else {
      let x_1375 : f32 = u_xlat30;
      x_1369 = vec3<f32>(x_1375, x_1375, x_1375);
    }
    let x_1377 : vec3<f32> = x_1369;
    let x_1378 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1378.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1384 : vec4<f32> = u_xlat6;
  let x_1387 : vec4<f32> = x_113.x_MainLightColor;
  let x_1389 : vec3<f32> = (vec3<f32>(x_1384.x, x_1384.y, x_1384.z) * vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
  let x_1390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
  let x_1393 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1393;
  let x_1396 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1396;
  let x_1399 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1399;
  let x_1401 : vec4<f32> = u_xlat7;
  let x_1404 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1401.x, x_1401.y, x_1401.z)), vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
  let x_1407 : f32 = u_xlat30;
  let x_1408 : f32 = u_xlat30;
  u_xlat30 = (x_1407 + x_1408);
  let x_1410 : vec4<f32> = u_xlat1;
  let x_1412 : f32 = u_xlat30;
  let x_1416 : vec4<f32> = u_xlat7;
  let x_1419 : vec3<f32> = ((vec3<f32>(x_1410.x, x_1410.y, x_1410.z) * -(vec3<f32>(x_1412, x_1412, x_1412))) + -(vec3<f32>(x_1416.x, x_1416.y, x_1416.z)));
  let x_1420 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
  let x_1422 : vec4<f32> = u_xlat1;
  let x_1424 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1422.x, x_1422.y, x_1422.z), vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1427, 0.0f, 1.0f);
  let x_1429 : f32 = u_xlat30;
  u_xlat30 = (-(x_1429) + 1.0f);
  let x_1432 : f32 = u_xlat30;
  let x_1433 : f32 = u_xlat30;
  u_xlat30 = (x_1432 * x_1433);
  let x_1435 : f32 = u_xlat30;
  let x_1436 : f32 = u_xlat30;
  u_xlat30 = (x_1435 * x_1436);
  let x_1439 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1439) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1446 : f32 = u_xlat0.x;
  let x_1447 : f32 = u_xlat47;
  u_xlat0.x = (x_1446 * x_1447);
  let x_1451 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1451 * 6.0f);
  let x_1463 : vec4<f32> = u_xlat8;
  let x_1466 : f32 = u_xlat0.x;
  let x_1467 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1463.x, x_1463.y, x_1463.z), x_1466);
  u_xlat8 = x_1467;
  let x_1469 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1469 + -1.0f);
  let x_1477 : f32 = x_1475.unity_SpecCube0_HDR.w;
  let x_1479 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1477 * x_1479) + 1.0f);
  let x_1484 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1484, 0.0f);
  let x_1488 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1488);
  let x_1492 : f32 = u_xlat0.x;
  let x_1494 : f32 = x_1475.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1492 * x_1494);
  let x_1498 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1498);
  let x_1502 : f32 = u_xlat0.x;
  let x_1504 : f32 = x_1475.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1502 * x_1504);
  let x_1507 : vec4<f32> = u_xlat8;
  let x_1509 : vec3<f32> = u_xlat0;
  let x_1511 : vec3<f32> = (vec3<f32>(x_1507.x, x_1507.y, x_1507.z) * vec3<f32>(x_1509.x, x_1509.x, x_1509.x));
  let x_1512 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
  let x_1514 : f32 = u_xlat28;
  let x_1516 : f32 = u_xlat28;
  let x_1520 : vec2<f32> = ((vec2<f32>(x_1514, x_1514) * vec2<f32>(x_1516, x_1516)) + vec2<f32>(-1.0f, 1.0f));
  let x_1521 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1520.x, x_1521.y, x_1520.y);
  let x_1524 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1524);
  let x_1526 : vec4<f32> = u_xlat5;
  let x_1529 : f32 = u_xlat45;
  let x_1531 : vec3<f32> = (-(vec3<f32>(x_1526.x, x_1526.y, x_1526.z)) + vec3<f32>(x_1529, x_1529, x_1529));
  let x_1532 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  let x_1534 : f32 = u_xlat30;
  let x_1536 : vec4<f32> = u_xlat9;
  let x_1539 : vec4<f32> = u_xlat5;
  let x_1541 : vec3<f32> = ((vec3<f32>(x_1534, x_1534, x_1534) * vec3<f32>(x_1536.x, x_1536.y, x_1536.z)) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1544 : f32 = u_xlat28;
  let x_1546 : vec4<f32> = u_xlat9;
  let x_1548 : vec3<f32> = (vec3<f32>(x_1544, x_1544, x_1544) * vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1551 : vec4<f32> = u_xlat8;
  let x_1553 : vec4<f32> = u_xlat9;
  let x_1555 : vec3<f32> = (vec3<f32>(x_1551.x, x_1551.y, x_1551.z) * vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
  let x_1556 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
  let x_1558 : vec4<f32> = u_xlat3;
  let x_1560 : vec4<f32> = u_xlat4;
  let x_1563 : vec4<f32> = u_xlat8;
  let x_1565 : vec3<f32> = ((vec3<f32>(x_1558.x, x_1558.y, x_1558.z) * vec3<f32>(x_1560.x, x_1560.y, x_1560.z)) + vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
  let x_1566 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
  let x_1569 : f32 = u_xlat2.x;
  let x_1571 : f32 = x_1475.unity_LightData.z;
  u_xlat28 = (x_1569 * x_1571);
  let x_1573 : vec4<f32> = u_xlat1;
  let x_1576 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1573.x, x_1573.y, x_1573.z), vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1581 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1581, 0.0f, 1.0f);
  let x_1584 : f32 = u_xlat28;
  let x_1586 : f32 = u_xlat2.x;
  u_xlat28 = (x_1584 * x_1586);
  let x_1588 : f32 = u_xlat28;
  let x_1590 : vec4<f32> = u_xlat6;
  let x_1592 : vec3<f32> = (vec3<f32>(x_1588, x_1588, x_1588) * vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
  let x_1595 : vec4<f32> = u_xlat7;
  let x_1598 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1595.x, x_1595.y, x_1595.z) + vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat8;
  let x_1605 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1603.x, x_1603.y, x_1603.z), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1608 : f32 = u_xlat28;
  u_xlat28 = max(x_1608, 1.17549435e-38f);
  let x_1611 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1611);
  let x_1613 : f32 = u_xlat28;
  let x_1615 : vec4<f32> = u_xlat8;
  let x_1617 : vec3<f32> = (vec3<f32>(x_1613, x_1613, x_1613) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
  let x_1618 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
  let x_1620 : vec4<f32> = u_xlat1;
  let x_1622 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1620.x, x_1620.y, x_1620.z), vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1625, 0.0f, 1.0f);
  let x_1628 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1630 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_1628.x, x_1628.y, x_1628.z), vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
  let x_1635 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1635, 0.0f, 1.0f);
  let x_1638 : f32 = u_xlat28;
  let x_1639 : f32 = u_xlat28;
  u_xlat28 = (x_1638 * x_1639);
  let x_1641 : f32 = u_xlat28;
  let x_1643 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1641 * x_1643) + 1.00001001358032226562f);
  let x_1648 : f32 = u_xlat2.x;
  let x_1650 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1648 * x_1650);
  let x_1653 : f32 = u_xlat28;
  let x_1654 : f32 = u_xlat28;
  u_xlat28 = (x_1653 * x_1654);
  let x_1657 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1657, 0.10000000149011611938f);
  let x_1661 : f32 = u_xlat28;
  let x_1663 : f32 = u_xlat2.x;
  u_xlat28 = (x_1661 * x_1663);
  let x_1665 : f32 = u_xlat46;
  let x_1666 : f32 = u_xlat28;
  u_xlat28 = (x_1665 * x_1666);
  let x_1668 : f32 = u_xlat44;
  let x_1669 : f32 = u_xlat28;
  u_xlat28 = (x_1668 / x_1669);
  let x_1671 : vec4<f32> = u_xlat5;
  let x_1673 : f32 = u_xlat28;
  let x_1676 : vec4<f32> = u_xlat4;
  let x_1678 : vec3<f32> = ((vec3<f32>(x_1671.x, x_1671.y, x_1671.z) * vec3<f32>(x_1673, x_1673, x_1673)) + vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1679 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1681 : vec4<f32> = u_xlat6;
  let x_1683 : vec4<f32> = u_xlat8;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1681.x, x_1681.y, x_1681.z) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1689 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1691 : f32 = x_1475.unity_LightData.y;
  u_xlat28 = min(x_1689, x_1691);
  let x_1694 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1694));
  let x_1697 : f32 = u_xlat16;
  let x_1699 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_1702 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1697 * x_1699) + x_1702);
  let x_1706 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1706, 0.0f, 1.0f);
  let x_1710 : f32 = x_1277.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1712 : f32 = x_1277.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1714 : f32 = x_1277.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1716 : f32 = x_1277.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1717 : vec4<f32> = vec4<f32>(x_1710, x_1712, x_1714, x_1716);
  let x_1723 : vec4<bool> = (vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1717.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_1723.x, x_1723.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1735 : u32 = u_xlatu_loop_1;
    let x_1736 : u32 = u_xlatu28;
    if ((x_1735 < x_1736)) {
    } else {
      break;
    }
    let x_1739 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1739 >> 2u);
    let x_1742 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1742 & 3u));
    let x_1745 : u32 = u_xlatu47;
    let x_1748 : vec4<f32> = x_1475.unity_LightIndices[bitcast<i32>(x_1745)];
    let x_1758 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1763 : vec4<u32> = indexable[x_1758];
    u_xlat47 = dot(x_1748, bitcast<vec4<f32>>(x_1763));
    let x_1767 : f32 = u_xlat47;
    u_xlati47 = i32(x_1767);
    let x_1769 : vec3<f32> = vs_TEXCOORD7;
    let x_1780 : i32 = u_xlati47;
    let x_1782 : vec4<f32> = x_1779.x_AdditionalLightsPosition[x_1780];
    let x_1785 : i32 = u_xlati47;
    let x_1787 : vec4<f32> = x_1779.x_AdditionalLightsPosition[x_1785];
    let x_1789 : vec3<f32> = ((-(x_1769) * vec3<f32>(x_1782.w, x_1782.w, x_1782.w)) + vec3<f32>(x_1787.x, x_1787.y, x_1787.z));
    let x_1790 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1790.w);
    let x_1793 : vec4<f32> = u_xlat9;
    let x_1795 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
    let x_1798 : f32 = u_xlat48;
    u_xlat48 = max(x_1798, 0.00006103515625f);
    let x_1801 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1801);
    let x_1803 : f32 = u_xlat49;
    let x_1805 : vec4<f32> = u_xlat9;
    let x_1807 : vec3<f32> = (vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
    let x_1811 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1811);
    let x_1813 : f32 = u_xlat48;
    let x_1814 : i32 = u_xlati47;
    let x_1816 : f32 = x_1779.x_AdditionalLightsAttenuation[x_1814].x;
    u_xlat48 = (x_1813 * x_1816);
    let x_1818 : f32 = u_xlat48;
    let x_1820 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1818) * x_1820) + 1.0f);
    let x_1823 : f32 = u_xlat48;
    u_xlat48 = max(x_1823, 0.0f);
    let x_1825 : f32 = u_xlat48;
    let x_1826 : f32 = u_xlat48;
    u_xlat48 = (x_1825 * x_1826);
    let x_1828 : f32 = u_xlat48;
    let x_1829 : f32 = u_xlat50;
    u_xlat48 = (x_1828 * x_1829);
    let x_1831 : i32 = u_xlati47;
    let x_1833 : vec4<f32> = x_1779.x_AdditionalLightsSpotDir[x_1831];
    let x_1835 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1833.x, x_1833.y, x_1833.z), vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
    let x_1838 : f32 = u_xlat50;
    let x_1839 : i32 = u_xlati47;
    let x_1841 : f32 = x_1779.x_AdditionalLightsAttenuation[x_1839].z;
    let x_1843 : i32 = u_xlati47;
    let x_1845 : f32 = x_1779.x_AdditionalLightsAttenuation[x_1843].w;
    u_xlat50 = ((x_1838 * x_1841) + x_1845);
    let x_1847 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1847, 0.0f, 1.0f);
    let x_1849 : f32 = u_xlat50;
    let x_1850 : f32 = u_xlat50;
    u_xlat50 = (x_1849 * x_1850);
    let x_1852 : f32 = u_xlat48;
    let x_1853 : f32 = u_xlat50;
    u_xlat48 = (x_1852 * x_1853);
    let x_1856 : i32 = u_xlati47;
    let x_1858 : f32 = x_845.x_AdditionalShadowParams[x_1856].w;
    u_xlati50 = i32(x_1858);
    let x_1861 : i32 = u_xlati50;
    u_xlatb51 = (x_1861 >= 0i);
    let x_1863 : bool = u_xlatb51;
    if (x_1863) {
      let x_1867 : i32 = u_xlati47;
      let x_1869 : f32 = x_845.x_AdditionalShadowParams[x_1867].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1869, x_1869, x_1869, x_1869))));
      let x_1873 : bool = u_xlatb51;
      if (x_1873) {
        let x_1877 : vec4<f32> = u_xlat10;
        let x_1880 : vec4<f32> = u_xlat10;
        let x_1883 : vec4<bool> = (abs(vec4<f32>(x_1877.z, x_1877.z, x_1877.y, x_1877.z)) >= abs(vec4<f32>(x_1880.x, x_1880.y, x_1880.x, x_1880.x)));
        let x_1885 : vec3<bool> = vec3<bool>(x_1883.x, x_1883.y, x_1883.z);
        let x_1886 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
        let x_1889 : bool = u_xlatb11.y;
        let x_1891 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1889 & x_1891);
        let x_1893 : vec4<f32> = u_xlat10;
        let x_1896 : vec4<bool> = (-(vec4<f32>(x_1893.z, x_1893.y, x_1893.z, x_1893.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1897 : vec3<bool> = vec3<bool>(x_1896.x, x_1896.y, x_1896.w);
        let x_1898 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1897.x, x_1897.y, x_1898.z, x_1897.z);
        let x_1901 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1901);
        let x_1906 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1906);
        let x_1911 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1911);
        let x_1914 : bool = u_xlatb11.z;
        if (x_1914) {
          let x_1919 : f32 = u_xlat11.y;
          x_1915 = x_1919;
        } else {
          let x_1921 : f32 = u_xlat52;
          x_1915 = x_1921;
        }
        let x_1922 : f32 = x_1915;
        u_xlat52 = x_1922;
        let x_1924 : bool = u_xlatb51;
        if (x_1924) {
          let x_1929 : f32 = u_xlat11.x;
          x_1925 = x_1929;
        } else {
          let x_1931 : f32 = u_xlat52;
          x_1925 = x_1931;
        }
        let x_1932 : f32 = x_1925;
        u_xlat51 = x_1932;
        let x_1933 : i32 = u_xlati47;
        let x_1935 : f32 = x_845.x_AdditionalShadowParams[x_1933].w;
        u_xlat52 = trunc(x_1935);
        let x_1937 : f32 = u_xlat51;
        let x_1938 : f32 = u_xlat52;
        u_xlat51 = (x_1937 + x_1938);
        let x_1940 : f32 = u_xlat51;
        u_xlati50 = i32(x_1940);
      }
      let x_1942 : i32 = u_xlati50;
      u_xlati50 = (x_1942 << bitcast<u32>(2i));
      let x_1944 : vec3<f32> = vs_TEXCOORD7;
      let x_1946 : i32 = u_xlati50;
      let x_1949 : i32 = u_xlati50;
      let x_1953 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1946 + 1i) / 4i)][((x_1949 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1944.y, x_1944.y, x_1944.y, x_1944.y) * x_1953);
      let x_1955 : i32 = u_xlati50;
      let x_1957 : i32 = u_xlati50;
      let x_1960 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_1955 / 4i)][(x_1957 % 4i)];
      let x_1961 : vec3<f32> = vs_TEXCOORD7;
      let x_1964 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1960 * vec4<f32>(x_1961.x, x_1961.x, x_1961.x, x_1961.x)) + x_1964);
      let x_1966 : i32 = u_xlati50;
      let x_1969 : i32 = u_xlati50;
      let x_1973 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1966 + 2i) / 4i)][((x_1969 + 2i) % 4i)];
      let x_1974 : vec3<f32> = vs_TEXCOORD7;
      let x_1977 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1973 * vec4<f32>(x_1974.z, x_1974.z, x_1974.z, x_1974.z)) + x_1977);
      let x_1979 : vec4<f32> = u_xlat11;
      let x_1980 : i32 = u_xlati50;
      let x_1983 : i32 = u_xlati50;
      let x_1987 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1980 + 3i) / 4i)][((x_1983 + 3i) % 4i)];
      u_xlat11 = (x_1979 + x_1987);
      let x_1989 : vec4<f32> = u_xlat11;
      let x_1991 : vec4<f32> = u_xlat11;
      let x_1993 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.y, x_1989.z) / vec3<f32>(x_1991.w, x_1991.w, x_1991.w));
      let x_1994 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
      let x_1997 : vec4<f32> = u_xlat11;
      let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
      let x_2000 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
      let x_2008 : vec3<f32> = txVec1;
      let x_2010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2008.xy, x_2008.z);
      u_xlat50 = x_2010;
      let x_2011 : i32 = u_xlati47;
      let x_2013 : f32 = x_845.x_AdditionalShadowParams[x_2011].x;
      u_xlat51 = (1.0f + -(x_2013));
      let x_2016 : f32 = u_xlat50;
      let x_2017 : i32 = u_xlati47;
      let x_2019 : f32 = x_845.x_AdditionalShadowParams[x_2017].x;
      let x_2021 : f32 = u_xlat51;
      u_xlat50 = ((x_2016 * x_2019) + x_2021);
      let x_2024 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_2024);
      let x_2028 : f32 = u_xlat11.z;
      u_xlatb52 = (x_2028 >= 1.0f);
      let x_2030 : bool = u_xlatb51;
      let x_2031 : bool = u_xlatb52;
      u_xlatb51 = (x_2030 | x_2031);
      let x_2033 : bool = u_xlatb51;
      let x_2034 : f32 = u_xlat50;
      u_xlat50 = select(x_2034, 1.0f, x_2033);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_2037 : f32 = u_xlat50;
    u_xlat51 = (-(x_2037) + 1.0f);
    let x_2041 : f32 = u_xlat2.x;
    let x_2042 : f32 = u_xlat51;
    let x_2044 : f32 = u_xlat50;
    u_xlat50 = ((x_2041 * x_2042) + x_2044);
    let x_2047 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_2047 & 31i)));
    let x_2050 : i32 = u_xlati51;
    let x_2053 : f32 = x_1277.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_2050) & bitcast<u32>(x_2053)));
    let x_2057 : i32 = u_xlati51;
    if ((x_2057 != 0i)) {
      let x_2061 : i32 = u_xlati47;
      let x_2063 : f32 = x_1277.x_AdditionalLightsLightTypes[x_2061].el;
      u_xlati51 = i32(x_2063);
      let x_2066 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_2066 != 0i));
      let x_2070 : i32 = u_xlati47;
      u_xlati11 = (x_2070 << bitcast<u32>(2i));
      let x_2072 : i32 = u_xlati52;
      if ((x_2072 != 0i)) {
        let x_2077 : vec3<f32> = vs_TEXCOORD7;
        let x_2079 : i32 = u_xlati11;
        let x_2082 : i32 = u_xlati11;
        let x_2086 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2079 + 1i) / 4i)][((x_2082 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2077.y, x_2077.y, x_2077.y) * vec3<f32>(x_2086.x, x_2086.y, x_2086.w));
        let x_2089 : i32 = u_xlati11;
        let x_2091 : i32 = u_xlati11;
        let x_2094 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[(x_2089 / 4i)][(x_2091 % 4i)];
        let x_2096 : vec3<f32> = vs_TEXCOORD7;
        let x_2099 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2094.x, x_2094.y, x_2094.w) * vec3<f32>(x_2096.x, x_2096.x, x_2096.x)) + x_2099);
        let x_2101 : i32 = u_xlati11;
        let x_2104 : i32 = u_xlati11;
        let x_2108 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2101 + 2i) / 4i)][((x_2104 + 2i) % 4i)];
        let x_2110 : vec3<f32> = vs_TEXCOORD7;
        let x_2113 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2108.x, x_2108.y, x_2108.w) * vec3<f32>(x_2110.z, x_2110.z, x_2110.z)) + x_2113);
        let x_2115 : vec3<f32> = u_xlat25;
        let x_2116 : i32 = u_xlati11;
        let x_2119 : i32 = u_xlati11;
        let x_2123 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2116 + 3i) / 4i)][((x_2119 + 3i) % 4i)];
        u_xlat25 = (x_2115 + vec3<f32>(x_2123.x, x_2123.y, x_2123.w));
        let x_2126 : vec3<f32> = u_xlat25;
        let x_2128 : vec3<f32> = u_xlat25;
        let x_2130 : vec2<f32> = (vec2<f32>(x_2126.x, x_2126.y) / vec2<f32>(x_2128.z, x_2128.z));
        let x_2131 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2130.x, x_2130.y, x_2131.z);
        let x_2133 : vec3<f32> = u_xlat25;
        let x_2136 : vec2<f32> = ((vec2<f32>(x_2133.x, x_2133.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2137 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2136.x, x_2136.y, x_2137.z);
        let x_2139 : vec3<f32> = u_xlat25;
        let x_2143 : vec2<f32> = clamp(vec2<f32>(x_2139.x, x_2139.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2144 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2143.x, x_2143.y, x_2144.z);
        let x_2146 : i32 = u_xlati47;
        let x_2148 : vec4<f32> = x_1277.x_AdditionalLightsCookieAtlasUVRects[x_2146];
        let x_2150 : vec3<f32> = u_xlat25;
        let x_2153 : i32 = u_xlati47;
        let x_2155 : vec4<f32> = x_1277.x_AdditionalLightsCookieAtlasUVRects[x_2153];
        let x_2157 : vec2<f32> = ((vec2<f32>(x_2148.x, x_2148.y) * vec2<f32>(x_2150.x, x_2150.y)) + vec2<f32>(x_2155.z, x_2155.w));
        let x_2158 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2157.x, x_2157.y, x_2158.z);
      } else {
        let x_2161 : i32 = u_xlati51;
        u_xlatb51 = (x_2161 == 1i);
        let x_2163 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2163);
        let x_2165 : i32 = u_xlati51;
        if ((x_2165 != 0i)) {
          let x_2169 : vec3<f32> = vs_TEXCOORD7;
          let x_2171 : i32 = u_xlati11;
          let x_2174 : i32 = u_xlati11;
          let x_2178 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2171 + 1i) / 4i)][((x_2174 + 1i) % 4i)];
          let x_2180 : vec2<f32> = (vec2<f32>(x_2169.y, x_2169.y) * vec2<f32>(x_2178.x, x_2178.y));
          let x_2181 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
          let x_2183 : i32 = u_xlati11;
          let x_2185 : i32 = u_xlati11;
          let x_2188 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[(x_2183 / 4i)][(x_2185 % 4i)];
          let x_2190 : vec3<f32> = vs_TEXCOORD7;
          let x_2193 : vec4<f32> = u_xlat12;
          let x_2195 : vec2<f32> = ((vec2<f32>(x_2188.x, x_2188.y) * vec2<f32>(x_2190.x, x_2190.x)) + vec2<f32>(x_2193.x, x_2193.y));
          let x_2196 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2195.x, x_2195.y, x_2196.z, x_2196.w);
          let x_2198 : i32 = u_xlati11;
          let x_2201 : i32 = u_xlati11;
          let x_2205 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2198 + 2i) / 4i)][((x_2201 + 2i) % 4i)];
          let x_2207 : vec3<f32> = vs_TEXCOORD7;
          let x_2210 : vec4<f32> = u_xlat12;
          let x_2212 : vec2<f32> = ((vec2<f32>(x_2205.x, x_2205.y) * vec2<f32>(x_2207.z, x_2207.z)) + vec2<f32>(x_2210.x, x_2210.y));
          let x_2213 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
          let x_2215 : vec4<f32> = u_xlat12;
          let x_2217 : i32 = u_xlati11;
          let x_2220 : i32 = u_xlati11;
          let x_2224 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2217 + 3i) / 4i)][((x_2220 + 3i) % 4i)];
          let x_2226 : vec2<f32> = (vec2<f32>(x_2215.x, x_2215.y) + vec2<f32>(x_2224.x, x_2224.y));
          let x_2227 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
          let x_2229 : vec4<f32> = u_xlat12;
          let x_2232 : vec2<f32> = ((vec2<f32>(x_2229.x, x_2229.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2233 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
          let x_2235 : vec4<f32> = u_xlat12;
          let x_2237 : vec2<f32> = fract(vec2<f32>(x_2235.x, x_2235.y));
          let x_2238 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2237.x, x_2237.y, x_2238.z, x_2238.w);
          let x_2240 : i32 = u_xlati47;
          let x_2242 : vec4<f32> = x_1277.x_AdditionalLightsCookieAtlasUVRects[x_2240];
          let x_2244 : vec4<f32> = u_xlat12;
          let x_2247 : i32 = u_xlati47;
          let x_2249 : vec4<f32> = x_1277.x_AdditionalLightsCookieAtlasUVRects[x_2247];
          let x_2251 : vec2<f32> = ((vec2<f32>(x_2242.x, x_2242.y) * vec2<f32>(x_2244.x, x_2244.y)) + vec2<f32>(x_2249.z, x_2249.w));
          let x_2252 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2251.x, x_2251.y, x_2252.z);
        } else {
          let x_2255 : vec3<f32> = vs_TEXCOORD7;
          let x_2257 : i32 = u_xlati11;
          let x_2260 : i32 = u_xlati11;
          let x_2264 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2257 + 1i) / 4i)][((x_2260 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2255.y, x_2255.y, x_2255.y, x_2255.y) * x_2264);
          let x_2266 : i32 = u_xlati11;
          let x_2268 : i32 = u_xlati11;
          let x_2271 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[(x_2266 / 4i)][(x_2268 % 4i)];
          let x_2272 : vec3<f32> = vs_TEXCOORD7;
          let x_2275 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2271 * vec4<f32>(x_2272.x, x_2272.x, x_2272.x, x_2272.x)) + x_2275);
          let x_2277 : i32 = u_xlati11;
          let x_2280 : i32 = u_xlati11;
          let x_2284 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2277 + 2i) / 4i)][((x_2280 + 2i) % 4i)];
          let x_2285 : vec3<f32> = vs_TEXCOORD7;
          let x_2288 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2284 * vec4<f32>(x_2285.z, x_2285.z, x_2285.z, x_2285.z)) + x_2288);
          let x_2290 : vec4<f32> = u_xlat12;
          let x_2291 : i32 = u_xlati11;
          let x_2294 : i32 = u_xlati11;
          let x_2298 : vec4<f32> = x_1277.x_AdditionalLightsWorldToLights[((x_2291 + 3i) / 4i)][((x_2294 + 3i) % 4i)];
          u_xlat12 = (x_2290 + x_2298);
          let x_2300 : vec4<f32> = u_xlat12;
          let x_2302 : vec4<f32> = u_xlat12;
          let x_2304 : vec3<f32> = (vec3<f32>(x_2300.x, x_2300.y, x_2300.z) / vec3<f32>(x_2302.w, x_2302.w, x_2302.w));
          let x_2305 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
          let x_2307 : vec4<f32> = u_xlat12;
          let x_2309 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
          let x_2312 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2312);
          let x_2314 : f32 = u_xlat51;
          let x_2316 : vec4<f32> = u_xlat12;
          let x_2318 : vec3<f32> = (vec3<f32>(x_2314, x_2314, x_2314) * vec3<f32>(x_2316.x, x_2316.y, x_2316.z));
          let x_2319 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
          let x_2321 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2321.x, x_2321.y, x_2321.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2326 : f32 = u_xlat51;
          u_xlat51 = max(x_2326, 0.00000099999999747524f);
          let x_2329 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2329);
          let x_2331 : f32 = u_xlat51;
          let x_2333 : vec4<f32> = u_xlat12;
          let x_2335 : vec3<f32> = (vec3<f32>(x_2331, x_2331, x_2331) * vec3<f32>(x_2333.z, x_2333.x, x_2333.y));
          let x_2336 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
          let x_2339 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2339);
          let x_2343 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2343, 0.0f, 1.0f);
          let x_2346 : vec4<f32> = u_xlat13;
          let x_2348 : vec4<bool> = (vec4<f32>(x_2346.y, x_2346.y, x_2346.y, x_2346.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2349 : vec2<bool> = vec2<bool>(x_2348.x, x_2348.w);
          let x_2350 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2349.x, x_2350.y, x_2350.z, x_2349.y);
          let x_2353 : bool = u_xlatb11.x;
          if (x_2353) {
            let x_2358 : f32 = u_xlat13.x;
            x_2354 = x_2358;
          } else {
            let x_2361 : f32 = u_xlat13.x;
            x_2354 = -(x_2361);
          }
          let x_2363 : f32 = x_2354;
          u_xlat11.x = x_2363;
          let x_2366 : bool = u_xlatb11.w;
          if (x_2366) {
            let x_2371 : f32 = u_xlat13.x;
            x_2367 = x_2371;
          } else {
            let x_2374 : f32 = u_xlat13.x;
            x_2367 = -(x_2374);
          }
          let x_2376 : f32 = x_2367;
          u_xlat11.w = x_2376;
          let x_2378 : vec4<f32> = u_xlat12;
          let x_2380 : f32 = u_xlat51;
          let x_2383 : vec4<f32> = u_xlat11;
          let x_2385 : vec2<f32> = ((vec2<f32>(x_2378.x, x_2378.y) * vec2<f32>(x_2380, x_2380)) + vec2<f32>(x_2383.x, x_2383.w));
          let x_2386 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2385.x, x_2386.y, x_2386.z, x_2385.y);
          let x_2388 : vec4<f32> = u_xlat11;
          let x_2391 : vec2<f32> = ((vec2<f32>(x_2388.x, x_2388.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2392 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2391.x, x_2392.y, x_2392.z, x_2391.y);
          let x_2394 : vec4<f32> = u_xlat11;
          let x_2398 : vec2<f32> = clamp(vec2<f32>(x_2394.x, x_2394.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2399 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2398.x, x_2399.y, x_2399.z, x_2398.y);
          let x_2401 : i32 = u_xlati47;
          let x_2403 : vec4<f32> = x_1277.x_AdditionalLightsCookieAtlasUVRects[x_2401];
          let x_2405 : vec4<f32> = u_xlat11;
          let x_2408 : i32 = u_xlati47;
          let x_2410 : vec4<f32> = x_1277.x_AdditionalLightsCookieAtlasUVRects[x_2408];
          let x_2412 : vec2<f32> = ((vec2<f32>(x_2403.x, x_2403.y) * vec2<f32>(x_2405.x, x_2405.w)) + vec2<f32>(x_2410.z, x_2410.w));
          let x_2413 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2412.x, x_2412.y, x_2413.z);
        }
      }
      let x_2420 : vec3<f32> = u_xlat25;
      let x_2422 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2420.x, x_2420.y), 0.0f);
      u_xlat11 = x_2422;
      let x_2424 : bool = u_xlatb16.y;
      if (x_2424) {
        let x_2429 : f32 = u_xlat11.w;
        x_2425 = x_2429;
      } else {
        let x_2432 : f32 = u_xlat11.x;
        x_2425 = x_2432;
      }
      let x_2433 : f32 = x_2425;
      u_xlat51 = x_2433;
      let x_2435 : bool = u_xlatb16.x;
      if (x_2435) {
        let x_2439 : vec4<f32> = u_xlat11;
        x_2436 = vec3<f32>(x_2439.x, x_2439.y, x_2439.z);
      } else {
        let x_2442 : f32 = u_xlat51;
        x_2436 = vec3<f32>(x_2442, x_2442, x_2442);
      }
      let x_2444 : vec3<f32> = x_2436;
      let x_2445 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2451 : vec4<f32> = u_xlat11;
    let x_2453 : i32 = u_xlati47;
    let x_2455 : vec4<f32> = x_1779.x_AdditionalLightsColor[x_2453];
    let x_2457 : vec3<f32> = (vec3<f32>(x_2451.x, x_2451.y, x_2451.z) * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
    let x_2458 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
    let x_2460 : f32 = u_xlat48;
    let x_2461 : f32 = u_xlat50;
    u_xlat47 = (x_2460 * x_2461);
    let x_2463 : vec4<f32> = u_xlat1;
    let x_2465 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2463.x, x_2463.y, x_2463.z), vec3<f32>(x_2465.x, x_2465.y, x_2465.z));
    let x_2468 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2468, 0.0f, 1.0f);
    let x_2470 : f32 = u_xlat47;
    let x_2471 : f32 = u_xlat48;
    u_xlat47 = (x_2470 * x_2471);
    let x_2473 : f32 = u_xlat47;
    let x_2475 : vec4<f32> = u_xlat11;
    let x_2477 : vec3<f32> = (vec3<f32>(x_2473, x_2473, x_2473) * vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
    let x_2478 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
    let x_2480 : vec4<f32> = u_xlat9;
    let x_2482 : f32 = u_xlat49;
    let x_2485 : vec4<f32> = u_xlat7;
    let x_2487 : vec3<f32> = ((vec3<f32>(x_2480.x, x_2480.y, x_2480.z) * vec3<f32>(x_2482, x_2482, x_2482)) + vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
    let x_2488 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
    let x_2490 : vec4<f32> = u_xlat9;
    let x_2492 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2490.x, x_2490.y, x_2490.z), vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
    let x_2495 : f32 = u_xlat47;
    u_xlat47 = max(x_2495, 1.17549435e-38f);
    let x_2497 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2497);
    let x_2499 : f32 = u_xlat47;
    let x_2501 : vec4<f32> = u_xlat9;
    let x_2503 : vec3<f32> = (vec3<f32>(x_2499, x_2499, x_2499) * vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
    let x_2504 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
    let x_2506 : vec4<f32> = u_xlat1;
    let x_2508 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
    let x_2511 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2511, 0.0f, 1.0f);
    let x_2513 : vec4<f32> = u_xlat10;
    let x_2515 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2518, 0.0f, 1.0f);
    let x_2520 : f32 = u_xlat47;
    let x_2521 : f32 = u_xlat47;
    u_xlat47 = (x_2520 * x_2521);
    let x_2523 : f32 = u_xlat47;
    let x_2525 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2523 * x_2525) + 1.00001001358032226562f);
    let x_2528 : f32 = u_xlat48;
    let x_2529 : f32 = u_xlat48;
    u_xlat48 = (x_2528 * x_2529);
    let x_2531 : f32 = u_xlat47;
    let x_2532 : f32 = u_xlat47;
    u_xlat47 = (x_2531 * x_2532);
    let x_2534 : f32 = u_xlat48;
    u_xlat48 = max(x_2534, 0.10000000149011611938f);
    let x_2536 : f32 = u_xlat47;
    let x_2537 : f32 = u_xlat48;
    u_xlat47 = (x_2536 * x_2537);
    let x_2539 : f32 = u_xlat46;
    let x_2540 : f32 = u_xlat47;
    u_xlat47 = (x_2539 * x_2540);
    let x_2542 : f32 = u_xlat44;
    let x_2543 : f32 = u_xlat47;
    u_xlat47 = (x_2542 / x_2543);
    let x_2545 : vec4<f32> = u_xlat5;
    let x_2547 : f32 = u_xlat47;
    let x_2550 : vec4<f32> = u_xlat4;
    let x_2552 : vec3<f32> = ((vec3<f32>(x_2545.x, x_2545.y, x_2545.z) * vec3<f32>(x_2547, x_2547, x_2547)) + vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
    let x_2553 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
    let x_2555 : vec4<f32> = u_xlat9;
    let x_2557 : vec4<f32> = u_xlat11;
    let x_2560 : vec4<f32> = u_xlat8;
    let x_2562 : vec3<f32> = ((vec3<f32>(x_2555.x, x_2555.y, x_2555.z) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z)) + vec3<f32>(x_2560.x, x_2560.y, x_2560.z));
    let x_2563 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);

    continuing {
      let x_2565 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2565 + bitcast<u32>(1i));
    }
  }
  let x_2567 : vec4<f32> = u_xlat3;
  let x_2569 : f32 = u_xlat14;
  let x_2572 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2567.x, x_2567.y, x_2567.z) * vec3<f32>(x_2569, x_2569, x_2569)) + vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
  let x_2575 : vec4<f32> = u_xlat8;
  let x_2577 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2575.x, x_2575.y, x_2575.z) + x_2577);
  let x_2579 : f32 = u_xlat42;
  let x_2581 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2579, x_2579, x_2579) * x_2581);
  let x_2583 : f32 = u_xlat43;
  let x_2584 : f32 = u_xlat43;
  u_xlat42 = (x_2583 * -(x_2584));
  let x_2587 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2587);
  let x_2591 : vec3<f32> = u_xlat0;
  let x_2592 : f32 = u_xlat42;
  let x_2594 : vec3<f32> = (x_2591 * vec3<f32>(x_2592, x_2592, x_2592));
  let x_2595 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


