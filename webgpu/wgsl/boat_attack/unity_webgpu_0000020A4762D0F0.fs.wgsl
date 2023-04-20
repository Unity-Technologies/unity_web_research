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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_625 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_789 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_862 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1338 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_562 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_945 : f32;
  var x_956 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1475 : f32;
  var x_1485 : f32;
  var txVec1 : vec3<f32>;
  var x_1913 : f32;
  var x_1926 : f32;
  var x_1984 : f32;
  var x_1995 : vec3<f32>;
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
  let x_369 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_375;
  let x_378 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_378;
  let x_381 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_381;
  let x_384 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_384;
  let x_387 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_387;
  let x_390 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_392 + x_393);
  let x_396 : f32 = u_xlat0.z;
  u_xlat7.x = x_396;
  let x_399 : f32 = u_xlat1.z;
  u_xlat7.y = x_399;
  let x_402 : f32 = u_xlat2.z;
  u_xlat7.z = x_402;
  let x_405 : f32 = u_xlat3.y;
  u_xlat7.w = x_405;
  let x_407 : vec4<f32> = u_xlat9;
  let x_410 : f32 = x_13.x_Smoothness0;
  let x_412 : f32 = x_13.x_Smoothness1;
  let x_414 : f32 = x_13.x_Smoothness2;
  let x_416 : f32 = x_13.x_Smoothness3;
  let x_419 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_407) * vec4<f32>(x_410, x_412, x_414, x_416)) + x_419);
  let x_423 : f32 = x_13.x_LayerHasMask0;
  let x_426 : f32 = x_13.x_LayerHasMask1;
  let x_429 : f32 = x_13.x_LayerHasMask2;
  let x_432 : f32 = x_13.x_LayerHasMask3;
  let x_434 : vec4<f32> = u_xlat7;
  let x_436 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_423, x_426, x_429, x_432) * x_434) + x_436);
  let x_439 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_439, x_440);
  let x_443 : f32 = u_xlat0.x;
  u_xlat7.x = x_443;
  let x_446 : f32 = u_xlat1.x;
  u_xlat7.y = x_446;
  let x_449 : f32 = u_xlat2.x;
  u_xlat7.z = x_449;
  let x_452 : f32 = u_xlat3.x;
  u_xlat7.w = x_452;
  let x_454 : vec4<f32> = u_xlat7;
  let x_457 : f32 = x_13.x_Metallic0;
  let x_460 : f32 = x_13.x_Metallic1;
  let x_463 : f32 = x_13.x_Metallic2;
  let x_466 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_454 + -(vec4<f32>(x_457, x_460, x_463, x_466)));
  let x_471 : f32 = x_13.x_LayerHasMask0;
  let x_473 : f32 = x_13.x_LayerHasMask1;
  let x_475 : f32 = x_13.x_LayerHasMask2;
  let x_477 : f32 = x_13.x_LayerHasMask3;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : f32 = x_13.x_Metallic0;
  let x_484 : f32 = x_13.x_Metallic1;
  let x_486 : f32 = x_13.x_Metallic2;
  let x_488 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_471, x_473, x_475, x_477) * x_479) + vec4<f32>(x_482, x_484, x_486, x_488));
  let x_491 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_491, x_492);
  let x_496 : f32 = u_xlat0.y;
  u_xlat3.x = x_496;
  let x_499 : f32 = u_xlat1.y;
  u_xlat3.y = x_499;
  let x_502 : f32 = u_xlat2.y;
  u_xlat3.z = x_502;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_504) + x_506);
  let x_509 : f32 = x_13.x_LayerHasMask0;
  let x_511 : f32 = x_13.x_LayerHasMask1;
  let x_513 : f32 = x_13.x_LayerHasMask2;
  let x_515 : f32 = x_13.x_LayerHasMask3;
  let x_517 : vec4<f32> = u_xlat1;
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_509, x_511, x_513, x_515) * x_517) + x_519);
  let x_522 : vec4<f32> = u_xlat4;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_522, x_523);
  let x_527 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_527 == 0.0f);
  let x_532 : vec3<f32> = vs_TEXCOORD7;
  let x_536 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_532) + x_536);
  let x_538 : vec3<f32> = u_xlat15;
  let x_539 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_538, x_539);
  let x_543 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_543);
  let x_546 : vec3<f32> = u_xlat15;
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_546 * vec3<f32>(x_547.x, x_547.x, x_547.x));
  let x_551 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat15;
    x_562 = x_565;
  } else {
    let x_567 : vec4<f32> = u_xlat2;
    x_562 = vec3<f32>(x_567.x, x_567.y, x_567.z);
  }
  let x_569 : vec3<f32> = x_562;
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  let x_574 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_576);
  let x_578 : f32 = u_xlat43;
  let x_580 : vec3<f32> = vs_TEXCOORD3;
  let x_581 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * x_580);
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_586 : f32 = vs_TEXCOORD7.y;
  let x_588 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_586 * x_588);
  let x_591 : f32 = x_113.unity_MatrixV[0i].z;
  let x_593 : f32 = vs_TEXCOORD7.x;
  let x_595 : f32 = u_xlat43;
  u_xlat43 = ((x_591 * x_593) + x_595);
  let x_598 : f32 = x_113.unity_MatrixV[2i].z;
  let x_600 : f32 = vs_TEXCOORD7.z;
  let x_602 : f32 = u_xlat43;
  u_xlat43 = ((x_598 * x_600) + x_602);
  let x_604 : f32 = u_xlat43;
  let x_607 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_604 + x_607);
  let x_609 : f32 = u_xlat43;
  let x_612 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_609) + -(x_612));
  let x_615 : f32 = u_xlat43;
  u_xlat43 = max(x_615, 0.0f);
  let x_617 : f32 = u_xlat43;
  let x_619 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_617 * x_619);
  u_xlat2.w = 1.0f;
  let x_627 : vec4<f32> = x_625.unity_SHAr;
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_625.unity_SHAg;
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_632, x_633);
  let x_637 : vec4<f32> = x_625.unity_SHAb;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_637, x_638);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_641.y, x_641.z, x_641.z, x_641.x) * vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.z));
  let x_647 : vec4<f32> = x_625.unity_SHBr;
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_625.unity_SHBg;
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_625.unity_SHBb;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_657, x_658);
  let x_663 : f32 = u_xlat2.y;
  let x_665 : f32 = u_xlat2.y;
  u_xlat44 = (x_663 * x_665);
  let x_668 : f32 = u_xlat2.x;
  let x_670 : f32 = u_xlat2.x;
  let x_672 : f32 = u_xlat44;
  u_xlat44 = ((x_668 * x_670) + -(x_672));
  let x_677 : vec4<f32> = x_625.unity_SHC;
  let x_679 : f32 = u_xlat44;
  let x_682 : vec4<f32> = u_xlat6;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_679, x_679, x_679)) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat3;
  let x_697 : vec3<f32> = max(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_701 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_701) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_707 : f32 = u_xlat28;
  let x_708 : f32 = u_xlat44;
  u_xlat45 = (x_707 + -(x_708));
  let x_711 : f32 = u_xlat44;
  let x_713 : vec4<f32> = u_xlat5;
  let x_715 : vec3<f32> = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat5;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_723 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<f32> = u_xlat0;
  let x_727 : vec4<f32> = u_xlat5;
  let x_732 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.x, x_725.x) * vec3<f32>(x_727.x, x_727.y, x_727.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_733 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : f32 = u_xlat28;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat28 = (x_740 * x_742);
  let x_744 : f32 = u_xlat28;
  u_xlat28 = max(x_744, 0.0078125f);
  let x_747 : f32 = u_xlat28;
  let x_748 : f32 = u_xlat28;
  u_xlat44 = (x_747 * x_748);
  let x_750 : f32 = u_xlat45;
  u_xlat45 = (x_750 + 1.0f);
  let x_752 : f32 = u_xlat45;
  u_xlat45 = clamp(x_752, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat28;
  u_xlat46 = ((x_755 * 4.0f) + 2.0f);
  let x_759 : f32 = u_xlat14;
  u_xlat14 = min(x_759, 1.0f);
  let x_763 : vec4<f32> = vs_TEXCOORD8;
  let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
  let x_766 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_764.x, x_764.y, x_766);
  let x_779 : vec3<f32> = txVec0;
  let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
  u_xlat47 = x_781;
  let x_791 : f32 = x_789.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_791) + 1.0f);
  let x_795 : f32 = u_xlat47;
  let x_797 : f32 = x_789.x_MainLightShadowParams.x;
  let x_800 : f32 = u_xlat6.x;
  u_xlat47 = ((x_795 * x_797) + x_800);
  let x_804 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_804);
  let x_810 : f32 = vs_TEXCOORD8.z;
  u_xlatb20.x = (x_810 >= 1.0f);
  let x_814 : bool = u_xlatb20.x;
  let x_815 : bool = u_xlatb6;
  u_xlatb6 = (x_814 | x_815);
  let x_817 : bool = u_xlatb6;
  let x_818 : f32 = u_xlat47;
  u_xlat47 = select(x_818, 1.0f, x_817);
  let x_820 : vec3<f32> = vs_TEXCOORD7;
  let x_822 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_824 : vec3<f32> = (x_820 + -(x_822));
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat6;
  let x_829 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_835 : f32 = u_xlat6.x;
  let x_837 : f32 = x_789.x_MainLightShadowParams.z;
  let x_840 : f32 = x_789.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_835 * x_837) + x_840);
  let x_844 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_844, 0.0f, 1.0f);
  let x_848 : f32 = u_xlat47;
  u_xlat34 = (-(x_848) + 1.0f);
  let x_852 : f32 = u_xlat20.x;
  let x_853 : f32 = u_xlat34;
  let x_855 : f32 = u_xlat47;
  u_xlat47 = ((x_852 * x_853) + x_855);
  let x_864 : f32 = x_862.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_864 == -1.0f));
  let x_868 : bool = u_xlatb20.x;
  if (x_868) {
    let x_871 : vec3<f32> = vs_TEXCOORD7;
    let x_874 : vec4<f32> = x_862.x_MainLightWorldToLight[1i];
    let x_876 : vec2<f32> = (vec2<f32>(x_871.y, x_871.y) * vec2<f32>(x_874.x, x_874.y));
    let x_877 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_876.x, x_876.y, x_877.z);
    let x_880 : vec4<f32> = x_862.x_MainLightWorldToLight[0i];
    let x_882 : vec3<f32> = vs_TEXCOORD7;
    let x_885 : vec3<f32> = u_xlat20;
    let x_887 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_882.x, x_882.x)) + vec2<f32>(x_885.x, x_885.y));
    let x_888 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_887.x, x_887.y, x_888.z);
    let x_891 : vec4<f32> = x_862.x_MainLightWorldToLight[2i];
    let x_893 : vec3<f32> = vs_TEXCOORD7;
    let x_896 : vec3<f32> = u_xlat20;
    let x_898 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_893.z, x_893.z)) + vec2<f32>(x_896.x, x_896.y));
    let x_899 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_898.x, x_898.y, x_899.z);
    let x_901 : vec3<f32> = u_xlat20;
    let x_904 : vec4<f32> = x_862.x_MainLightWorldToLight[3i];
    let x_906 : vec2<f32> = (vec2<f32>(x_901.x, x_901.y) + vec2<f32>(x_904.x, x_904.y));
    let x_907 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_906.x, x_906.y, x_907.z);
    let x_909 : vec3<f32> = u_xlat20;
    let x_912 : vec2<f32> = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_913 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_912.x, x_912.y, x_913.z);
    let x_920 : vec3<f32> = u_xlat20;
    let x_923 : f32 = x_113.x_GlobalMipBias.x;
    let x_924 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_920.x, x_920.y), x_923);
    u_xlat7 = x_924;
    let x_926 : f32 = x_862.x_MainLightCookieTextureFormat;
    let x_928 : f32 = x_862.x_MainLightCookieTextureFormat;
    let x_930 : f32 = x_862.x_MainLightCookieTextureFormat;
    let x_932 : f32 = x_862.x_MainLightCookieTextureFormat;
    let x_933 : vec4<f32> = vec4<f32>(x_926, x_928, x_930, x_932);
    let x_940 : vec4<bool> = (vec4<f32>(x_933.x, x_933.y, x_933.z, x_933.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_940.x, x_940.y);
    let x_943 : bool = u_xlatb20.y;
    if (x_943) {
      let x_949 : f32 = u_xlat7.w;
      x_945 = x_949;
    } else {
      let x_952 : f32 = u_xlat7.x;
      x_945 = x_952;
    }
    let x_953 : f32 = x_945;
    u_xlat34 = x_953;
    let x_955 : bool = u_xlatb20.x;
    if (x_955) {
      let x_959 : vec4<f32> = u_xlat7;
      x_956 = vec3<f32>(x_959.x, x_959.y, x_959.z);
    } else {
      let x_962 : f32 = u_xlat34;
      x_956 = vec3<f32>(x_962, x_962, x_962);
    }
    let x_964 : vec3<f32> = x_956;
    u_xlat20 = x_964;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_969 : vec3<f32> = u_xlat20;
  let x_971 : vec4<f32> = x_113.x_MainLightColor;
  u_xlat20 = (x_969 * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat1;
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_974.x, x_974.y, x_974.z)), vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_982 : f32 = u_xlat7.x;
  let x_984 : f32 = u_xlat7.x;
  u_xlat7.x = (x_982 + x_984);
  let x_987 : vec4<f32> = u_xlat2;
  let x_989 : vec4<f32> = u_xlat7;
  let x_993 : vec4<f32> = u_xlat1;
  let x_996 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * -(vec3<f32>(x_989.x, x_989.x, x_989.x))) + -(vec3<f32>(x_993.x, x_993.y, x_993.z)));
  let x_997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_1000 : vec4<f32> = u_xlat2;
  let x_1002 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1005, 0.0f, 1.0f);
  let x_1007 : f32 = u_xlat49;
  u_xlat49 = (-(x_1007) + 1.0f);
  let x_1010 : f32 = u_xlat49;
  let x_1011 : f32 = u_xlat49;
  u_xlat49 = (x_1010 * x_1011);
  let x_1013 : f32 = u_xlat49;
  let x_1014 : f32 = u_xlat49;
  u_xlat49 = (x_1013 * x_1014);
  let x_1017 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_1017) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1025 : f32 = u_xlat0.x;
  let x_1027 : f32 = u_xlat8.x;
  u_xlat0.x = (x_1025 * x_1027);
  let x_1031 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1031 * 6.0f);
  let x_1043 : vec4<f32> = u_xlat7;
  let x_1046 : f32 = u_xlat0.x;
  let x_1047 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1043.x, x_1043.y, x_1043.z), x_1046);
  u_xlat8 = x_1047;
  let x_1049 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1049 + -1.0f);
  let x_1053 : f32 = x_625.unity_SpecCube0_HDR.w;
  let x_1055 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1053 * x_1055) + 1.0f);
  let x_1060 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1060, 0.0f);
  let x_1064 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1064);
  let x_1068 : f32 = u_xlat0.x;
  let x_1070 : f32 = x_625.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1068 * x_1070);
  let x_1074 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1074);
  let x_1078 : f32 = u_xlat0.x;
  let x_1080 : f32 = x_625.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1078 * x_1080);
  let x_1083 : vec4<f32> = u_xlat8;
  let x_1085 : vec3<f32> = u_xlat0;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) * vec3<f32>(x_1085.x, x_1085.x, x_1085.x));
  let x_1088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : f32 = u_xlat28;
  let x_1092 : f32 = u_xlat28;
  let x_1096 : vec2<f32> = ((vec2<f32>(x_1090, x_1090) * vec2<f32>(x_1092, x_1092)) + vec2<f32>(-1.0f, 1.0f));
  let x_1097 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1096.x, x_1097.y, x_1096.y);
  let x_1100 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1100);
  let x_1102 : vec4<f32> = u_xlat5;
  let x_1105 : f32 = u_xlat45;
  let x_1107 : vec3<f32> = (-(vec3<f32>(x_1102.x, x_1102.y, x_1102.z)) + vec3<f32>(x_1105, x_1105, x_1105));
  let x_1108 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : f32 = u_xlat49;
  let x_1112 : vec4<f32> = u_xlat8;
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1110, x_1110, x_1110) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z)) + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : f32 = u_xlat28;
  let x_1122 : vec4<f32> = u_xlat8;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120, x_1120, x_1120) * vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec4<f32> = u_xlat7;
  let x_1129 : vec4<f32> = u_xlat8;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat3;
  let x_1136 : vec4<f32> = u_xlat4;
  let x_1139 : vec4<f32> = u_xlat7;
  let x_1141 : vec3<f32> = ((vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(x_1136.x, x_1136.y, x_1136.z)) + vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
  let x_1142 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
  let x_1144 : f32 = u_xlat47;
  let x_1146 : f32 = x_625.unity_LightData.z;
  u_xlat28 = (x_1144 * x_1146);
  let x_1148 : vec4<f32> = u_xlat2;
  let x_1151 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1148.x, x_1148.y, x_1148.z), vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1154, 0.0f, 1.0f);
  let x_1156 : f32 = u_xlat28;
  let x_1157 : f32 = u_xlat45;
  u_xlat28 = (x_1156 * x_1157);
  let x_1159 : f32 = u_xlat28;
  let x_1161 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1159, x_1159, x_1159) * x_1161);
  let x_1163 : vec4<f32> = u_xlat1;
  let x_1166 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1163.x, x_1163.y, x_1163.z) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat7;
  let x_1173 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1171.x, x_1171.y, x_1171.z), vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : f32 = u_xlat28;
  u_xlat28 = max(x_1176, 1.17549435e-38f);
  let x_1179 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1179);
  let x_1181 : f32 = u_xlat28;
  let x_1183 : vec4<f32> = u_xlat7;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1181, x_1181, x_1181) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec4<f32> = u_xlat2;
  let x_1190 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1188.x, x_1188.y, x_1188.z), vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1193, 0.0f, 1.0f);
  let x_1196 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1201, 0.0f, 1.0f);
  let x_1203 : f32 = u_xlat28;
  let x_1204 : f32 = u_xlat28;
  u_xlat28 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat28;
  let x_1208 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1206 * x_1208) + 1.00001001358032226562f);
  let x_1212 : f32 = u_xlat45;
  let x_1213 : f32 = u_xlat45;
  u_xlat45 = (x_1212 * x_1213);
  let x_1215 : f32 = u_xlat28;
  let x_1216 : f32 = u_xlat28;
  u_xlat28 = (x_1215 * x_1216);
  let x_1218 : f32 = u_xlat45;
  u_xlat45 = max(x_1218, 0.10000000149011611938f);
  let x_1221 : f32 = u_xlat28;
  let x_1222 : f32 = u_xlat45;
  u_xlat28 = (x_1221 * x_1222);
  let x_1224 : f32 = u_xlat46;
  let x_1225 : f32 = u_xlat28;
  u_xlat28 = (x_1224 * x_1225);
  let x_1227 : f32 = u_xlat44;
  let x_1228 : f32 = u_xlat28;
  u_xlat28 = (x_1227 / x_1228);
  let x_1230 : vec4<f32> = u_xlat5;
  let x_1232 : f32 = u_xlat28;
  let x_1235 : vec4<f32> = u_xlat4;
  let x_1237 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * vec3<f32>(x_1232, x_1232, x_1232)) + vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1240 : vec3<f32> = u_xlat20;
  let x_1241 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1240 * vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1245 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1247 : f32 = x_625.unity_LightData.y;
  u_xlat28 = min(x_1245, x_1247);
  let x_1251 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1251));
  let x_1255 : f32 = u_xlat6.x;
  let x_1257 : f32 = x_789.x_AdditionalShadowFadeParams.x;
  let x_1260 : f32 = x_789.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1255 * x_1257) + x_1260);
  let x_1262 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1262, 0.0f, 1.0f);
  let x_1266 : f32 = x_862.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1268 : f32 = x_862.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1270 : f32 = x_862.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1272 : f32 = x_862.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1273 : vec4<f32> = vec4<f32>(x_1266, x_1268, x_1270, x_1272);
  let x_1279 : vec4<bool> = (vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1279.x, x_1279.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1291 : u32 = u_xlatu_loop_1;
    let x_1292 : u32 = u_xlatu28;
    if ((x_1291 < x_1292)) {
    } else {
      break;
    }
    let x_1295 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1295 >> 2u);
    let x_1299 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1299 & 3u));
    let x_1302 : u32 = u_xlatu6;
    let x_1305 : vec4<f32> = x_625.unity_LightIndices[bitcast<i32>(x_1302)];
    let x_1315 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1320 : vec4<u32> = indexable[x_1315];
    u_xlat6.x = dot(x_1305, bitcast<vec4<f32>>(x_1320));
    let x_1326 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1326);
    let x_1328 : vec3<f32> = vs_TEXCOORD7;
    let x_1339 : i32 = u_xlati6;
    let x_1341 : vec4<f32> = x_1338.x_AdditionalLightsPosition[x_1339];
    let x_1344 : i32 = u_xlati6;
    let x_1346 : vec4<f32> = x_1338.x_AdditionalLightsPosition[x_1344];
    let x_1348 : vec3<f32> = ((-(x_1328) * vec3<f32>(x_1341.w, x_1341.w, x_1341.w)) + vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
    let x_1349 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
    let x_1352 : vec4<f32> = u_xlat9;
    let x_1354 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1352.x, x_1352.y, x_1352.z), vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
    let x_1357 : f32 = u_xlat35;
    u_xlat35 = max(x_1357, 0.00006103515625f);
    let x_1359 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1359);
    let x_1361 : f32 = u_xlat49;
    let x_1363 : vec4<f32> = u_xlat9;
    let x_1365 : vec3<f32> = (vec3<f32>(x_1361, x_1361, x_1361) * vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
    let x_1366 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
    let x_1369 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1369);
    let x_1371 : f32 = u_xlat35;
    let x_1372 : i32 = u_xlati6;
    let x_1374 : f32 = x_1338.x_AdditionalLightsAttenuation[x_1372].x;
    u_xlat35 = (x_1371 * x_1374);
    let x_1376 : f32 = u_xlat35;
    let x_1378 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1376) * x_1378) + 1.0f);
    let x_1381 : f32 = u_xlat35;
    u_xlat35 = max(x_1381, 0.0f);
    let x_1383 : f32 = u_xlat35;
    let x_1384 : f32 = u_xlat35;
    u_xlat35 = (x_1383 * x_1384);
    let x_1386 : f32 = u_xlat35;
    let x_1387 : f32 = u_xlat50;
    u_xlat35 = (x_1386 * x_1387);
    let x_1389 : i32 = u_xlati6;
    let x_1391 : vec4<f32> = x_1338.x_AdditionalLightsSpotDir[x_1389];
    let x_1393 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1391.x, x_1391.y, x_1391.z), vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : f32 = u_xlat50;
    let x_1397 : i32 = u_xlati6;
    let x_1399 : f32 = x_1338.x_AdditionalLightsAttenuation[x_1397].z;
    let x_1401 : i32 = u_xlati6;
    let x_1403 : f32 = x_1338.x_AdditionalLightsAttenuation[x_1401].w;
    u_xlat50 = ((x_1396 * x_1399) + x_1403);
    let x_1405 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1405, 0.0f, 1.0f);
    let x_1407 : f32 = u_xlat50;
    let x_1408 : f32 = u_xlat50;
    u_xlat50 = (x_1407 * x_1408);
    let x_1410 : f32 = u_xlat35;
    let x_1411 : f32 = u_xlat50;
    u_xlat35 = (x_1410 * x_1411);
    let x_1414 : i32 = u_xlati6;
    let x_1416 : f32 = x_789.x_AdditionalShadowParams[x_1414].w;
    u_xlati50 = i32(x_1416);
    let x_1419 : i32 = u_xlati50;
    u_xlatb51 = (x_1419 >= 0i);
    let x_1421 : bool = u_xlatb51;
    if (x_1421) {
      let x_1425 : i32 = u_xlati6;
      let x_1427 : f32 = x_789.x_AdditionalShadowParams[x_1425].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1427, x_1427, x_1427, x_1427))));
      let x_1431 : bool = u_xlatb51;
      if (x_1431) {
        let x_1436 : vec4<f32> = u_xlat10;
        let x_1439 : vec4<f32> = u_xlat10;
        let x_1442 : vec4<bool> = (abs(vec4<f32>(x_1436.z, x_1436.z, x_1436.y, x_1436.z)) >= abs(vec4<f32>(x_1439.x, x_1439.y, x_1439.x, x_1439.x)));
        let x_1444 : vec3<bool> = vec3<bool>(x_1442.x, x_1442.y, x_1442.z);
        let x_1445 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
        let x_1448 : bool = u_xlatb11.y;
        let x_1450 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1448 & x_1450);
        let x_1452 : vec4<f32> = u_xlat10;
        let x_1455 : vec4<bool> = (-(vec4<f32>(x_1452.z, x_1452.y, x_1452.z, x_1452.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1456 : vec3<bool> = vec3<bool>(x_1455.x, x_1455.y, x_1455.w);
        let x_1457 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1456.x, x_1456.y, x_1457.z, x_1456.z);
        let x_1460 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1460);
        let x_1465 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1465);
        let x_1471 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1471);
        let x_1474 : bool = u_xlatb11.z;
        if (x_1474) {
          let x_1479 : f32 = u_xlat11.y;
          x_1475 = x_1479;
        } else {
          let x_1481 : f32 = u_xlat52;
          x_1475 = x_1481;
        }
        let x_1482 : f32 = x_1475;
        u_xlat52 = x_1482;
        let x_1484 : bool = u_xlatb51;
        if (x_1484) {
          let x_1489 : f32 = u_xlat11.x;
          x_1485 = x_1489;
        } else {
          let x_1491 : f32 = u_xlat52;
          x_1485 = x_1491;
        }
        let x_1492 : f32 = x_1485;
        u_xlat51 = x_1492;
        let x_1493 : i32 = u_xlati6;
        let x_1495 : f32 = x_789.x_AdditionalShadowParams[x_1493].w;
        u_xlat52 = trunc(x_1495);
        let x_1497 : f32 = u_xlat51;
        let x_1498 : f32 = u_xlat52;
        u_xlat51 = (x_1497 + x_1498);
        let x_1500 : f32 = u_xlat51;
        u_xlati50 = i32(x_1500);
      }
      let x_1502 : i32 = u_xlati50;
      u_xlati50 = (x_1502 << bitcast<u32>(2i));
      let x_1504 : vec3<f32> = vs_TEXCOORD7;
      let x_1506 : i32 = u_xlati50;
      let x_1509 : i32 = u_xlati50;
      let x_1513 : vec4<f32> = x_789.x_AdditionalLightsWorldToShadow[((x_1506 + 1i) / 4i)][((x_1509 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1504.y, x_1504.y, x_1504.y, x_1504.y) * x_1513);
      let x_1515 : i32 = u_xlati50;
      let x_1517 : i32 = u_xlati50;
      let x_1520 : vec4<f32> = x_789.x_AdditionalLightsWorldToShadow[(x_1515 / 4i)][(x_1517 % 4i)];
      let x_1521 : vec3<f32> = vs_TEXCOORD7;
      let x_1524 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1520 * vec4<f32>(x_1521.x, x_1521.x, x_1521.x, x_1521.x)) + x_1524);
      let x_1526 : i32 = u_xlati50;
      let x_1529 : i32 = u_xlati50;
      let x_1533 : vec4<f32> = x_789.x_AdditionalLightsWorldToShadow[((x_1526 + 2i) / 4i)][((x_1529 + 2i) % 4i)];
      let x_1534 : vec3<f32> = vs_TEXCOORD7;
      let x_1537 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1533 * vec4<f32>(x_1534.z, x_1534.z, x_1534.z, x_1534.z)) + x_1537);
      let x_1539 : vec4<f32> = u_xlat11;
      let x_1540 : i32 = u_xlati50;
      let x_1543 : i32 = u_xlati50;
      let x_1547 : vec4<f32> = x_789.x_AdditionalLightsWorldToShadow[((x_1540 + 3i) / 4i)][((x_1543 + 3i) % 4i)];
      u_xlat11 = (x_1539 + x_1547);
      let x_1549 : vec4<f32> = u_xlat11;
      let x_1551 : vec4<f32> = u_xlat11;
      let x_1553 : vec3<f32> = (vec3<f32>(x_1549.x, x_1549.y, x_1549.z) / vec3<f32>(x_1551.w, x_1551.w, x_1551.w));
      let x_1554 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
      let x_1557 : vec4<f32> = u_xlat11;
      let x_1558 : vec2<f32> = vec2<f32>(x_1557.x, x_1557.y);
      let x_1560 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
      let x_1568 : vec3<f32> = txVec1;
      let x_1570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1568.xy, x_1568.z);
      u_xlat50 = x_1570;
      let x_1571 : i32 = u_xlati6;
      let x_1573 : f32 = x_789.x_AdditionalShadowParams[x_1571].x;
      u_xlat51 = (1.0f + -(x_1573));
      let x_1576 : f32 = u_xlat50;
      let x_1577 : i32 = u_xlati6;
      let x_1579 : f32 = x_789.x_AdditionalShadowParams[x_1577].x;
      let x_1581 : f32 = u_xlat51;
      u_xlat50 = ((x_1576 * x_1579) + x_1581);
      let x_1584 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1584);
      let x_1588 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1588 >= 1.0f);
      let x_1590 : bool = u_xlatb51;
      let x_1591 : bool = u_xlatb52;
      u_xlatb51 = (x_1590 | x_1591);
      let x_1593 : bool = u_xlatb51;
      let x_1594 : f32 = u_xlat50;
      u_xlat50 = select(x_1594, 1.0f, x_1593);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1597 : f32 = u_xlat50;
    u_xlat51 = (-(x_1597) + 1.0f);
    let x_1600 : f32 = u_xlat45;
    let x_1601 : f32 = u_xlat51;
    let x_1603 : f32 = u_xlat50;
    u_xlat50 = ((x_1600 * x_1601) + x_1603);
    let x_1606 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1606 & 31i)));
    let x_1609 : i32 = u_xlati51;
    let x_1612 : f32 = x_862.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1609) & bitcast<u32>(x_1612)));
    let x_1616 : i32 = u_xlati51;
    if ((x_1616 != 0i)) {
      let x_1620 : i32 = u_xlati6;
      let x_1622 : f32 = x_862.x_AdditionalLightsLightTypes[x_1620].el;
      u_xlati51 = i32(x_1622);
      let x_1625 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1625 != 0i));
      let x_1629 : i32 = u_xlati6;
      u_xlati11 = (x_1629 << bitcast<u32>(2i));
      let x_1631 : i32 = u_xlati52;
      if ((x_1631 != 0i)) {
        let x_1636 : vec3<f32> = vs_TEXCOORD7;
        let x_1638 : i32 = u_xlati11;
        let x_1641 : i32 = u_xlati11;
        let x_1645 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1638 + 1i) / 4i)][((x_1641 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1636.y, x_1636.y, x_1636.y) * vec3<f32>(x_1645.x, x_1645.y, x_1645.w));
        let x_1648 : i32 = u_xlati11;
        let x_1650 : i32 = u_xlati11;
        let x_1653 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[(x_1648 / 4i)][(x_1650 % 4i)];
        let x_1655 : vec3<f32> = vs_TEXCOORD7;
        let x_1658 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1653.x, x_1653.y, x_1653.w) * vec3<f32>(x_1655.x, x_1655.x, x_1655.x)) + x_1658);
        let x_1660 : i32 = u_xlati11;
        let x_1663 : i32 = u_xlati11;
        let x_1667 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1660 + 2i) / 4i)][((x_1663 + 2i) % 4i)];
        let x_1669 : vec3<f32> = vs_TEXCOORD7;
        let x_1672 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1667.x, x_1667.y, x_1667.w) * vec3<f32>(x_1669.z, x_1669.z, x_1669.z)) + x_1672);
        let x_1674 : vec3<f32> = u_xlat25;
        let x_1675 : i32 = u_xlati11;
        let x_1678 : i32 = u_xlati11;
        let x_1682 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1675 + 3i) / 4i)][((x_1678 + 3i) % 4i)];
        u_xlat25 = (x_1674 + vec3<f32>(x_1682.x, x_1682.y, x_1682.w));
        let x_1685 : vec3<f32> = u_xlat25;
        let x_1687 : vec3<f32> = u_xlat25;
        let x_1689 : vec2<f32> = (vec2<f32>(x_1685.x, x_1685.y) / vec2<f32>(x_1687.z, x_1687.z));
        let x_1690 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1689.x, x_1689.y, x_1690.z);
        let x_1692 : vec3<f32> = u_xlat25;
        let x_1695 : vec2<f32> = ((vec2<f32>(x_1692.x, x_1692.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1696 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1695.x, x_1695.y, x_1696.z);
        let x_1698 : vec3<f32> = u_xlat25;
        let x_1702 : vec2<f32> = clamp(vec2<f32>(x_1698.x, x_1698.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1703 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1702.x, x_1702.y, x_1703.z);
        let x_1705 : i32 = u_xlati6;
        let x_1707 : vec4<f32> = x_862.x_AdditionalLightsCookieAtlasUVRects[x_1705];
        let x_1709 : vec3<f32> = u_xlat25;
        let x_1712 : i32 = u_xlati6;
        let x_1714 : vec4<f32> = x_862.x_AdditionalLightsCookieAtlasUVRects[x_1712];
        let x_1716 : vec2<f32> = ((vec2<f32>(x_1707.x, x_1707.y) * vec2<f32>(x_1709.x, x_1709.y)) + vec2<f32>(x_1714.z, x_1714.w));
        let x_1717 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1716.x, x_1716.y, x_1717.z);
      } else {
        let x_1720 : i32 = u_xlati51;
        u_xlatb51 = (x_1720 == 1i);
        let x_1722 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1722);
        let x_1724 : i32 = u_xlati51;
        if ((x_1724 != 0i)) {
          let x_1728 : vec3<f32> = vs_TEXCOORD7;
          let x_1730 : i32 = u_xlati11;
          let x_1733 : i32 = u_xlati11;
          let x_1737 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1730 + 1i) / 4i)][((x_1733 + 1i) % 4i)];
          let x_1739 : vec2<f32> = (vec2<f32>(x_1728.y, x_1728.y) * vec2<f32>(x_1737.x, x_1737.y));
          let x_1740 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1739.x, x_1739.y, x_1740.z, x_1740.w);
          let x_1742 : i32 = u_xlati11;
          let x_1744 : i32 = u_xlati11;
          let x_1747 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[(x_1742 / 4i)][(x_1744 % 4i)];
          let x_1749 : vec3<f32> = vs_TEXCOORD7;
          let x_1752 : vec4<f32> = u_xlat12;
          let x_1754 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1749.x, x_1749.x)) + vec2<f32>(x_1752.x, x_1752.y));
          let x_1755 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
          let x_1757 : i32 = u_xlati11;
          let x_1760 : i32 = u_xlati11;
          let x_1764 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1757 + 2i) / 4i)][((x_1760 + 2i) % 4i)];
          let x_1766 : vec3<f32> = vs_TEXCOORD7;
          let x_1769 : vec4<f32> = u_xlat12;
          let x_1771 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1766.z, x_1766.z)) + vec2<f32>(x_1769.x, x_1769.y));
          let x_1772 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
          let x_1774 : vec4<f32> = u_xlat12;
          let x_1776 : i32 = u_xlati11;
          let x_1779 : i32 = u_xlati11;
          let x_1783 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1776 + 3i) / 4i)][((x_1779 + 3i) % 4i)];
          let x_1785 : vec2<f32> = (vec2<f32>(x_1774.x, x_1774.y) + vec2<f32>(x_1783.x, x_1783.y));
          let x_1786 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1785.x, x_1785.y, x_1786.z, x_1786.w);
          let x_1788 : vec4<f32> = u_xlat12;
          let x_1791 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1792 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
          let x_1794 : vec4<f32> = u_xlat12;
          let x_1796 : vec2<f32> = fract(vec2<f32>(x_1794.x, x_1794.y));
          let x_1797 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
          let x_1799 : i32 = u_xlati6;
          let x_1801 : vec4<f32> = x_862.x_AdditionalLightsCookieAtlasUVRects[x_1799];
          let x_1803 : vec4<f32> = u_xlat12;
          let x_1806 : i32 = u_xlati6;
          let x_1808 : vec4<f32> = x_862.x_AdditionalLightsCookieAtlasUVRects[x_1806];
          let x_1810 : vec2<f32> = ((vec2<f32>(x_1801.x, x_1801.y) * vec2<f32>(x_1803.x, x_1803.y)) + vec2<f32>(x_1808.z, x_1808.w));
          let x_1811 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1810.x, x_1810.y, x_1811.z);
        } else {
          let x_1814 : vec3<f32> = vs_TEXCOORD7;
          let x_1816 : i32 = u_xlati11;
          let x_1819 : i32 = u_xlati11;
          let x_1823 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1816 + 1i) / 4i)][((x_1819 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1814.y, x_1814.y, x_1814.y, x_1814.y) * x_1823);
          let x_1825 : i32 = u_xlati11;
          let x_1827 : i32 = u_xlati11;
          let x_1830 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[(x_1825 / 4i)][(x_1827 % 4i)];
          let x_1831 : vec3<f32> = vs_TEXCOORD7;
          let x_1834 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1830 * vec4<f32>(x_1831.x, x_1831.x, x_1831.x, x_1831.x)) + x_1834);
          let x_1836 : i32 = u_xlati11;
          let x_1839 : i32 = u_xlati11;
          let x_1843 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1836 + 2i) / 4i)][((x_1839 + 2i) % 4i)];
          let x_1844 : vec3<f32> = vs_TEXCOORD7;
          let x_1847 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1843 * vec4<f32>(x_1844.z, x_1844.z, x_1844.z, x_1844.z)) + x_1847);
          let x_1849 : vec4<f32> = u_xlat12;
          let x_1850 : i32 = u_xlati11;
          let x_1853 : i32 = u_xlati11;
          let x_1857 : vec4<f32> = x_862.x_AdditionalLightsWorldToLights[((x_1850 + 3i) / 4i)][((x_1853 + 3i) % 4i)];
          u_xlat12 = (x_1849 + x_1857);
          let x_1859 : vec4<f32> = u_xlat12;
          let x_1861 : vec4<f32> = u_xlat12;
          let x_1863 : vec3<f32> = (vec3<f32>(x_1859.x, x_1859.y, x_1859.z) / vec3<f32>(x_1861.w, x_1861.w, x_1861.w));
          let x_1864 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
          let x_1866 : vec4<f32> = u_xlat12;
          let x_1868 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
          let x_1871 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1871);
          let x_1873 : f32 = u_xlat51;
          let x_1875 : vec4<f32> = u_xlat12;
          let x_1877 : vec3<f32> = (vec3<f32>(x_1873, x_1873, x_1873) * vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
          let x_1878 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
          let x_1880 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1880.x, x_1880.y, x_1880.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1885 : f32 = u_xlat51;
          u_xlat51 = max(x_1885, 0.00000099999999747524f);
          let x_1888 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1888);
          let x_1890 : f32 = u_xlat51;
          let x_1892 : vec4<f32> = u_xlat12;
          let x_1894 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1892.z, x_1892.x, x_1892.y));
          let x_1895 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
          let x_1898 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1898);
          let x_1902 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1902, 0.0f, 1.0f);
          let x_1905 : vec4<f32> = u_xlat13;
          let x_1907 : vec4<bool> = (vec4<f32>(x_1905.y, x_1905.y, x_1905.y, x_1905.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1908 : vec2<bool> = vec2<bool>(x_1907.x, x_1907.w);
          let x_1909 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1908.x, x_1909.y, x_1909.z, x_1908.y);
          let x_1912 : bool = u_xlatb11.x;
          if (x_1912) {
            let x_1917 : f32 = u_xlat13.x;
            x_1913 = x_1917;
          } else {
            let x_1920 : f32 = u_xlat13.x;
            x_1913 = -(x_1920);
          }
          let x_1922 : f32 = x_1913;
          u_xlat11.x = x_1922;
          let x_1925 : bool = u_xlatb11.w;
          if (x_1925) {
            let x_1930 : f32 = u_xlat13.x;
            x_1926 = x_1930;
          } else {
            let x_1933 : f32 = u_xlat13.x;
            x_1926 = -(x_1933);
          }
          let x_1935 : f32 = x_1926;
          u_xlat11.w = x_1935;
          let x_1937 : vec4<f32> = u_xlat12;
          let x_1939 : f32 = u_xlat51;
          let x_1942 : vec4<f32> = u_xlat11;
          let x_1944 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * vec2<f32>(x_1939, x_1939)) + vec2<f32>(x_1942.x, x_1942.w));
          let x_1945 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1944.x, x_1945.y, x_1945.z, x_1944.y);
          let x_1947 : vec4<f32> = u_xlat11;
          let x_1950 : vec2<f32> = ((vec2<f32>(x_1947.x, x_1947.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1951 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1950.x, x_1951.y, x_1951.z, x_1950.y);
          let x_1953 : vec4<f32> = u_xlat11;
          let x_1957 : vec2<f32> = clamp(vec2<f32>(x_1953.x, x_1953.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1958 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1957.x, x_1958.y, x_1958.z, x_1957.y);
          let x_1960 : i32 = u_xlati6;
          let x_1962 : vec4<f32> = x_862.x_AdditionalLightsCookieAtlasUVRects[x_1960];
          let x_1964 : vec4<f32> = u_xlat11;
          let x_1967 : i32 = u_xlati6;
          let x_1969 : vec4<f32> = x_862.x_AdditionalLightsCookieAtlasUVRects[x_1967];
          let x_1971 : vec2<f32> = ((vec2<f32>(x_1962.x, x_1962.y) * vec2<f32>(x_1964.x, x_1964.w)) + vec2<f32>(x_1969.z, x_1969.w));
          let x_1972 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1971.x, x_1971.y, x_1972.z);
        }
      }
      let x_1979 : vec3<f32> = u_xlat25;
      let x_1981 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1979.x, x_1979.y), 0.0f);
      u_xlat11 = x_1981;
      let x_1983 : bool = u_xlatb7.y;
      if (x_1983) {
        let x_1988 : f32 = u_xlat11.w;
        x_1984 = x_1988;
      } else {
        let x_1991 : f32 = u_xlat11.x;
        x_1984 = x_1991;
      }
      let x_1992 : f32 = x_1984;
      u_xlat51 = x_1992;
      let x_1994 : bool = u_xlatb7.x;
      if (x_1994) {
        let x_1998 : vec4<f32> = u_xlat11;
        x_1995 = vec3<f32>(x_1998.x, x_1998.y, x_1998.z);
      } else {
        let x_2001 : f32 = u_xlat51;
        x_1995 = vec3<f32>(x_2001, x_2001, x_2001);
      }
      let x_2003 : vec3<f32> = x_1995;
      let x_2004 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2010 : vec4<f32> = u_xlat11;
    let x_2012 : i32 = u_xlati6;
    let x_2014 : vec4<f32> = x_1338.x_AdditionalLightsColor[x_2012];
    let x_2016 : vec3<f32> = (vec3<f32>(x_2010.x, x_2010.y, x_2010.z) * vec3<f32>(x_2014.x, x_2014.y, x_2014.z));
    let x_2017 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
    let x_2019 : f32 = u_xlat35;
    let x_2020 : f32 = u_xlat50;
    u_xlat6.x = (x_2019 * x_2020);
    let x_2023 : vec4<f32> = u_xlat2;
    let x_2025 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_2023.x, x_2023.y, x_2023.z), vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2028, 0.0f, 1.0f);
    let x_2031 : f32 = u_xlat6.x;
    let x_2032 : f32 = u_xlat35;
    u_xlat6.x = (x_2031 * x_2032);
    let x_2035 : vec4<f32> = u_xlat6;
    let x_2037 : vec4<f32> = u_xlat11;
    let x_2039 : vec3<f32> = (vec3<f32>(x_2035.x, x_2035.x, x_2035.x) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
    let x_2040 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
    let x_2042 : vec4<f32> = u_xlat9;
    let x_2044 : f32 = u_xlat49;
    let x_2047 : vec4<f32> = u_xlat1;
    let x_2049 : vec3<f32> = ((vec3<f32>(x_2042.x, x_2042.y, x_2042.z) * vec3<f32>(x_2044, x_2044, x_2044)) + vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
    let x_2050 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
    let x_2052 : vec4<f32> = u_xlat9;
    let x_2054 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2052.x, x_2052.y, x_2052.z), vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
    let x_2059 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2059, 1.17549435e-38f);
    let x_2063 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2063);
    let x_2066 : vec4<f32> = u_xlat6;
    let x_2068 : vec4<f32> = u_xlat9;
    let x_2070 : vec3<f32> = (vec3<f32>(x_2066.x, x_2066.x, x_2066.x) * vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
    let x_2071 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
    let x_2073 : vec4<f32> = u_xlat2;
    let x_2075 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2073.x, x_2073.y, x_2073.z), vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
    let x_2080 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2080, 0.0f, 1.0f);
    let x_2083 : vec4<f32> = u_xlat10;
    let x_2085 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2088, 0.0f, 1.0f);
    let x_2091 : f32 = u_xlat6.x;
    let x_2093 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2091 * x_2093);
    let x_2097 : f32 = u_xlat6.x;
    let x_2099 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_2097 * x_2099) + 1.00001001358032226562f);
    let x_2103 : f32 = u_xlat35;
    let x_2104 : f32 = u_xlat35;
    u_xlat35 = (x_2103 * x_2104);
    let x_2107 : f32 = u_xlat6.x;
    let x_2109 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2107 * x_2109);
    let x_2112 : f32 = u_xlat35;
    u_xlat35 = max(x_2112, 0.10000000149011611938f);
    let x_2115 : f32 = u_xlat6.x;
    let x_2116 : f32 = u_xlat35;
    u_xlat6.x = (x_2115 * x_2116);
    let x_2119 : f32 = u_xlat46;
    let x_2121 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2119 * x_2121);
    let x_2124 : f32 = u_xlat44;
    let x_2126 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2124 / x_2126);
    let x_2129 : vec4<f32> = u_xlat5;
    let x_2131 : vec4<f32> = u_xlat6;
    let x_2134 : vec4<f32> = u_xlat4;
    let x_2136 : vec3<f32> = ((vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * vec3<f32>(x_2131.x, x_2131.x, x_2131.x)) + vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
    let x_2139 : vec4<f32> = u_xlat9;
    let x_2141 : vec4<f32> = u_xlat11;
    let x_2144 : vec4<f32> = u_xlat8;
    let x_2146 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * vec3<f32>(x_2141.x, x_2141.y, x_2141.z)) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
    let x_2147 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);

    continuing {
      let x_2149 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2149 + bitcast<u32>(1i));
    }
  }
  let x_2151 : vec4<f32> = u_xlat3;
  let x_2153 : f32 = u_xlat14;
  let x_2156 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_2151.x, x_2151.y, x_2151.z) * vec3<f32>(x_2153, x_2153, x_2153)) + x_2156);
  let x_2158 : vec4<f32> = u_xlat8;
  let x_2160 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2158.x, x_2158.y, x_2158.z) + x_2160);
  let x_2162 : f32 = u_xlat42;
  let x_2164 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2162, x_2162, x_2162) * x_2164);
  let x_2166 : f32 = u_xlat43;
  let x_2167 : f32 = u_xlat43;
  u_xlat42 = (x_2166 * -(x_2167));
  let x_2170 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2170);
  let x_2174 : vec3<f32> = u_xlat0;
  let x_2175 : f32 = u_xlat42;
  let x_2177 : vec3<f32> = (x_2174 * vec3<f32>(x_2175, x_2175, x_2175));
  let x_2178 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


