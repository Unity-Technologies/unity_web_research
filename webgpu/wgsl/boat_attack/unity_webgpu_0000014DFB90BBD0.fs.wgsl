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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_744 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_808 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_999 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1287 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
  var txVec0 : vec3<f32>;
  var x_893 : f32;
  var x_904 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1423 : f32;
  var x_1433 : f32;
  var txVec1 : vec3<f32>;
  var x_1854 : f32;
  var x_1867 : f32;
  var x_1915 : f32;
  var x_1926 : vec3<f32>;
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
  let x_279 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb44;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat43;
  u_xlat43 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat43;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat15;
  let x_537 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat15;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_554 : f32 = u_xlat15.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = x_111.unity_MatrixV[0i].z;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat2.x = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat15.y;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[1i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.y = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat15.z;
    x_572 = x_576;
  } else {
    let x_580 : f32 = x_111.unity_MatrixV[2i].z;
    x_572 = x_580;
  }
  let x_581 : f32 = x_572;
  u_xlat2.z = x_581;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * x_594);
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_603 : vec4<f32> = vs_TEXCOORD0;
  let x_606 : f32 = x_111.x_GlobalMipBias.x;
  let x_607 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_603.z, x_603.w), x_606);
  u_xlat3 = x_607;
  let x_612 : vec4<f32> = vs_TEXCOORD0;
  let x_615 : f32 = x_111.x_GlobalMipBias.x;
  let x_616 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_612.z, x_612.w), x_615);
  let x_617 : vec3<f32> = vec3<f32>(x_616.x, x_616.y, x_616.z);
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat43;
  u_xlat43 = (x_632 + 0.5f);
  let x_634 : f32 = u_xlat43;
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_642 : f32 = u_xlat3.w;
  u_xlat43 = max(x_642, 0.00009999999747378752f);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : f32 = u_xlat43;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) / vec3<f32>(x_647, x_647, x_647));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_653) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_659 : f32 = u_xlat28;
  let x_660 : f32 = u_xlat43;
  u_xlat44 = (x_659 + -(x_660));
  let x_663 : f32 = u_xlat43;
  let x_665 : vec4<f32> = u_xlat5;
  let x_667 : vec3<f32> = (vec3<f32>(x_663, x_663, x_663) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat5;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat0;
  let x_679 : vec4<f32> = u_xlat5;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : f32 = u_xlat28;
  u_xlat0.x = (-(x_687) + 1.0f);
  let x_692 : f32 = u_xlat0.x;
  let x_694 : f32 = u_xlat0.x;
  u_xlat28 = (x_692 * x_694);
  let x_696 : f32 = u_xlat28;
  u_xlat28 = max(x_696, 0.0078125f);
  let x_699 : f32 = u_xlat28;
  let x_700 : f32 = u_xlat28;
  u_xlat43 = (x_699 * x_700);
  let x_702 : f32 = u_xlat44;
  u_xlat44 = (x_702 + 1.0f);
  let x_704 : f32 = u_xlat44;
  u_xlat44 = clamp(x_704, 0.0f, 1.0f);
  let x_707 : f32 = u_xlat28;
  u_xlat45 = ((x_707 * 4.0f) + 2.0f);
  let x_711 : f32 = u_xlat14;
  u_xlat14 = min(x_711, 1.0f);
  let x_716 : vec4<f32> = vs_TEXCOORD8;
  let x_717 : vec2<f32> = vec2<f32>(x_716.x, x_716.y);
  let x_720 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_717.x, x_717.y, x_720);
  let x_733 : vec3<f32> = txVec0;
  let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_733.xy, x_733.z);
  u_xlat46 = x_735;
  let x_746 : f32 = x_744.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_746) + 1.0f);
  let x_749 : f32 = u_xlat46;
  let x_751 : f32 = x_744.x_MainLightShadowParams.x;
  let x_753 : f32 = u_xlat47;
  u_xlat46 = ((x_749 * x_751) + x_753);
  let x_757 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_757);
  let x_761 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_761 >= 1.0f);
  let x_763 : bool = u_xlatb47;
  let x_764 : bool = u_xlatb6;
  u_xlatb47 = (x_763 | x_764);
  let x_766 : bool = u_xlatb47;
  let x_767 : f32 = u_xlat46;
  u_xlat46 = select(x_767, 1.0f, x_766);
  let x_769 : vec3<f32> = vs_TEXCOORD7;
  let x_771 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_773 : vec3<f32> = (x_769 + -(x_771));
  let x_774 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat6;
  let x_778 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_776.x, x_776.y, x_776.z), vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : f32 = u_xlat47;
  let x_783 : f32 = x_744.x_MainLightShadowParams.z;
  let x_786 : f32 = x_744.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_781 * x_783) + x_786);
  let x_790 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_790, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat46;
  u_xlat20 = (-(x_794) + 1.0f);
  let x_798 : f32 = u_xlat6.x;
  let x_799 : f32 = u_xlat20;
  let x_801 : f32 = u_xlat46;
  u_xlat46 = ((x_798 * x_799) + x_801);
  let x_810 : f32 = x_808.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_810 == -1.0f));
  let x_812 : bool = u_xlatb6;
  if (x_812) {
    let x_815 : vec3<f32> = vs_TEXCOORD7;
    let x_818 : vec4<f32> = x_808.x_MainLightWorldToLight[1i];
    let x_820 : vec2<f32> = (vec2<f32>(x_815.y, x_815.y) * vec2<f32>(x_818.x, x_818.y));
    let x_821 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
    let x_824 : vec4<f32> = x_808.x_MainLightWorldToLight[0i];
    let x_826 : vec3<f32> = vs_TEXCOORD7;
    let x_829 : vec4<f32> = u_xlat6;
    let x_831 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(x_826.x, x_826.x)) + vec2<f32>(x_829.x, x_829.y));
    let x_832 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
    let x_835 : vec4<f32> = x_808.x_MainLightWorldToLight[2i];
    let x_837 : vec3<f32> = vs_TEXCOORD7;
    let x_840 : vec4<f32> = u_xlat6;
    let x_842 : vec2<f32> = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_837.z, x_837.z)) + vec2<f32>(x_840.x, x_840.y));
    let x_843 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
    let x_845 : vec4<f32> = u_xlat6;
    let x_849 : vec4<f32> = x_808.x_MainLightWorldToLight[3i];
    let x_851 : vec2<f32> = (vec2<f32>(x_845.x, x_845.y) + vec2<f32>(x_849.x, x_849.y));
    let x_852 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
    let x_854 : vec4<f32> = u_xlat6;
    let x_857 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_858 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
    let x_865 : vec4<f32> = u_xlat6;
    let x_868 : f32 = x_111.x_GlobalMipBias.x;
    let x_869 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_865.x, x_865.y), x_868);
    u_xlat6 = x_869;
    let x_874 : f32 = x_808.x_MainLightCookieTextureFormat;
    let x_876 : f32 = x_808.x_MainLightCookieTextureFormat;
    let x_878 : f32 = x_808.x_MainLightCookieTextureFormat;
    let x_880 : f32 = x_808.x_MainLightCookieTextureFormat;
    let x_881 : vec4<f32> = vec4<f32>(x_874, x_876, x_878, x_880);
    let x_888 : vec4<bool> = (vec4<f32>(x_881.x, x_881.y, x_881.z, x_881.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_888.x, x_888.y);
    let x_892 : bool = u_xlatb7.y;
    if (x_892) {
      let x_897 : f32 = u_xlat6.w;
      x_893 = x_897;
    } else {
      let x_900 : f32 = u_xlat6.x;
      x_893 = x_900;
    }
    let x_901 : f32 = x_893;
    u_xlat48 = x_901;
    let x_903 : bool = u_xlatb7.x;
    if (x_903) {
      let x_907 : vec4<f32> = u_xlat6;
      x_904 = vec3<f32>(x_907.x, x_907.y, x_907.z);
    } else {
      let x_910 : f32 = u_xlat48;
      x_904 = vec3<f32>(x_910, x_910, x_910);
    }
    let x_912 : vec3<f32> = x_904;
    let x_913 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_919 : vec4<f32> = u_xlat6;
  let x_922 : vec4<f32> = x_111.x_MainLightColor;
  let x_924 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec3<f32> = u_xlat2;
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(x_927), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : f32 = u_xlat48;
  let x_933 : f32 = u_xlat48;
  u_xlat48 = (x_932 + x_933);
  let x_935 : vec4<f32> = u_xlat1;
  let x_937 : f32 = u_xlat48;
  let x_941 : vec3<f32> = u_xlat2;
  let x_943 : vec3<f32> = ((vec3<f32>(x_935.x, x_935.y, x_935.z) * -(vec3<f32>(x_937, x_937, x_937))) + -(x_941));
  let x_944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat1;
  let x_948 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_946.x, x_946.y, x_946.z), x_948);
  let x_950 : f32 = u_xlat48;
  u_xlat48 = clamp(x_950, 0.0f, 1.0f);
  let x_952 : f32 = u_xlat48;
  u_xlat48 = (-(x_952) + 1.0f);
  let x_955 : f32 = u_xlat48;
  let x_956 : f32 = u_xlat48;
  u_xlat48 = (x_955 * x_956);
  let x_958 : f32 = u_xlat48;
  let x_959 : f32 = u_xlat48;
  u_xlat48 = (x_958 * x_959);
  let x_963 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_963) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_970 : f32 = u_xlat0.x;
  let x_971 : f32 = u_xlat49;
  u_xlat0.x = (x_970 * x_971);
  let x_975 : f32 = u_xlat0.x;
  u_xlat0.x = (x_975 * 6.0f);
  let x_987 : vec4<f32> = u_xlat7;
  let x_990 : f32 = u_xlat0.x;
  let x_991 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_987.x, x_987.y, x_987.z), x_990);
  u_xlat7 = x_991;
  let x_993 : f32 = u_xlat7.w;
  u_xlat0.x = (x_993 + -1.0f);
  let x_1001 : f32 = x_999.unity_SpecCube0_HDR.w;
  let x_1003 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1001 * x_1003) + 1.0f);
  let x_1008 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1008, 0.0f);
  let x_1012 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1012);
  let x_1016 : f32 = u_xlat0.x;
  let x_1018 : f32 = x_999.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1016 * x_1018);
  let x_1022 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1022);
  let x_1026 : f32 = u_xlat0.x;
  let x_1028 : f32 = x_999.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1026 * x_1028);
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec3<f32> = u_xlat0;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1033.x, x_1033.x, x_1033.x));
  let x_1036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : f32 = u_xlat28;
  let x_1040 : f32 = u_xlat28;
  let x_1044 : vec2<f32> = ((vec2<f32>(x_1038, x_1038) * vec2<f32>(x_1040, x_1040)) + vec2<f32>(-1.0f, 1.0f));
  let x_1045 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1044.x, x_1045.y, x_1044.y);
  let x_1048 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1048);
  let x_1050 : vec4<f32> = u_xlat5;
  let x_1053 : f32 = u_xlat44;
  let x_1055 : vec3<f32> = (-(vec3<f32>(x_1050.x, x_1050.y, x_1050.z)) + vec3<f32>(x_1053, x_1053, x_1053));
  let x_1056 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1058 : f32 = u_xlat48;
  let x_1060 : vec4<f32> = u_xlat8;
  let x_1063 : vec4<f32> = u_xlat5;
  let x_1065 : vec3<f32> = ((vec3<f32>(x_1058, x_1058, x_1058) * vec3<f32>(x_1060.x, x_1060.y, x_1060.z)) + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : f32 = u_xlat28;
  let x_1070 : vec4<f32> = u_xlat8;
  let x_1072 : vec3<f32> = (vec3<f32>(x_1068, x_1068, x_1068) * vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1077 : vec4<f32> = u_xlat8;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat3;
  let x_1084 : vec4<f32> = u_xlat4;
  let x_1087 : vec4<f32> = u_xlat7;
  let x_1089 : vec3<f32> = ((vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * vec3<f32>(x_1084.x, x_1084.y, x_1084.z)) + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : f32 = u_xlat46;
  let x_1094 : f32 = x_999.unity_LightData.z;
  u_xlat28 = (x_1092 * x_1094);
  let x_1096 : vec4<f32> = u_xlat1;
  let x_1099 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1102, 0.0f, 1.0f);
  let x_1104 : f32 = u_xlat28;
  let x_1105 : f32 = u_xlat44;
  u_xlat28 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat28;
  let x_1109 : vec4<f32> = u_xlat6;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1107, x_1107, x_1107) * vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : vec3<f32> = u_xlat2;
  let x_1116 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1118 : vec3<f32> = (x_1114 + vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1123 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : f32 = u_xlat28;
  u_xlat28 = max(x_1126, 1.17549435e-38f);
  let x_1129 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1129);
  let x_1131 : f32 = u_xlat28;
  let x_1133 : vec4<f32> = u_xlat7;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat1;
  let x_1140 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1143, 0.0f, 1.0f);
  let x_1146 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1148 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1146.x, x_1146.y, x_1146.z), vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1151, 0.0f, 1.0f);
  let x_1153 : f32 = u_xlat28;
  let x_1154 : f32 = u_xlat28;
  u_xlat28 = (x_1153 * x_1154);
  let x_1156 : f32 = u_xlat28;
  let x_1158 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1156 * x_1158) + 1.00001001358032226562f);
  let x_1162 : f32 = u_xlat44;
  let x_1163 : f32 = u_xlat44;
  u_xlat44 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat28;
  let x_1166 : f32 = u_xlat28;
  u_xlat28 = (x_1165 * x_1166);
  let x_1168 : f32 = u_xlat44;
  u_xlat44 = max(x_1168, 0.10000000149011611938f);
  let x_1171 : f32 = u_xlat28;
  let x_1172 : f32 = u_xlat44;
  u_xlat28 = (x_1171 * x_1172);
  let x_1174 : f32 = u_xlat45;
  let x_1175 : f32 = u_xlat28;
  u_xlat28 = (x_1174 * x_1175);
  let x_1177 : f32 = u_xlat43;
  let x_1178 : f32 = u_xlat28;
  u_xlat28 = (x_1177 / x_1178);
  let x_1180 : vec4<f32> = u_xlat5;
  let x_1182 : f32 = u_xlat28;
  let x_1185 : vec4<f32> = u_xlat4;
  let x_1187 : vec3<f32> = ((vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * vec3<f32>(x_1182, x_1182, x_1182)) + vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1188 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : vec4<f32> = u_xlat6;
  let x_1192 : vec4<f32> = u_xlat7;
  let x_1194 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1198 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1200 : f32 = x_999.unity_LightData.y;
  u_xlat28 = min(x_1198, x_1200);
  let x_1204 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1204));
  let x_1207 : f32 = u_xlat47;
  let x_1209 : f32 = x_744.x_AdditionalShadowFadeParams.x;
  let x_1212 : f32 = x_744.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1207 * x_1209) + x_1212);
  let x_1214 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1214, 0.0f, 1.0f);
  let x_1217 : f32 = x_808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1219 : f32 = x_808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1221 : f32 = x_808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1223 : f32 = x_808.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1224 : vec4<f32> = vec4<f32>(x_1217, x_1219, x_1221, x_1223);
  let x_1230 : vec4<bool> = (vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1224.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1230.x, x_1230.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1242 : u32 = u_xlatu_loop_1;
    let x_1243 : u32 = u_xlatu28;
    if ((x_1242 < x_1243)) {
    } else {
      break;
    }
    let x_1246 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1246 >> 2u);
    let x_1250 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1250 & 3u));
    let x_1253 : u32 = u_xlatu47;
    let x_1256 : vec4<f32> = x_999.unity_LightIndices[bitcast<i32>(x_1253)];
    let x_1266 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1271 : vec4<u32> = indexable[x_1266];
    u_xlat47 = dot(x_1256, bitcast<vec4<f32>>(x_1271));
    let x_1275 : f32 = u_xlat47;
    u_xlati47 = i32(x_1275);
    let x_1277 : vec3<f32> = vs_TEXCOORD7;
    let x_1288 : i32 = u_xlati47;
    let x_1290 : vec4<f32> = x_1287.x_AdditionalLightsPosition[x_1288];
    let x_1293 : i32 = u_xlati47;
    let x_1295 : vec4<f32> = x_1287.x_AdditionalLightsPosition[x_1293];
    let x_1297 : vec3<f32> = ((-(x_1277) * vec3<f32>(x_1290.w, x_1290.w, x_1290.w)) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
    let x_1298 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
    let x_1300 : vec4<f32> = u_xlat9;
    let x_1302 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1300.x, x_1300.y, x_1300.z), vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
    let x_1305 : f32 = u_xlat48;
    u_xlat48 = max(x_1305, 0.00006103515625f);
    let x_1308 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1308);
    let x_1310 : f32 = u_xlat35;
    let x_1312 : vec4<f32> = u_xlat9;
    let x_1314 : vec3<f32> = (vec3<f32>(x_1310, x_1310, x_1310) * vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
    let x_1315 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
    let x_1317 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1317);
    let x_1319 : f32 = u_xlat48;
    let x_1320 : i32 = u_xlati47;
    let x_1322 : f32 = x_1287.x_AdditionalLightsAttenuation[x_1320].x;
    u_xlat48 = (x_1319 * x_1322);
    let x_1324 : f32 = u_xlat48;
    let x_1326 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1324) * x_1326) + 1.0f);
    let x_1329 : f32 = u_xlat48;
    u_xlat48 = max(x_1329, 0.0f);
    let x_1331 : f32 = u_xlat48;
    let x_1332 : f32 = u_xlat48;
    u_xlat48 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat48;
    let x_1335 : f32 = u_xlat49;
    u_xlat48 = (x_1334 * x_1335);
    let x_1337 : i32 = u_xlati47;
    let x_1339 : vec4<f32> = x_1287.x_AdditionalLightsSpotDir[x_1337];
    let x_1341 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1339.x, x_1339.y, x_1339.z), vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : f32 = u_xlat49;
    let x_1345 : i32 = u_xlati47;
    let x_1347 : f32 = x_1287.x_AdditionalLightsAttenuation[x_1345].z;
    let x_1349 : i32 = u_xlati47;
    let x_1351 : f32 = x_1287.x_AdditionalLightsAttenuation[x_1349].w;
    u_xlat49 = ((x_1344 * x_1347) + x_1351);
    let x_1353 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1353, 0.0f, 1.0f);
    let x_1355 : f32 = u_xlat49;
    let x_1356 : f32 = u_xlat49;
    u_xlat49 = (x_1355 * x_1356);
    let x_1358 : f32 = u_xlat48;
    let x_1359 : f32 = u_xlat49;
    u_xlat48 = (x_1358 * x_1359);
    let x_1362 : i32 = u_xlati47;
    let x_1364 : f32 = x_744.x_AdditionalShadowParams[x_1362].w;
    u_xlati49 = i32(x_1364);
    let x_1367 : i32 = u_xlati49;
    u_xlatb50 = (x_1367 >= 0i);
    let x_1369 : bool = u_xlatb50;
    if (x_1369) {
      let x_1373 : i32 = u_xlati47;
      let x_1375 : f32 = x_744.x_AdditionalShadowParams[x_1373].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1375, x_1375, x_1375, x_1375))));
      let x_1379 : bool = u_xlatb50;
      if (x_1379) {
        let x_1384 : vec4<f32> = u_xlat10;
        let x_1387 : vec4<f32> = u_xlat10;
        let x_1390 : vec4<bool> = (abs(vec4<f32>(x_1384.z, x_1384.z, x_1384.y, x_1384.z)) >= abs(vec4<f32>(x_1387.x, x_1387.y, x_1387.x, x_1387.x)));
        let x_1392 : vec3<bool> = vec3<bool>(x_1390.x, x_1390.y, x_1390.z);
        let x_1393 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
        let x_1396 : bool = u_xlatb11.y;
        let x_1398 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1396 & x_1398);
        let x_1400 : vec4<f32> = u_xlat10;
        let x_1403 : vec4<bool> = (-(vec4<f32>(x_1400.z, x_1400.y, x_1400.z, x_1400.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1404 : vec3<bool> = vec3<bool>(x_1403.x, x_1403.y, x_1403.w);
        let x_1405 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1404.x, x_1404.y, x_1405.z, x_1404.z);
        let x_1408 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1408);
        let x_1413 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1413);
        let x_1419 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1419);
        let x_1422 : bool = u_xlatb11.z;
        if (x_1422) {
          let x_1427 : f32 = u_xlat11.y;
          x_1423 = x_1427;
        } else {
          let x_1429 : f32 = u_xlat51;
          x_1423 = x_1429;
        }
        let x_1430 : f32 = x_1423;
        u_xlat51 = x_1430;
        let x_1432 : bool = u_xlatb50;
        if (x_1432) {
          let x_1437 : f32 = u_xlat11.x;
          x_1433 = x_1437;
        } else {
          let x_1439 : f32 = u_xlat51;
          x_1433 = x_1439;
        }
        let x_1440 : f32 = x_1433;
        u_xlat50 = x_1440;
        let x_1441 : i32 = u_xlati47;
        let x_1443 : f32 = x_744.x_AdditionalShadowParams[x_1441].w;
        u_xlat51 = trunc(x_1443);
        let x_1445 : f32 = u_xlat50;
        let x_1446 : f32 = u_xlat51;
        u_xlat50 = (x_1445 + x_1446);
        let x_1448 : f32 = u_xlat50;
        u_xlati49 = i32(x_1448);
      }
      let x_1450 : i32 = u_xlati49;
      u_xlati49 = (x_1450 << bitcast<u32>(2i));
      let x_1452 : vec3<f32> = vs_TEXCOORD7;
      let x_1454 : i32 = u_xlati49;
      let x_1457 : i32 = u_xlati49;
      let x_1461 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_1454 + 1i) / 4i)][((x_1457 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1452.y, x_1452.y, x_1452.y, x_1452.y) * x_1461);
      let x_1463 : i32 = u_xlati49;
      let x_1465 : i32 = u_xlati49;
      let x_1468 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[(x_1463 / 4i)][(x_1465 % 4i)];
      let x_1469 : vec3<f32> = vs_TEXCOORD7;
      let x_1472 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1468 * vec4<f32>(x_1469.x, x_1469.x, x_1469.x, x_1469.x)) + x_1472);
      let x_1474 : i32 = u_xlati49;
      let x_1477 : i32 = u_xlati49;
      let x_1481 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_1474 + 2i) / 4i)][((x_1477 + 2i) % 4i)];
      let x_1482 : vec3<f32> = vs_TEXCOORD7;
      let x_1485 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1481 * vec4<f32>(x_1482.z, x_1482.z, x_1482.z, x_1482.z)) + x_1485);
      let x_1487 : vec4<f32> = u_xlat11;
      let x_1488 : i32 = u_xlati49;
      let x_1491 : i32 = u_xlati49;
      let x_1495 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_1488 + 3i) / 4i)][((x_1491 + 3i) % 4i)];
      u_xlat11 = (x_1487 + x_1495);
      let x_1497 : vec4<f32> = u_xlat11;
      let x_1499 : vec4<f32> = u_xlat11;
      let x_1501 : vec3<f32> = (vec3<f32>(x_1497.x, x_1497.y, x_1497.z) / vec3<f32>(x_1499.w, x_1499.w, x_1499.w));
      let x_1502 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
      let x_1505 : vec4<f32> = u_xlat11;
      let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
      let x_1508 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
      let x_1516 : vec3<f32> = txVec1;
      let x_1518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
      u_xlat49 = x_1518;
      let x_1519 : i32 = u_xlati47;
      let x_1521 : f32 = x_744.x_AdditionalShadowParams[x_1519].x;
      u_xlat50 = (1.0f + -(x_1521));
      let x_1524 : f32 = u_xlat49;
      let x_1525 : i32 = u_xlati47;
      let x_1527 : f32 = x_744.x_AdditionalShadowParams[x_1525].x;
      let x_1529 : f32 = u_xlat50;
      u_xlat49 = ((x_1524 * x_1527) + x_1529);
      let x_1532 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1532);
      let x_1536 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1536 >= 1.0f);
      let x_1538 : bool = u_xlatb50;
      let x_1539 : bool = u_xlatb51;
      u_xlatb50 = (x_1538 | x_1539);
      let x_1541 : bool = u_xlatb50;
      let x_1542 : f32 = u_xlat49;
      u_xlat49 = select(x_1542, 1.0f, x_1541);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1545 : f32 = u_xlat49;
    u_xlat50 = (-(x_1545) + 1.0f);
    let x_1548 : f32 = u_xlat44;
    let x_1549 : f32 = u_xlat50;
    let x_1551 : f32 = u_xlat49;
    u_xlat49 = ((x_1548 * x_1549) + x_1551);
    let x_1554 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1554 & 31i)));
    let x_1557 : i32 = u_xlati50;
    let x_1560 : f32 = x_808.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1557) & bitcast<u32>(x_1560)));
    let x_1564 : i32 = u_xlati50;
    if ((x_1564 != 0i)) {
      let x_1568 : i32 = u_xlati47;
      let x_1570 : f32 = x_808.x_AdditionalLightsLightTypes[x_1568].el;
      u_xlati50 = i32(x_1570);
      let x_1573 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1573 != 0i));
      let x_1577 : i32 = u_xlati47;
      u_xlati52 = (x_1577 << bitcast<u32>(2i));
      let x_1579 : i32 = u_xlati51;
      if ((x_1579 != 0i)) {
        let x_1583 : vec3<f32> = vs_TEXCOORD7;
        let x_1585 : i32 = u_xlati52;
        let x_1588 : i32 = u_xlati52;
        let x_1592 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1585 + 1i) / 4i)][((x_1588 + 1i) % 4i)];
        let x_1594 : vec3<f32> = (vec3<f32>(x_1583.y, x_1583.y, x_1583.y) * vec3<f32>(x_1592.x, x_1592.y, x_1592.w));
        let x_1595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
        let x_1597 : i32 = u_xlati52;
        let x_1599 : i32 = u_xlati52;
        let x_1602 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[(x_1597 / 4i)][(x_1599 % 4i)];
        let x_1604 : vec3<f32> = vs_TEXCOORD7;
        let x_1607 : vec4<f32> = u_xlat11;
        let x_1609 : vec3<f32> = ((vec3<f32>(x_1602.x, x_1602.y, x_1602.w) * vec3<f32>(x_1604.x, x_1604.x, x_1604.x)) + vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
        let x_1610 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
        let x_1612 : i32 = u_xlati52;
        let x_1615 : i32 = u_xlati52;
        let x_1619 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1612 + 2i) / 4i)][((x_1615 + 2i) % 4i)];
        let x_1621 : vec3<f32> = vs_TEXCOORD7;
        let x_1624 : vec4<f32> = u_xlat11;
        let x_1626 : vec3<f32> = ((vec3<f32>(x_1619.x, x_1619.y, x_1619.w) * vec3<f32>(x_1621.z, x_1621.z, x_1621.z)) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1631 : i32 = u_xlati52;
        let x_1634 : i32 = u_xlati52;
        let x_1638 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1631 + 3i) / 4i)][((x_1634 + 3i) % 4i)];
        let x_1640 : vec3<f32> = (vec3<f32>(x_1629.x, x_1629.y, x_1629.z) + vec3<f32>(x_1638.x, x_1638.y, x_1638.w));
        let x_1641 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
        let x_1643 : vec4<f32> = u_xlat11;
        let x_1645 : vec4<f32> = u_xlat11;
        let x_1647 : vec2<f32> = (vec2<f32>(x_1643.x, x_1643.y) / vec2<f32>(x_1645.z, x_1645.z));
        let x_1648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
        let x_1650 : vec4<f32> = u_xlat11;
        let x_1653 : vec2<f32> = ((vec2<f32>(x_1650.x, x_1650.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1653.x, x_1653.y, x_1654.z, x_1654.w);
        let x_1656 : vec4<f32> = u_xlat11;
        let x_1660 : vec2<f32> = clamp(vec2<f32>(x_1656.x, x_1656.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
        let x_1663 : i32 = u_xlati47;
        let x_1665 : vec4<f32> = x_808.x_AdditionalLightsCookieAtlasUVRects[x_1663];
        let x_1667 : vec4<f32> = u_xlat11;
        let x_1670 : i32 = u_xlati47;
        let x_1672 : vec4<f32> = x_808.x_AdditionalLightsCookieAtlasUVRects[x_1670];
        let x_1674 : vec2<f32> = ((vec2<f32>(x_1665.x, x_1665.y) * vec2<f32>(x_1667.x, x_1667.y)) + vec2<f32>(x_1672.z, x_1672.w));
        let x_1675 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1674.x, x_1674.y, x_1675.z, x_1675.w);
      } else {
        let x_1678 : i32 = u_xlati50;
        u_xlatb50 = (x_1678 == 1i);
        let x_1680 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1680);
        let x_1682 : i32 = u_xlati50;
        if ((x_1682 != 0i)) {
          let x_1688 : vec3<f32> = vs_TEXCOORD7;
          let x_1690 : i32 = u_xlati52;
          let x_1693 : i32 = u_xlati52;
          let x_1697 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1690 + 1i) / 4i)][((x_1693 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1688.y, x_1688.y) * vec2<f32>(x_1697.x, x_1697.y));
          let x_1700 : i32 = u_xlati52;
          let x_1702 : i32 = u_xlati52;
          let x_1705 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[(x_1700 / 4i)][(x_1702 % 4i)];
          let x_1707 : vec3<f32> = vs_TEXCOORD7;
          let x_1710 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1705.x, x_1705.y) * vec2<f32>(x_1707.x, x_1707.x)) + x_1710);
          let x_1712 : i32 = u_xlati52;
          let x_1715 : i32 = u_xlati52;
          let x_1719 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1712 + 2i) / 4i)][((x_1715 + 2i) % 4i)];
          let x_1721 : vec3<f32> = vs_TEXCOORD7;
          let x_1724 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1719.x, x_1719.y) * vec2<f32>(x_1721.z, x_1721.z)) + x_1724);
          let x_1726 : vec2<f32> = u_xlat39;
          let x_1727 : i32 = u_xlati52;
          let x_1730 : i32 = u_xlati52;
          let x_1734 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1727 + 3i) / 4i)][((x_1730 + 3i) % 4i)];
          u_xlat39 = (x_1726 + vec2<f32>(x_1734.x, x_1734.y));
          let x_1737 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1737 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1740 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1740);
          let x_1742 : i32 = u_xlati47;
          let x_1744 : vec4<f32> = x_808.x_AdditionalLightsCookieAtlasUVRects[x_1742];
          let x_1746 : vec2<f32> = u_xlat39;
          let x_1748 : i32 = u_xlati47;
          let x_1750 : vec4<f32> = x_808.x_AdditionalLightsCookieAtlasUVRects[x_1748];
          let x_1752 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.y) * x_1746) + vec2<f32>(x_1750.z, x_1750.w));
          let x_1753 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1752.x, x_1752.y, x_1753.z, x_1753.w);
        } else {
          let x_1756 : vec3<f32> = vs_TEXCOORD7;
          let x_1758 : i32 = u_xlati52;
          let x_1761 : i32 = u_xlati52;
          let x_1765 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1758 + 1i) / 4i)][((x_1761 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1756.y, x_1756.y, x_1756.y, x_1756.y) * x_1765);
          let x_1767 : i32 = u_xlati52;
          let x_1769 : i32 = u_xlati52;
          let x_1772 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[(x_1767 / 4i)][(x_1769 % 4i)];
          let x_1773 : vec3<f32> = vs_TEXCOORD7;
          let x_1776 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1772 * vec4<f32>(x_1773.x, x_1773.x, x_1773.x, x_1773.x)) + x_1776);
          let x_1778 : i32 = u_xlati52;
          let x_1781 : i32 = u_xlati52;
          let x_1785 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1778 + 2i) / 4i)][((x_1781 + 2i) % 4i)];
          let x_1786 : vec3<f32> = vs_TEXCOORD7;
          let x_1789 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1785 * vec4<f32>(x_1786.z, x_1786.z, x_1786.z, x_1786.z)) + x_1789);
          let x_1791 : vec4<f32> = u_xlat12;
          let x_1792 : i32 = u_xlati52;
          let x_1795 : i32 = u_xlati52;
          let x_1799 : vec4<f32> = x_808.x_AdditionalLightsWorldToLights[((x_1792 + 3i) / 4i)][((x_1795 + 3i) % 4i)];
          u_xlat12 = (x_1791 + x_1799);
          let x_1801 : vec4<f32> = u_xlat12;
          let x_1803 : vec4<f32> = u_xlat12;
          let x_1805 : vec3<f32> = (vec3<f32>(x_1801.x, x_1801.y, x_1801.z) / vec3<f32>(x_1803.w, x_1803.w, x_1803.w));
          let x_1806 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
          let x_1808 : vec4<f32> = u_xlat12;
          let x_1810 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1808.x, x_1808.y, x_1808.z), vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
          let x_1813 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1813);
          let x_1815 : f32 = u_xlat50;
          let x_1817 : vec4<f32> = u_xlat12;
          let x_1819 : vec3<f32> = (vec3<f32>(x_1815, x_1815, x_1815) * vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
          let x_1820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
          let x_1822 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1822.x, x_1822.y, x_1822.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1827 : f32 = u_xlat50;
          u_xlat50 = max(x_1827, 0.00000099999999747524f);
          let x_1830 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1830);
          let x_1832 : f32 = u_xlat50;
          let x_1834 : vec4<f32> = u_xlat12;
          let x_1836 : vec3<f32> = (vec3<f32>(x_1832, x_1832, x_1832) * vec3<f32>(x_1834.z, x_1834.x, x_1834.y));
          let x_1837 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
          let x_1840 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1840);
          let x_1844 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1844, 0.0f, 1.0f);
          let x_1848 : vec4<f32> = u_xlat13;
          let x_1850 : vec4<bool> = (vec4<f32>(x_1848.y, x_1848.z, x_1848.y, x_1848.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1850.x, x_1850.y);
          let x_1853 : bool = u_xlatb39.x;
          if (x_1853) {
            let x_1858 : f32 = u_xlat13.x;
            x_1854 = x_1858;
          } else {
            let x_1861 : f32 = u_xlat13.x;
            x_1854 = -(x_1861);
          }
          let x_1863 : f32 = x_1854;
          u_xlat39.x = x_1863;
          let x_1866 : bool = u_xlatb39.y;
          if (x_1866) {
            let x_1871 : f32 = u_xlat13.x;
            x_1867 = x_1871;
          } else {
            let x_1874 : f32 = u_xlat13.x;
            x_1867 = -(x_1874);
          }
          let x_1876 : f32 = x_1867;
          u_xlat39.y = x_1876;
          let x_1878 : vec4<f32> = u_xlat12;
          let x_1880 : f32 = u_xlat50;
          let x_1883 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(x_1880, x_1880)) + x_1883);
          let x_1885 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1885 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1888 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1888, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1892 : i32 = u_xlati47;
          let x_1894 : vec4<f32> = x_808.x_AdditionalLightsCookieAtlasUVRects[x_1892];
          let x_1896 : vec2<f32> = u_xlat39;
          let x_1898 : i32 = u_xlati47;
          let x_1900 : vec4<f32> = x_808.x_AdditionalLightsCookieAtlasUVRects[x_1898];
          let x_1902 : vec2<f32> = ((vec2<f32>(x_1894.x, x_1894.y) * x_1896) + vec2<f32>(x_1900.z, x_1900.w));
          let x_1903 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
        }
      }
      let x_1910 : vec4<f32> = u_xlat11;
      let x_1912 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1910.x, x_1910.y), 0.0f);
      u_xlat11 = x_1912;
      let x_1914 : bool = u_xlatb7.y;
      if (x_1914) {
        let x_1919 : f32 = u_xlat11.w;
        x_1915 = x_1919;
      } else {
        let x_1922 : f32 = u_xlat11.x;
        x_1915 = x_1922;
      }
      let x_1923 : f32 = x_1915;
      u_xlat50 = x_1923;
      let x_1925 : bool = u_xlatb7.x;
      if (x_1925) {
        let x_1929 : vec4<f32> = u_xlat11;
        x_1926 = vec3<f32>(x_1929.x, x_1929.y, x_1929.z);
      } else {
        let x_1932 : f32 = u_xlat50;
        x_1926 = vec3<f32>(x_1932, x_1932, x_1932);
      }
      let x_1934 : vec3<f32> = x_1926;
      let x_1935 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1941 : vec4<f32> = u_xlat11;
    let x_1943 : i32 = u_xlati47;
    let x_1945 : vec4<f32> = x_1287.x_AdditionalLightsColor[x_1943];
    let x_1947 : vec3<f32> = (vec3<f32>(x_1941.x, x_1941.y, x_1941.z) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
    let x_1950 : f32 = u_xlat48;
    let x_1951 : f32 = u_xlat49;
    u_xlat47 = (x_1950 * x_1951);
    let x_1953 : vec4<f32> = u_xlat1;
    let x_1955 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1958, 0.0f, 1.0f);
    let x_1960 : f32 = u_xlat47;
    let x_1961 : f32 = u_xlat48;
    u_xlat47 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat47;
    let x_1965 : vec4<f32> = u_xlat11;
    let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
    let x_1970 : vec4<f32> = u_xlat9;
    let x_1972 : f32 = u_xlat35;
    let x_1975 : vec3<f32> = u_xlat2;
    let x_1976 : vec3<f32> = ((vec3<f32>(x_1970.x, x_1970.y, x_1970.z) * vec3<f32>(x_1972, x_1972, x_1972)) + x_1975);
    let x_1977 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
    let x_1979 : vec4<f32> = u_xlat9;
    let x_1981 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1979.x, x_1979.y, x_1979.z), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
    let x_1984 : f32 = u_xlat47;
    u_xlat47 = max(x_1984, 1.17549435e-38f);
    let x_1986 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1986);
    let x_1988 : f32 = u_xlat47;
    let x_1990 : vec4<f32> = u_xlat9;
    let x_1992 : vec3<f32> = (vec3<f32>(x_1988, x_1988, x_1988) * vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
    let x_1993 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
    let x_1995 : vec4<f32> = u_xlat1;
    let x_1997 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1995.x, x_1995.y, x_1995.z), vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2000, 0.0f, 1.0f);
    let x_2002 : vec4<f32> = u_xlat10;
    let x_2004 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2002.x, x_2002.y, x_2002.z), vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
    let x_2007 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2007, 0.0f, 1.0f);
    let x_2009 : f32 = u_xlat47;
    let x_2010 : f32 = u_xlat47;
    u_xlat47 = (x_2009 * x_2010);
    let x_2012 : f32 = u_xlat47;
    let x_2014 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2012 * x_2014) + 1.00001001358032226562f);
    let x_2017 : f32 = u_xlat48;
    let x_2018 : f32 = u_xlat48;
    u_xlat48 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat47;
    let x_2021 : f32 = u_xlat47;
    u_xlat47 = (x_2020 * x_2021);
    let x_2023 : f32 = u_xlat48;
    u_xlat48 = max(x_2023, 0.10000000149011611938f);
    let x_2025 : f32 = u_xlat47;
    let x_2026 : f32 = u_xlat48;
    u_xlat47 = (x_2025 * x_2026);
    let x_2028 : f32 = u_xlat45;
    let x_2029 : f32 = u_xlat47;
    u_xlat47 = (x_2028 * x_2029);
    let x_2031 : f32 = u_xlat43;
    let x_2032 : f32 = u_xlat47;
    u_xlat47 = (x_2031 / x_2032);
    let x_2034 : vec4<f32> = u_xlat5;
    let x_2036 : f32 = u_xlat47;
    let x_2039 : vec4<f32> = u_xlat4;
    let x_2041 : vec3<f32> = ((vec3<f32>(x_2034.x, x_2034.y, x_2034.z) * vec3<f32>(x_2036, x_2036, x_2036)) + vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
    let x_2042 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
    let x_2044 : vec4<f32> = u_xlat9;
    let x_2046 : vec4<f32> = u_xlat11;
    let x_2049 : vec4<f32> = u_xlat8;
    let x_2051 : vec3<f32> = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * vec3<f32>(x_2046.x, x_2046.y, x_2046.z)) + vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
    let x_2052 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);

    continuing {
      let x_2054 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2054 + bitcast<u32>(1i));
    }
  }
  let x_2056 : vec4<f32> = u_xlat3;
  let x_2058 : f32 = u_xlat14;
  let x_2061 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2056.x, x_2056.y, x_2056.z) * vec3<f32>(x_2058, x_2058, x_2058)) + vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : vec4<f32> = u_xlat8;
  let x_2066 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) + x_2066);
  let x_2070 : f32 = u_xlat42;
  let x_2072 : vec3<f32> = u_xlat0;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2070, x_2070, x_2070) * x_2072);
  let x_2074 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
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


