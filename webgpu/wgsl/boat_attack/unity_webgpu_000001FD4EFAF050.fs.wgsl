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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat44 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlati44 : i32;

@group(1) @binding(2) var<uniform> x_781 : UnityPerDraw;

var<private> u_xlat45 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1006 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_1501 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var txVec0 : vec3<f32>;
  var x_959 : f32;
  var x_1089 : f32;
  var x_1100 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1631 : f32;
  var x_1641 : f32;
  var txVec1 : vec3<f32>;
  var x_2062 : f32;
  var x_2075 : f32;
  var x_2123 : f32;
  var x_2134 : vec3<f32>;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb43;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_277 : f32 = u_xlat43;
  u_xlat43 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat43;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat15;
  let x_524 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat15;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_541 : f32 = u_xlat15.x;
    x_537 = x_541;
  } else {
    let x_544 : f32 = x_111.unity_MatrixV[0i].z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat2.x = x_545;
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat15.y;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_111.unity_MatrixV[1i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.y = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat15.z;
    x_560 = x_564;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[2i].z;
    x_560 = x_568;
  }
  let x_569 : f32 = x_560;
  u_xlat2.z = x_569;
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_577);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582);
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_596 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres0;
  let x_599 : vec3<f32> = (x_586 + -(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres1;
  let x_607 : vec3<f32> = (x_602 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_613 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres2;
  let x_616 : vec3<f32> = (x_610 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres3;
  let x_624 : vec3<f32> = (x_619 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = x_594.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_653 < x_655);
  let x_658 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_658);
  let x_662 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_662);
  let x_666 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_674);
  let x_679 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_679);
  let x_683 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.y, x_688.z, x_688.w));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_696.z);
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat44;
  u_xlat44 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat44;
  u_xlatu44 = u32(x_710);
  let x_714 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati44;
  let x_722 : i32 = u_xlati44;
  let x_726 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati44;
  let x_733 : i32 = u_xlati44;
  let x_736 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati44;
  let x_749 : i32 = u_xlati44;
  let x_753 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati44;
  let x_768 : i32 = u_xlati44;
  let x_772 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  u_xlat1.w = 1.0f;
  let x_783 : vec4<f32> = x_781.unity_SHAr;
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_783, x_784);
  let x_788 : vec4<f32> = x_781.unity_SHAg;
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_788, x_789);
  let x_793 : vec4<f32> = x_781.unity_SHAb;
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_793, x_794);
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_797.y, x_797.z, x_797.z, x_797.x) * vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.z));
  let x_803 : vec4<f32> = x_781.unity_SHBr;
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_803, x_804);
  let x_808 : vec4<f32> = x_781.unity_SHBg;
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_808, x_809);
  let x_813 : vec4<f32> = x_781.unity_SHBb;
  let x_814 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_813, x_814);
  let x_818 : f32 = u_xlat1.y;
  let x_820 : f32 = u_xlat1.y;
  u_xlat43 = (x_818 * x_820);
  let x_823 : f32 = u_xlat1.x;
  let x_825 : f32 = u_xlat1.x;
  let x_827 : f32 = u_xlat43;
  u_xlat43 = ((x_823 * x_825) + -(x_827));
  let x_832 : vec4<f32> = x_781.unity_SHC;
  let x_834 : f32 = u_xlat43;
  let x_837 : vec4<f32> = u_xlat7;
  let x_839 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834, x_834, x_834)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat4;
  let x_844 : vec4<f32> = u_xlat6;
  let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat4;
  let x_851 : vec3<f32> = max(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_855) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_860 : f32 = u_xlat43;
  u_xlat44 = (-(x_860) + 1.0f);
  let x_863 : f32 = u_xlat43;
  let x_865 : vec4<f32> = u_xlat5;
  let x_867 : vec3<f32> = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.y, x_870.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec3<f32> = u_xlat0;
  let x_879 : vec4<f32> = u_xlat5;
  let x_884 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_885 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : f32 = u_xlat28;
  u_xlat0.x = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  let x_894 : f32 = u_xlat0.x;
  u_xlat43 = (x_892 * x_894);
  let x_896 : f32 = u_xlat43;
  u_xlat43 = max(x_896, 0.0078125f);
  let x_900 : f32 = u_xlat43;
  let x_901 : f32 = u_xlat43;
  u_xlat45 = (x_900 * x_901);
  let x_903 : f32 = u_xlat28;
  let x_904 : f32 = u_xlat44;
  u_xlat28 = (x_903 + x_904);
  let x_906 : f32 = u_xlat28;
  u_xlat28 = clamp(x_906, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat43;
  u_xlat44 = ((x_908 * 4.0f) + 2.0f);
  let x_911 : f32 = u_xlat14;
  u_xlat14 = min(x_911, 1.0f);
  let x_915 : vec4<f32> = u_xlat3;
  let x_916 : vec2<f32> = vec2<f32>(x_915.x, x_915.y);
  let x_918 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_916.x, x_916.y, x_918);
  let x_930 : vec3<f32> = txVec0;
  let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
  u_xlat3.x = x_932;
  let x_936 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_936) + 1.0f);
  let x_940 : f32 = u_xlat3.x;
  let x_942 : f32 = x_594.x_MainLightShadowParams.x;
  let x_944 : f32 = u_xlat17;
  u_xlat3.x = ((x_940 * x_942) + x_944);
  let x_949 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_949);
  let x_953 : f32 = u_xlat3.z;
  u_xlatb31 = (x_953 >= 1.0f);
  let x_955 : bool = u_xlatb31;
  let x_956 : bool = u_xlatb17;
  u_xlatb17 = (x_955 | x_956);
  let x_958 : bool = u_xlatb17;
  if (x_958) {
    x_959 = 1.0f;
  } else {
    let x_964 : f32 = u_xlat3.x;
    x_959 = x_964;
  }
  let x_965 : f32 = x_959;
  u_xlat3.x = x_965;
  let x_967 : vec3<f32> = vs_TEXCOORD7;
  let x_969 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_971 : vec3<f32> = (x_967 + -(x_969));
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat7;
  let x_976 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_980 : f32 = u_xlat17;
  let x_982 : f32 = x_594.x_MainLightShadowParams.z;
  let x_985 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat31 = ((x_980 * x_982) + x_985);
  let x_987 : f32 = u_xlat31;
  u_xlat31 = clamp(x_987, 0.0f, 1.0f);
  let x_991 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_991) + 1.0f);
  let x_994 : f32 = u_xlat31;
  let x_995 : f32 = u_xlat46;
  let x_998 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_994 * x_995) + x_998);
  let x_1008 : f32 = x_1006.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1008 == -1.0f));
  let x_1010 : bool = u_xlatb31;
  if (x_1010) {
    let x_1013 : vec3<f32> = vs_TEXCOORD7;
    let x_1016 : vec4<f32> = x_1006.x_MainLightWorldToLight[1i];
    let x_1018 : vec2<f32> = (vec2<f32>(x_1013.y, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y));
    let x_1019 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
    let x_1022 : vec4<f32> = x_1006.x_MainLightWorldToLight[0i];
    let x_1024 : vec3<f32> = vs_TEXCOORD7;
    let x_1027 : vec4<f32> = u_xlat7;
    let x_1029 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1024.x, x_1024.x)) + vec2<f32>(x_1027.x, x_1027.y));
    let x_1030 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
    let x_1033 : vec4<f32> = x_1006.x_MainLightWorldToLight[2i];
    let x_1035 : vec3<f32> = vs_TEXCOORD7;
    let x_1038 : vec4<f32> = u_xlat7;
    let x_1040 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1035.z, x_1035.z)) + vec2<f32>(x_1038.x, x_1038.y));
    let x_1041 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
    let x_1043 : vec4<f32> = u_xlat7;
    let x_1046 : vec4<f32> = x_1006.x_MainLightWorldToLight[3i];
    let x_1048 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.y) + vec2<f32>(x_1046.x, x_1046.y));
    let x_1049 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
    let x_1051 : vec4<f32> = u_xlat7;
    let x_1054 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1055 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
    let x_1062 : vec4<f32> = u_xlat7;
    let x_1065 : f32 = x_111.x_GlobalMipBias.x;
    let x_1066 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1062.x, x_1062.y), x_1065);
    u_xlat7 = x_1066;
    let x_1071 : f32 = x_1006.x_MainLightCookieTextureFormat;
    let x_1073 : f32 = x_1006.x_MainLightCookieTextureFormat;
    let x_1075 : f32 = x_1006.x_MainLightCookieTextureFormat;
    let x_1077 : f32 = x_1006.x_MainLightCookieTextureFormat;
    let x_1078 : vec4<f32> = vec4<f32>(x_1071, x_1073, x_1075, x_1077);
    let x_1085 : vec4<bool> = (vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1085.x, x_1085.y);
    let x_1088 : bool = u_xlatb8.y;
    if (x_1088) {
      let x_1093 : f32 = u_xlat7.w;
      x_1089 = x_1093;
    } else {
      let x_1096 : f32 = u_xlat7.x;
      x_1089 = x_1096;
    }
    let x_1097 : f32 = x_1089;
    u_xlat31 = x_1097;
    let x_1099 : bool = u_xlatb8.x;
    if (x_1099) {
      let x_1103 : vec4<f32> = u_xlat7;
      x_1100 = vec3<f32>(x_1103.x, x_1103.y, x_1103.z);
    } else {
      let x_1106 : f32 = u_xlat31;
      x_1100 = vec3<f32>(x_1106, x_1106, x_1106);
    }
    let x_1108 : vec3<f32> = x_1100;
    let x_1109 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1115 : vec4<f32> = u_xlat7;
  let x_1118 : vec4<f32> = x_111.x_MainLightColor;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec3<f32> = u_xlat2;
  let x_1125 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1123), vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : f32 = u_xlat31;
  let x_1129 : f32 = u_xlat31;
  u_xlat31 = (x_1128 + x_1129);
  let x_1131 : vec4<f32> = u_xlat1;
  let x_1133 : f32 = u_xlat31;
  let x_1137 : vec3<f32> = u_xlat2;
  let x_1139 : vec3<f32> = ((vec3<f32>(x_1131.x, x_1131.y, x_1131.z) * -(vec3<f32>(x_1133, x_1133, x_1133))) + -(x_1137));
  let x_1140 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec4<f32> = u_xlat1;
  let x_1144 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1144);
  let x_1146 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1146, 0.0f, 1.0f);
  let x_1148 : f32 = u_xlat31;
  u_xlat31 = (-(x_1148) + 1.0f);
  let x_1151 : f32 = u_xlat31;
  let x_1152 : f32 = u_xlat31;
  u_xlat31 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat31;
  let x_1155 : f32 = u_xlat31;
  u_xlat31 = (x_1154 * x_1155);
  let x_1158 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1158) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1165 : f32 = u_xlat0.x;
  let x_1166 : f32 = u_xlat46;
  u_xlat0.x = (x_1165 * x_1166);
  let x_1170 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1170 * 6.0f);
  let x_1182 : vec4<f32> = u_xlat8;
  let x_1185 : f32 = u_xlat0.x;
  let x_1186 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1182.x, x_1182.y, x_1182.z), x_1185);
  u_xlat8 = x_1186;
  let x_1188 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1188 + -1.0f);
  let x_1192 : f32 = x_781.unity_SpecCube0_HDR.w;
  let x_1194 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1192 * x_1194) + 1.0f);
  let x_1199 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1199, 0.0f);
  let x_1203 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1203);
  let x_1207 : f32 = u_xlat0.x;
  let x_1209 : f32 = x_781.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1207 * x_1209);
  let x_1213 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1213);
  let x_1217 : f32 = u_xlat0.x;
  let x_1219 : f32 = x_781.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1217 * x_1219);
  let x_1222 : vec4<f32> = u_xlat8;
  let x_1224 : vec3<f32> = u_xlat0;
  let x_1226 : vec3<f32> = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) * vec3<f32>(x_1224.x, x_1224.x, x_1224.x));
  let x_1227 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : f32 = u_xlat43;
  let x_1231 : f32 = u_xlat43;
  let x_1235 : vec2<f32> = ((vec2<f32>(x_1229, x_1229) * vec2<f32>(x_1231, x_1231)) + vec2<f32>(-1.0f, 1.0f));
  let x_1236 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
  let x_1239 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1239);
  let x_1243 : vec4<f32> = u_xlat5;
  let x_1246 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1243.x, x_1243.y, x_1243.z)) + vec3<f32>(x_1246, x_1246, x_1246));
  let x_1249 : f32 = u_xlat31;
  let x_1251 : vec3<f32> = u_xlat23;
  let x_1253 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1249, x_1249, x_1249) * x_1251) + vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : vec3<f32> = u_xlat0;
  let x_1258 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1256.x, x_1256.x, x_1256.x) * x_1258);
  let x_1260 : vec4<f32> = u_xlat8;
  let x_1262 : vec3<f32> = u_xlat23;
  let x_1263 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * x_1262);
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat4;
  let x_1268 : vec4<f32> = u_xlat6;
  let x_1271 : vec4<f32> = u_xlat8;
  let x_1273 : vec3<f32> = ((vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z)) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1277 : f32 = u_xlat3.x;
  let x_1279 : f32 = x_781.unity_LightData.z;
  u_xlat0.x = (x_1277 * x_1279);
  let x_1282 : vec4<f32> = u_xlat1;
  let x_1285 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1288, 0.0f, 1.0f);
  let x_1290 : f32 = u_xlat28;
  let x_1292 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1290 * x_1292);
  let x_1295 : vec3<f32> = u_xlat0;
  let x_1297 : vec4<f32> = u_xlat7;
  let x_1299 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.x, x_1295.x) * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1302 : vec3<f32> = u_xlat2;
  let x_1304 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1306 : vec3<f32> = (x_1302 + vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat8;
  let x_1311 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1309.x, x_1309.y, x_1309.z), vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1316 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1316, 1.17549435e-38f);
  let x_1321 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1321);
  let x_1324 : vec3<f32> = u_xlat0;
  let x_1326 : vec4<f32> = u_xlat8;
  let x_1328 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.x, x_1324.x) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1331 : vec4<f32> = u_xlat1;
  let x_1333 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1338, 0.0f, 1.0f);
  let x_1342 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1344 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1342.x, x_1342.y, x_1342.z), vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1349 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1349, 0.0f, 1.0f);
  let x_1352 : vec3<f32> = u_xlat0;
  let x_1354 : vec3<f32> = u_xlat0;
  let x_1356 : vec2<f32> = (vec2<f32>(x_1352.x, x_1352.z) * vec2<f32>(x_1354.x, x_1354.z));
  let x_1357 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1356.x, x_1357.y, x_1356.y);
  let x_1360 : f32 = u_xlat0.x;
  let x_1362 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1360 * x_1362) + 1.00001001358032226562f);
  let x_1368 : f32 = u_xlat0.x;
  let x_1370 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1368 * x_1370);
  let x_1374 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1374, 0.10000000149011611938f);
  let x_1377 : f32 = u_xlat28;
  let x_1379 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1377 * x_1379);
  let x_1382 : f32 = u_xlat44;
  let x_1384 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1382 * x_1384);
  let x_1387 : f32 = u_xlat45;
  let x_1389 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1387 / x_1389);
  let x_1392 : vec4<f32> = u_xlat5;
  let x_1394 : vec3<f32> = u_xlat0;
  let x_1397 : vec4<f32> = u_xlat6;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(x_1394.x, x_1394.x, x_1394.x)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat7;
  let x_1404 : vec4<f32> = u_xlat8;
  let x_1406 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
  let x_1407 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1410 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1412 : f32 = x_781.unity_LightData.y;
  u_xlat0.x = min(x_1410, x_1412);
  let x_1417 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1417));
  let x_1420 : f32 = u_xlat17;
  let x_1422 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_1425 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1420 * x_1422) + x_1425);
  let x_1427 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1427, 0.0f, 1.0f);
  let x_1430 : f32 = x_1006.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1432 : f32 = x_1006.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1434 : f32 = x_1006.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1436 : f32 = x_1006.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1437 : vec4<f32> = vec4<f32>(x_1430, x_1432, x_1434, x_1436);
  let x_1443 : vec4<bool> = (vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1437.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1444 : vec2<bool> = vec2<bool>(x_1443.x, x_1443.y);
  let x_1445 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1457 : u32 = u_xlatu_loop_1;
    let x_1458 : u32 = u_xlatu0;
    if ((x_1457 < x_1458)) {
    } else {
      break;
    }
    let x_1461 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1461 >> 2u);
    let x_1464 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1464 & 3u));
    let x_1467 : u32 = u_xlatu31;
    let x_1470 : vec4<f32> = x_781.unity_LightIndices[bitcast<i32>(x_1467)];
    let x_1480 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1485 : vec4<u32> = indexable[x_1480];
    u_xlat31 = dot(x_1470, bitcast<vec4<f32>>(x_1485));
    let x_1489 : f32 = u_xlat31;
    u_xlati31 = i32(x_1489);
    let x_1491 : vec3<f32> = vs_TEXCOORD7;
    let x_1502 : i32 = u_xlati31;
    let x_1504 : vec4<f32> = x_1501.x_AdditionalLightsPosition[x_1502];
    let x_1507 : i32 = u_xlati31;
    let x_1509 : vec4<f32> = x_1501.x_AdditionalLightsPosition[x_1507];
    u_xlat23 = ((-(x_1491) * vec3<f32>(x_1504.w, x_1504.w, x_1504.w)) + vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
    let x_1512 : vec3<f32> = u_xlat23;
    let x_1513 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1512, x_1513);
    let x_1515 : f32 = u_xlat46;
    u_xlat46 = max(x_1515, 0.00006103515625f);
    let x_1518 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1518);
    let x_1520 : f32 = u_xlat47;
    let x_1522 : vec3<f32> = u_xlat23;
    let x_1523 : vec3<f32> = (vec3<f32>(x_1520, x_1520, x_1520) * x_1522);
    let x_1524 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
    let x_1527 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1527);
    let x_1529 : f32 = u_xlat46;
    let x_1530 : i32 = u_xlati31;
    let x_1532 : f32 = x_1501.x_AdditionalLightsAttenuation[x_1530].x;
    u_xlat46 = (x_1529 * x_1532);
    let x_1534 : f32 = u_xlat46;
    let x_1536 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1534) * x_1536) + 1.0f);
    let x_1539 : f32 = u_xlat46;
    u_xlat46 = max(x_1539, 0.0f);
    let x_1541 : f32 = u_xlat46;
    let x_1542 : f32 = u_xlat46;
    u_xlat46 = (x_1541 * x_1542);
    let x_1544 : f32 = u_xlat46;
    let x_1545 : f32 = u_xlat48;
    u_xlat46 = (x_1544 * x_1545);
    let x_1547 : i32 = u_xlati31;
    let x_1549 : vec4<f32> = x_1501.x_AdditionalLightsSpotDir[x_1547];
    let x_1551 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1549.x, x_1549.y, x_1549.z), vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : f32 = u_xlat48;
    let x_1555 : i32 = u_xlati31;
    let x_1557 : f32 = x_1501.x_AdditionalLightsAttenuation[x_1555].z;
    let x_1559 : i32 = u_xlati31;
    let x_1561 : f32 = x_1501.x_AdditionalLightsAttenuation[x_1559].w;
    u_xlat48 = ((x_1554 * x_1557) + x_1561);
    let x_1563 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1563, 0.0f, 1.0f);
    let x_1565 : f32 = u_xlat48;
    let x_1566 : f32 = u_xlat48;
    u_xlat48 = (x_1565 * x_1566);
    let x_1568 : f32 = u_xlat46;
    let x_1569 : f32 = u_xlat48;
    u_xlat46 = (x_1568 * x_1569);
    let x_1572 : i32 = u_xlati31;
    let x_1574 : f32 = x_594.x_AdditionalShadowParams[x_1572].w;
    u_xlati48 = i32(x_1574);
    let x_1577 : i32 = u_xlati48;
    u_xlatb49 = (x_1577 >= 0i);
    let x_1579 : bool = u_xlatb49;
    if (x_1579) {
      let x_1583 : i32 = u_xlati31;
      let x_1585 : f32 = x_594.x_AdditionalShadowParams[x_1583].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1585, x_1585, x_1585, x_1585))));
      let x_1589 : bool = u_xlatb49;
      if (x_1589) {
        let x_1593 : vec4<f32> = u_xlat10;
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1599 : vec4<bool> = (abs(vec4<f32>(x_1593.z, x_1593.z, x_1593.y, x_1593.z)) >= abs(vec4<f32>(x_1596.x, x_1596.y, x_1596.x, x_1596.x)));
        let x_1601 : vec3<bool> = vec3<bool>(x_1599.x, x_1599.y, x_1599.z);
        let x_1602 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
        let x_1605 : bool = u_xlatb11.y;
        let x_1607 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1605 & x_1607);
        let x_1609 : vec4<f32> = u_xlat10;
        let x_1612 : vec4<bool> = (-(vec4<f32>(x_1609.z, x_1609.y, x_1609.z, x_1609.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1613 : vec3<bool> = vec3<bool>(x_1612.x, x_1612.y, x_1612.w);
        let x_1614 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1613.x, x_1613.y, x_1614.z, x_1613.z);
        let x_1617 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1617);
        let x_1622 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1622);
        let x_1627 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1627);
        let x_1630 : bool = u_xlatb11.z;
        if (x_1630) {
          let x_1635 : f32 = u_xlat11.y;
          x_1631 = x_1635;
        } else {
          let x_1637 : f32 = u_xlat50;
          x_1631 = x_1637;
        }
        let x_1638 : f32 = x_1631;
        u_xlat50 = x_1638;
        let x_1640 : bool = u_xlatb49;
        if (x_1640) {
          let x_1645 : f32 = u_xlat11.x;
          x_1641 = x_1645;
        } else {
          let x_1647 : f32 = u_xlat50;
          x_1641 = x_1647;
        }
        let x_1648 : f32 = x_1641;
        u_xlat49 = x_1648;
        let x_1649 : i32 = u_xlati31;
        let x_1651 : f32 = x_594.x_AdditionalShadowParams[x_1649].w;
        u_xlat50 = trunc(x_1651);
        let x_1653 : f32 = u_xlat49;
        let x_1654 : f32 = u_xlat50;
        u_xlat49 = (x_1653 + x_1654);
        let x_1656 : f32 = u_xlat49;
        u_xlati48 = i32(x_1656);
      }
      let x_1658 : i32 = u_xlati48;
      u_xlati48 = (x_1658 << bitcast<u32>(2i));
      let x_1660 : vec3<f32> = vs_TEXCOORD7;
      let x_1662 : i32 = u_xlati48;
      let x_1665 : i32 = u_xlati48;
      let x_1669 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1662 + 1i) / 4i)][((x_1665 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1660.y, x_1660.y, x_1660.y, x_1660.y) * x_1669);
      let x_1671 : i32 = u_xlati48;
      let x_1673 : i32 = u_xlati48;
      let x_1676 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_1671 / 4i)][(x_1673 % 4i)];
      let x_1677 : vec3<f32> = vs_TEXCOORD7;
      let x_1680 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1676 * vec4<f32>(x_1677.x, x_1677.x, x_1677.x, x_1677.x)) + x_1680);
      let x_1682 : i32 = u_xlati48;
      let x_1685 : i32 = u_xlati48;
      let x_1689 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1682 + 2i) / 4i)][((x_1685 + 2i) % 4i)];
      let x_1690 : vec3<f32> = vs_TEXCOORD7;
      let x_1693 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1689 * vec4<f32>(x_1690.z, x_1690.z, x_1690.z, x_1690.z)) + x_1693);
      let x_1695 : vec4<f32> = u_xlat11;
      let x_1696 : i32 = u_xlati48;
      let x_1699 : i32 = u_xlati48;
      let x_1703 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1696 + 3i) / 4i)][((x_1699 + 3i) % 4i)];
      u_xlat11 = (x_1695 + x_1703);
      let x_1705 : vec4<f32> = u_xlat11;
      let x_1707 : vec4<f32> = u_xlat11;
      let x_1709 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.y, x_1705.z) / vec3<f32>(x_1707.w, x_1707.w, x_1707.w));
      let x_1710 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
      let x_1713 : vec4<f32> = u_xlat11;
      let x_1714 : vec2<f32> = vec2<f32>(x_1713.x, x_1713.y);
      let x_1716 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
      let x_1724 : vec3<f32> = txVec1;
      let x_1726 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1724.xy, x_1724.z);
      u_xlat48 = x_1726;
      let x_1727 : i32 = u_xlati31;
      let x_1729 : f32 = x_594.x_AdditionalShadowParams[x_1727].x;
      u_xlat49 = (1.0f + -(x_1729));
      let x_1732 : f32 = u_xlat48;
      let x_1733 : i32 = u_xlati31;
      let x_1735 : f32 = x_594.x_AdditionalShadowParams[x_1733].x;
      let x_1737 : f32 = u_xlat49;
      u_xlat48 = ((x_1732 * x_1735) + x_1737);
      let x_1740 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1740);
      let x_1744 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1744 >= 1.0f);
      let x_1746 : bool = u_xlatb49;
      let x_1747 : bool = u_xlatb50;
      u_xlatb49 = (x_1746 | x_1747);
      let x_1749 : bool = u_xlatb49;
      let x_1750 : f32 = u_xlat48;
      u_xlat48 = select(x_1750, 1.0f, x_1749);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1753 : f32 = u_xlat48;
    u_xlat49 = (-(x_1753) + 1.0f);
    let x_1756 : f32 = u_xlat28;
    let x_1757 : f32 = u_xlat49;
    let x_1759 : f32 = u_xlat48;
    u_xlat48 = ((x_1756 * x_1757) + x_1759);
    let x_1762 : i32 = u_xlati31;
    u_xlati49 = (1i << bitcast<u32>((x_1762 & 31i)));
    let x_1765 : i32 = u_xlati49;
    let x_1768 : f32 = x_1006.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1765) & bitcast<u32>(x_1768)));
    let x_1772 : i32 = u_xlati49;
    if ((x_1772 != 0i)) {
      let x_1776 : i32 = u_xlati31;
      let x_1778 : f32 = x_1006.x_AdditionalLightsLightTypes[x_1776].el;
      u_xlati49 = i32(x_1778);
      let x_1781 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1781 != 0i));
      let x_1785 : i32 = u_xlati31;
      u_xlati52 = (x_1785 << bitcast<u32>(2i));
      let x_1787 : i32 = u_xlati50;
      if ((x_1787 != 0i)) {
        let x_1791 : vec3<f32> = vs_TEXCOORD7;
        let x_1793 : i32 = u_xlati52;
        let x_1796 : i32 = u_xlati52;
        let x_1800 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1793 + 1i) / 4i)][((x_1796 + 1i) % 4i)];
        let x_1802 : vec3<f32> = (vec3<f32>(x_1791.y, x_1791.y, x_1791.y) * vec3<f32>(x_1800.x, x_1800.y, x_1800.w));
        let x_1803 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
        let x_1805 : i32 = u_xlati52;
        let x_1807 : i32 = u_xlati52;
        let x_1810 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[(x_1805 / 4i)][(x_1807 % 4i)];
        let x_1812 : vec3<f32> = vs_TEXCOORD7;
        let x_1815 : vec4<f32> = u_xlat11;
        let x_1817 : vec3<f32> = ((vec3<f32>(x_1810.x, x_1810.y, x_1810.w) * vec3<f32>(x_1812.x, x_1812.x, x_1812.x)) + vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
        let x_1820 : i32 = u_xlati52;
        let x_1823 : i32 = u_xlati52;
        let x_1827 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1820 + 2i) / 4i)][((x_1823 + 2i) % 4i)];
        let x_1829 : vec3<f32> = vs_TEXCOORD7;
        let x_1832 : vec4<f32> = u_xlat11;
        let x_1834 : vec3<f32> = ((vec3<f32>(x_1827.x, x_1827.y, x_1827.w) * vec3<f32>(x_1829.z, x_1829.z, x_1829.z)) + vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
        let x_1835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
        let x_1837 : vec4<f32> = u_xlat11;
        let x_1839 : i32 = u_xlati52;
        let x_1842 : i32 = u_xlati52;
        let x_1846 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1839 + 3i) / 4i)][((x_1842 + 3i) % 4i)];
        let x_1848 : vec3<f32> = (vec3<f32>(x_1837.x, x_1837.y, x_1837.z) + vec3<f32>(x_1846.x, x_1846.y, x_1846.w));
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
        let x_1851 : vec4<f32> = u_xlat11;
        let x_1853 : vec4<f32> = u_xlat11;
        let x_1855 : vec2<f32> = (vec2<f32>(x_1851.x, x_1851.y) / vec2<f32>(x_1853.z, x_1853.z));
        let x_1856 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1855.x, x_1855.y, x_1856.z, x_1856.w);
        let x_1858 : vec4<f32> = u_xlat11;
        let x_1861 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
        let x_1864 : vec4<f32> = u_xlat11;
        let x_1868 : vec2<f32> = clamp(vec2<f32>(x_1864.x, x_1864.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1868.x, x_1868.y, x_1869.z, x_1869.w);
        let x_1871 : i32 = u_xlati31;
        let x_1873 : vec4<f32> = x_1006.x_AdditionalLightsCookieAtlasUVRects[x_1871];
        let x_1875 : vec4<f32> = u_xlat11;
        let x_1878 : i32 = u_xlati31;
        let x_1880 : vec4<f32> = x_1006.x_AdditionalLightsCookieAtlasUVRects[x_1878];
        let x_1882 : vec2<f32> = ((vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(x_1875.x, x_1875.y)) + vec2<f32>(x_1880.z, x_1880.w));
        let x_1883 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
      } else {
        let x_1886 : i32 = u_xlati49;
        u_xlatb49 = (x_1886 == 1i);
        let x_1888 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1888);
        let x_1890 : i32 = u_xlati49;
        if ((x_1890 != 0i)) {
          let x_1896 : vec3<f32> = vs_TEXCOORD7;
          let x_1898 : i32 = u_xlati52;
          let x_1901 : i32 = u_xlati52;
          let x_1905 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1898 + 1i) / 4i)][((x_1901 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1896.y, x_1896.y) * vec2<f32>(x_1905.x, x_1905.y));
          let x_1908 : i32 = u_xlati52;
          let x_1910 : i32 = u_xlati52;
          let x_1913 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[(x_1908 / 4i)][(x_1910 % 4i)];
          let x_1915 : vec3<f32> = vs_TEXCOORD7;
          let x_1918 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1913.x, x_1913.y) * vec2<f32>(x_1915.x, x_1915.x)) + x_1918);
          let x_1920 : i32 = u_xlati52;
          let x_1923 : i32 = u_xlati52;
          let x_1927 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1920 + 2i) / 4i)][((x_1923 + 2i) % 4i)];
          let x_1929 : vec3<f32> = vs_TEXCOORD7;
          let x_1932 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1927.x, x_1927.y) * vec2<f32>(x_1929.z, x_1929.z)) + x_1932);
          let x_1934 : vec2<f32> = u_xlat39;
          let x_1935 : i32 = u_xlati52;
          let x_1938 : i32 = u_xlati52;
          let x_1942 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1935 + 3i) / 4i)][((x_1938 + 3i) % 4i)];
          u_xlat39 = (x_1934 + vec2<f32>(x_1942.x, x_1942.y));
          let x_1945 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1945 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1948 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1948);
          let x_1950 : i32 = u_xlati31;
          let x_1952 : vec4<f32> = x_1006.x_AdditionalLightsCookieAtlasUVRects[x_1950];
          let x_1954 : vec2<f32> = u_xlat39;
          let x_1956 : i32 = u_xlati31;
          let x_1958 : vec4<f32> = x_1006.x_AdditionalLightsCookieAtlasUVRects[x_1956];
          let x_1960 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * x_1954) + vec2<f32>(x_1958.z, x_1958.w));
          let x_1961 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1960.x, x_1960.y, x_1961.z, x_1961.w);
        } else {
          let x_1964 : vec3<f32> = vs_TEXCOORD7;
          let x_1966 : i32 = u_xlati52;
          let x_1969 : i32 = u_xlati52;
          let x_1973 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1966 + 1i) / 4i)][((x_1969 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1964.y, x_1964.y, x_1964.y, x_1964.y) * x_1973);
          let x_1975 : i32 = u_xlati52;
          let x_1977 : i32 = u_xlati52;
          let x_1980 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[(x_1975 / 4i)][(x_1977 % 4i)];
          let x_1981 : vec3<f32> = vs_TEXCOORD7;
          let x_1984 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1980 * vec4<f32>(x_1981.x, x_1981.x, x_1981.x, x_1981.x)) + x_1984);
          let x_1986 : i32 = u_xlati52;
          let x_1989 : i32 = u_xlati52;
          let x_1993 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_1986 + 2i) / 4i)][((x_1989 + 2i) % 4i)];
          let x_1994 : vec3<f32> = vs_TEXCOORD7;
          let x_1997 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1993 * vec4<f32>(x_1994.z, x_1994.z, x_1994.z, x_1994.z)) + x_1997);
          let x_1999 : vec4<f32> = u_xlat12;
          let x_2000 : i32 = u_xlati52;
          let x_2003 : i32 = u_xlati52;
          let x_2007 : vec4<f32> = x_1006.x_AdditionalLightsWorldToLights[((x_2000 + 3i) / 4i)][((x_2003 + 3i) % 4i)];
          u_xlat12 = (x_1999 + x_2007);
          let x_2009 : vec4<f32> = u_xlat12;
          let x_2011 : vec4<f32> = u_xlat12;
          let x_2013 : vec3<f32> = (vec3<f32>(x_2009.x, x_2009.y, x_2009.z) / vec3<f32>(x_2011.w, x_2011.w, x_2011.w));
          let x_2014 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
          let x_2016 : vec4<f32> = u_xlat12;
          let x_2018 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2016.x, x_2016.y, x_2016.z), vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
          let x_2021 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2021);
          let x_2023 : f32 = u_xlat49;
          let x_2025 : vec4<f32> = u_xlat12;
          let x_2027 : vec3<f32> = (vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
          let x_2028 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
          let x_2030 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2030.x, x_2030.y, x_2030.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2035 : f32 = u_xlat49;
          u_xlat49 = max(x_2035, 0.00000099999999747524f);
          let x_2038 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2038);
          let x_2040 : f32 = u_xlat49;
          let x_2042 : vec4<f32> = u_xlat12;
          let x_2044 : vec3<f32> = (vec3<f32>(x_2040, x_2040, x_2040) * vec3<f32>(x_2042.z, x_2042.x, x_2042.y));
          let x_2045 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
          let x_2048 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2048);
          let x_2052 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2052, 0.0f, 1.0f);
          let x_2056 : vec4<f32> = u_xlat13;
          let x_2058 : vec4<bool> = (vec4<f32>(x_2056.y, x_2056.z, x_2056.y, x_2056.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2058.x, x_2058.y);
          let x_2061 : bool = u_xlatb39.x;
          if (x_2061) {
            let x_2066 : f32 = u_xlat13.x;
            x_2062 = x_2066;
          } else {
            let x_2069 : f32 = u_xlat13.x;
            x_2062 = -(x_2069);
          }
          let x_2071 : f32 = x_2062;
          u_xlat39.x = x_2071;
          let x_2074 : bool = u_xlatb39.y;
          if (x_2074) {
            let x_2079 : f32 = u_xlat13.x;
            x_2075 = x_2079;
          } else {
            let x_2082 : f32 = u_xlat13.x;
            x_2075 = -(x_2082);
          }
          let x_2084 : f32 = x_2075;
          u_xlat39.y = x_2084;
          let x_2086 : vec4<f32> = u_xlat12;
          let x_2088 : f32 = u_xlat49;
          let x_2091 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2088, x_2088)) + x_2091);
          let x_2093 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2093 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2096 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2096, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2100 : i32 = u_xlati31;
          let x_2102 : vec4<f32> = x_1006.x_AdditionalLightsCookieAtlasUVRects[x_2100];
          let x_2104 : vec2<f32> = u_xlat39;
          let x_2106 : i32 = u_xlati31;
          let x_2108 : vec4<f32> = x_1006.x_AdditionalLightsCookieAtlasUVRects[x_2106];
          let x_2110 : vec2<f32> = ((vec2<f32>(x_2102.x, x_2102.y) * x_2104) + vec2<f32>(x_2108.z, x_2108.w));
          let x_2111 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2110.x, x_2110.y, x_2111.z, x_2111.w);
        }
      }
      let x_2118 : vec4<f32> = u_xlat11;
      let x_2120 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2118.x, x_2118.y), 0.0f);
      u_xlat11 = x_2120;
      let x_2122 : bool = u_xlatb3.y;
      if (x_2122) {
        let x_2127 : f32 = u_xlat11.w;
        x_2123 = x_2127;
      } else {
        let x_2130 : f32 = u_xlat11.x;
        x_2123 = x_2130;
      }
      let x_2131 : f32 = x_2123;
      u_xlat49 = x_2131;
      let x_2133 : bool = u_xlatb3.x;
      if (x_2133) {
        let x_2137 : vec4<f32> = u_xlat11;
        x_2134 = vec3<f32>(x_2137.x, x_2137.y, x_2137.z);
      } else {
        let x_2140 : f32 = u_xlat49;
        x_2134 = vec3<f32>(x_2140, x_2140, x_2140);
      }
      let x_2142 : vec3<f32> = x_2134;
      let x_2143 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2149 : vec4<f32> = u_xlat11;
    let x_2151 : i32 = u_xlati31;
    let x_2153 : vec4<f32> = x_1501.x_AdditionalLightsColor[x_2151];
    let x_2155 : vec3<f32> = (vec3<f32>(x_2149.x, x_2149.y, x_2149.z) * vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
    let x_2156 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
    let x_2158 : f32 = u_xlat46;
    let x_2159 : f32 = u_xlat48;
    u_xlat31 = (x_2158 * x_2159);
    let x_2161 : vec4<f32> = u_xlat1;
    let x_2163 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2161.x, x_2161.y, x_2161.z), vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
    let x_2166 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2166, 0.0f, 1.0f);
    let x_2168 : f32 = u_xlat31;
    let x_2169 : f32 = u_xlat46;
    u_xlat31 = (x_2168 * x_2169);
    let x_2171 : f32 = u_xlat31;
    let x_2173 : vec4<f32> = u_xlat11;
    let x_2175 : vec3<f32> = (vec3<f32>(x_2171, x_2171, x_2171) * vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
    let x_2176 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
    let x_2178 : vec3<f32> = u_xlat23;
    let x_2179 : f32 = u_xlat47;
    let x_2182 : vec3<f32> = u_xlat2;
    u_xlat23 = ((x_2178 * vec3<f32>(x_2179, x_2179, x_2179)) + x_2182);
    let x_2184 : vec3<f32> = u_xlat23;
    let x_2185 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(x_2184, x_2185);
    let x_2187 : f32 = u_xlat31;
    u_xlat31 = max(x_2187, 1.17549435e-38f);
    let x_2189 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_2189);
    let x_2191 : f32 = u_xlat31;
    let x_2193 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2191, x_2191, x_2191) * x_2193);
    let x_2195 : vec4<f32> = u_xlat1;
    let x_2197 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(vec3<f32>(x_2195.x, x_2195.y, x_2195.z), x_2197);
    let x_2199 : f32 = u_xlat31;
    u_xlat31 = clamp(x_2199, 0.0f, 1.0f);
    let x_2201 : vec4<f32> = u_xlat10;
    let x_2203 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(vec3<f32>(x_2201.x, x_2201.y, x_2201.z), x_2203);
    let x_2205 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2205, 0.0f, 1.0f);
    let x_2207 : f32 = u_xlat31;
    let x_2208 : f32 = u_xlat31;
    u_xlat31 = (x_2207 * x_2208);
    let x_2210 : f32 = u_xlat31;
    let x_2212 : f32 = u_xlat9.x;
    u_xlat31 = ((x_2210 * x_2212) + 1.00001001358032226562f);
    let x_2215 : f32 = u_xlat46;
    let x_2216 : f32 = u_xlat46;
    u_xlat46 = (x_2215 * x_2216);
    let x_2218 : f32 = u_xlat31;
    let x_2219 : f32 = u_xlat31;
    u_xlat31 = (x_2218 * x_2219);
    let x_2221 : f32 = u_xlat46;
    u_xlat46 = max(x_2221, 0.10000000149011611938f);
    let x_2223 : f32 = u_xlat31;
    let x_2224 : f32 = u_xlat46;
    u_xlat31 = (x_2223 * x_2224);
    let x_2226 : f32 = u_xlat44;
    let x_2227 : f32 = u_xlat31;
    u_xlat31 = (x_2226 * x_2227);
    let x_2229 : f32 = u_xlat45;
    let x_2230 : f32 = u_xlat31;
    u_xlat31 = (x_2229 / x_2230);
    let x_2232 : vec4<f32> = u_xlat5;
    let x_2234 : f32 = u_xlat31;
    let x_2237 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2232.x, x_2232.y, x_2232.z) * vec3<f32>(x_2234, x_2234, x_2234)) + vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
    let x_2240 : vec3<f32> = u_xlat23;
    let x_2241 : vec4<f32> = u_xlat11;
    let x_2244 : vec4<f32> = u_xlat8;
    let x_2246 : vec3<f32> = ((x_2240 * vec3<f32>(x_2241.x, x_2241.y, x_2241.z)) + vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
    let x_2247 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);

    continuing {
      let x_2249 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2249 + bitcast<u32>(1i));
    }
  }
  let x_2251 : vec4<f32> = u_xlat4;
  let x_2253 : f32 = u_xlat14;
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2251.x, x_2251.y, x_2251.z) * vec3<f32>(x_2253, x_2253, x_2253)) + vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : vec4<f32> = u_xlat8;
  let x_2261 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2259.x, x_2259.y, x_2259.z) + x_2261);
  let x_2265 : f32 = u_xlat42;
  let x_2267 : vec3<f32> = u_xlat0;
  let x_2268 : vec3<f32> = (vec3<f32>(x_2265, x_2265, x_2265) * x_2267);
  let x_2269 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


