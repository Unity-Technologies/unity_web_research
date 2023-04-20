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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_747 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_820 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1010 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1295 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_548 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_903 : f32;
  var x_914 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1432 : f32;
  var x_1442 : f32;
  var txVec1 : vec3<f32>;
  var x_1870 : f32;
  var x_1883 : f32;
  var x_1941 : f32;
  var x_1952 : vec3<f32>;
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
  let x_536 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_536;
  let x_540 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_540;
  let x_544 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_544;
  let x_546 : bool = u_xlatb1;
  if (x_546) {
    let x_551 : vec3<f32> = u_xlat15;
    x_548 = x_551;
  } else {
    let x_553 : vec3<f32> = u_xlat2;
    x_548 = x_553;
  }
  let x_554 : vec3<f32> = x_548;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : vec3<f32> = vs_TEXCOORD3;
  let x_559 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat43;
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_569 : f32 = vs_TEXCOORD7.y;
  let x_571 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_569 * x_571);
  let x_574 : f32 = x_111.unity_MatrixV[0i].z;
  let x_576 : f32 = vs_TEXCOORD7.x;
  let x_578 : f32 = u_xlat43;
  u_xlat43 = ((x_574 * x_576) + x_578);
  let x_581 : f32 = x_111.unity_MatrixV[2i].z;
  let x_583 : f32 = vs_TEXCOORD7.z;
  let x_585 : f32 = u_xlat43;
  u_xlat43 = ((x_581 * x_583) + x_585);
  let x_587 : f32 = u_xlat43;
  let x_590 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_587 + x_590);
  let x_592 : f32 = u_xlat43;
  let x_595 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_592) + -(x_595));
  let x_598 : f32 = u_xlat43;
  u_xlat43 = max(x_598, 0.0f);
  let x_600 : f32 = u_xlat43;
  let x_602 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_600 * x_602);
  let x_609 : vec4<f32> = vs_TEXCOORD0;
  let x_612 : f32 = x_111.x_GlobalMipBias.x;
  let x_613 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_609.z, x_609.w), x_612);
  u_xlat3 = x_613;
  let x_618 : vec4<f32> = vs_TEXCOORD0;
  let x_621 : f32 = x_111.x_GlobalMipBias.x;
  let x_622 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_618.z, x_618.w), x_621);
  let x_623 : vec3<f32> = vec3<f32>(x_622.x, x_622.y, x_622.z);
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : vec3<f32> = u_xlat2;
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_634, vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat44;
  u_xlat44 = (x_638 + 0.5f);
  let x_640 : f32 = u_xlat44;
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = u_xlat3.w;
  u_xlat44 = max(x_648, 0.00009999999747378752f);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : f32 = u_xlat44;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) / vec3<f32>(x_653, x_653, x_653));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_659) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_665 : f32 = u_xlat28;
  let x_666 : f32 = u_xlat44;
  u_xlat45 = (x_665 + -(x_666));
  let x_669 : f32 = u_xlat44;
  let x_671 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat5;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat0;
  let x_685 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_691 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat28;
  u_xlat0.x = (-(x_693) + 1.0f);
  let x_698 : f32 = u_xlat0.x;
  let x_700 : f32 = u_xlat0.x;
  u_xlat28 = (x_698 * x_700);
  let x_702 : f32 = u_xlat28;
  u_xlat28 = max(x_702, 0.0078125f);
  let x_705 : f32 = u_xlat28;
  let x_706 : f32 = u_xlat28;
  u_xlat44 = (x_705 * x_706);
  let x_708 : f32 = u_xlat45;
  u_xlat45 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat45;
  u_xlat45 = clamp(x_710, 0.0f, 1.0f);
  let x_713 : f32 = u_xlat28;
  u_xlat46 = ((x_713 * 4.0f) + 2.0f);
  let x_717 : f32 = u_xlat14;
  u_xlat14 = min(x_717, 1.0f);
  let x_721 : vec4<f32> = vs_TEXCOORD8;
  let x_722 : vec2<f32> = vec2<f32>(x_721.x, x_721.y);
  let x_724 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_722.x, x_722.y, x_724);
  let x_737 : vec3<f32> = txVec0;
  let x_739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_737.xy, x_737.z);
  u_xlat47 = x_739;
  let x_749 : f32 = x_747.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_749) + 1.0f);
  let x_753 : f32 = u_xlat47;
  let x_755 : f32 = x_747.x_MainLightShadowParams.x;
  let x_758 : f32 = u_xlat6.x;
  u_xlat47 = ((x_753 * x_755) + x_758);
  let x_762 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_762);
  let x_768 : f32 = vs_TEXCOORD8.z;
  u_xlatb20.x = (x_768 >= 1.0f);
  let x_772 : bool = u_xlatb20.x;
  let x_773 : bool = u_xlatb6;
  u_xlatb6 = (x_772 | x_773);
  let x_775 : bool = u_xlatb6;
  let x_776 : f32 = u_xlat47;
  u_xlat47 = select(x_776, 1.0f, x_775);
  let x_778 : vec3<f32> = vs_TEXCOORD7;
  let x_780 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_782 : vec3<f32> = (x_778 + -(x_780));
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_787 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_785.x, x_785.y, x_785.z), vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_793 : f32 = u_xlat6.x;
  let x_795 : f32 = x_747.x_MainLightShadowParams.z;
  let x_798 : f32 = x_747.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_793 * x_795) + x_798);
  let x_802 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_802, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat47;
  u_xlat34 = (-(x_806) + 1.0f);
  let x_810 : f32 = u_xlat20.x;
  let x_811 : f32 = u_xlat34;
  let x_813 : f32 = u_xlat47;
  u_xlat47 = ((x_810 * x_811) + x_813);
  let x_822 : f32 = x_820.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_822 == -1.0f));
  let x_826 : bool = u_xlatb20.x;
  if (x_826) {
    let x_829 : vec3<f32> = vs_TEXCOORD7;
    let x_832 : vec4<f32> = x_820.x_MainLightWorldToLight[1i];
    let x_834 : vec2<f32> = (vec2<f32>(x_829.y, x_829.y) * vec2<f32>(x_832.x, x_832.y));
    let x_835 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_834.x, x_834.y, x_835.z);
    let x_838 : vec4<f32> = x_820.x_MainLightWorldToLight[0i];
    let x_840 : vec3<f32> = vs_TEXCOORD7;
    let x_843 : vec3<f32> = u_xlat20;
    let x_845 : vec2<f32> = ((vec2<f32>(x_838.x, x_838.y) * vec2<f32>(x_840.x, x_840.x)) + vec2<f32>(x_843.x, x_843.y));
    let x_846 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_845.x, x_845.y, x_846.z);
    let x_849 : vec4<f32> = x_820.x_MainLightWorldToLight[2i];
    let x_851 : vec3<f32> = vs_TEXCOORD7;
    let x_854 : vec3<f32> = u_xlat20;
    let x_856 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_851.z, x_851.z)) + vec2<f32>(x_854.x, x_854.y));
    let x_857 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_856.x, x_856.y, x_857.z);
    let x_859 : vec3<f32> = u_xlat20;
    let x_862 : vec4<f32> = x_820.x_MainLightWorldToLight[3i];
    let x_864 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) + vec2<f32>(x_862.x, x_862.y));
    let x_865 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_864.x, x_864.y, x_865.z);
    let x_867 : vec3<f32> = u_xlat20;
    let x_870 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_871 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_870.x, x_870.y, x_871.z);
    let x_878 : vec3<f32> = u_xlat20;
    let x_881 : f32 = x_111.x_GlobalMipBias.x;
    let x_882 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_878.x, x_878.y), x_881);
    u_xlat7 = x_882;
    let x_884 : f32 = x_820.x_MainLightCookieTextureFormat;
    let x_886 : f32 = x_820.x_MainLightCookieTextureFormat;
    let x_888 : f32 = x_820.x_MainLightCookieTextureFormat;
    let x_890 : f32 = x_820.x_MainLightCookieTextureFormat;
    let x_891 : vec4<f32> = vec4<f32>(x_884, x_886, x_888, x_890);
    let x_898 : vec4<bool> = (vec4<f32>(x_891.x, x_891.y, x_891.z, x_891.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_898.x, x_898.y);
    let x_901 : bool = u_xlatb20.y;
    if (x_901) {
      let x_907 : f32 = u_xlat7.w;
      x_903 = x_907;
    } else {
      let x_910 : f32 = u_xlat7.x;
      x_903 = x_910;
    }
    let x_911 : f32 = x_903;
    u_xlat34 = x_911;
    let x_913 : bool = u_xlatb20.x;
    if (x_913) {
      let x_917 : vec4<f32> = u_xlat7;
      x_914 = vec3<f32>(x_917.x, x_917.y, x_917.z);
    } else {
      let x_920 : f32 = u_xlat34;
      x_914 = vec3<f32>(x_920, x_920, x_920);
    }
    let x_922 : vec3<f32> = x_914;
    u_xlat20 = x_922;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_927 : vec3<f32> = u_xlat20;
  let x_929 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat20 = (x_927 * vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat1;
  let x_935 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_932.x, x_932.y, x_932.z)), x_935);
  let x_939 : f32 = u_xlat7.x;
  let x_941 : f32 = u_xlat7.x;
  u_xlat7.x = (x_939 + x_941);
  let x_944 : vec3<f32> = u_xlat2;
  let x_945 : vec4<f32> = u_xlat7;
  let x_949 : vec4<f32> = u_xlat1;
  let x_952 : vec3<f32> = ((x_944 * -(vec3<f32>(x_945.x, x_945.x, x_945.x))) + -(vec3<f32>(x_949.x, x_949.y, x_949.z)));
  let x_953 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_956 : vec3<f32> = u_xlat2;
  let x_957 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(x_956, vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : f32 = u_xlat49;
  u_xlat49 = clamp(x_960, 0.0f, 1.0f);
  let x_962 : f32 = u_xlat49;
  u_xlat49 = (-(x_962) + 1.0f);
  let x_965 : f32 = u_xlat49;
  let x_966 : f32 = u_xlat49;
  u_xlat49 = (x_965 * x_966);
  let x_968 : f32 = u_xlat49;
  let x_969 : f32 = u_xlat49;
  u_xlat49 = (x_968 * x_969);
  let x_972 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_972) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_980 : f32 = u_xlat0.x;
  let x_982 : f32 = u_xlat8.x;
  u_xlat0.x = (x_980 * x_982);
  let x_986 : f32 = u_xlat0.x;
  u_xlat0.x = (x_986 * 6.0f);
  let x_998 : vec4<f32> = u_xlat7;
  let x_1001 : f32 = u_xlat0.x;
  let x_1002 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_998.x, x_998.y, x_998.z), x_1001);
  u_xlat8 = x_1002;
  let x_1004 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1004 + -1.0f);
  let x_1012 : f32 = x_1010.unity_SpecCube0_HDR.w;
  let x_1014 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1012 * x_1014) + 1.0f);
  let x_1019 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1019, 0.0f);
  let x_1023 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1023);
  let x_1027 : f32 = u_xlat0.x;
  let x_1029 : f32 = x_1010.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1027 * x_1029);
  let x_1033 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1033);
  let x_1037 : f32 = u_xlat0.x;
  let x_1039 : f32 = x_1010.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1037 * x_1039);
  let x_1042 : vec4<f32> = u_xlat8;
  let x_1044 : vec3<f32> = u_xlat0;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(x_1044.x, x_1044.x, x_1044.x));
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : f32 = u_xlat28;
  let x_1051 : f32 = u_xlat28;
  let x_1055 : vec2<f32> = ((vec2<f32>(x_1049, x_1049) * vec2<f32>(x_1051, x_1051)) + vec2<f32>(-1.0f, 1.0f));
  let x_1056 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1055.x, x_1056.y, x_1055.y);
  let x_1059 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1059);
  let x_1061 : vec4<f32> = u_xlat5;
  let x_1064 : f32 = u_xlat45;
  let x_1066 : vec3<f32> = (-(vec3<f32>(x_1061.x, x_1061.y, x_1061.z)) + vec3<f32>(x_1064, x_1064, x_1064));
  let x_1067 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : f32 = u_xlat49;
  let x_1071 : vec4<f32> = u_xlat8;
  let x_1074 : vec4<f32> = u_xlat5;
  let x_1076 : vec3<f32> = ((vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z)) + vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : f32 = u_xlat28;
  let x_1081 : vec4<f32> = u_xlat8;
  let x_1083 : vec3<f32> = (vec3<f32>(x_1079, x_1079, x_1079) * vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat7;
  let x_1088 : vec4<f32> = u_xlat8;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec4<f32> = u_xlat3;
  let x_1095 : vec4<f32> = u_xlat4;
  let x_1098 : vec4<f32> = u_xlat7;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1093.x, x_1093.y, x_1093.z) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z)) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : f32 = u_xlat47;
  let x_1105 : f32 = x_1010.unity_LightData.z;
  u_xlat28 = (x_1103 * x_1105);
  let x_1107 : vec3<f32> = u_xlat2;
  let x_1109 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat45 = dot(x_1107, vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1112, 0.0f, 1.0f);
  let x_1114 : f32 = u_xlat28;
  let x_1115 : f32 = u_xlat45;
  u_xlat28 = (x_1114 * x_1115);
  let x_1117 : f32 = u_xlat28;
  let x_1119 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1117, x_1117, x_1117) * x_1119);
  let x_1121 : vec4<f32> = u_xlat1;
  let x_1124 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) + vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec4<f32> = u_xlat7;
  let x_1131 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1129.x, x_1129.y, x_1129.z), vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : f32 = u_xlat28;
  u_xlat28 = max(x_1134, 1.17549435e-38f);
  let x_1137 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1137);
  let x_1139 : f32 = u_xlat28;
  let x_1141 : vec4<f32> = u_xlat7;
  let x_1143 : vec3<f32> = (vec3<f32>(x_1139, x_1139, x_1139) * vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec3<f32> = u_xlat2;
  let x_1147 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1146, vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1150, 0.0f, 1.0f);
  let x_1153 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1155 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1153.x, x_1153.y, x_1153.z), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1158, 0.0f, 1.0f);
  let x_1160 : f32 = u_xlat28;
  let x_1161 : f32 = u_xlat28;
  u_xlat28 = (x_1160 * x_1161);
  let x_1163 : f32 = u_xlat28;
  let x_1165 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1163 * x_1165) + 1.00001001358032226562f);
  let x_1169 : f32 = u_xlat45;
  let x_1170 : f32 = u_xlat45;
  u_xlat45 = (x_1169 * x_1170);
  let x_1172 : f32 = u_xlat28;
  let x_1173 : f32 = u_xlat28;
  u_xlat28 = (x_1172 * x_1173);
  let x_1175 : f32 = u_xlat45;
  u_xlat45 = max(x_1175, 0.10000000149011611938f);
  let x_1178 : f32 = u_xlat28;
  let x_1179 : f32 = u_xlat45;
  u_xlat28 = (x_1178 * x_1179);
  let x_1181 : f32 = u_xlat46;
  let x_1182 : f32 = u_xlat28;
  u_xlat28 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat44;
  let x_1185 : f32 = u_xlat28;
  u_xlat28 = (x_1184 / x_1185);
  let x_1187 : vec4<f32> = u_xlat5;
  let x_1189 : f32 = u_xlat28;
  let x_1192 : vec4<f32> = u_xlat4;
  let x_1194 : vec3<f32> = ((vec3<f32>(x_1187.x, x_1187.y, x_1187.z) * vec3<f32>(x_1189, x_1189, x_1189)) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : vec3<f32> = u_xlat20;
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1197 * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1202 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1204 : f32 = x_1010.unity_LightData.y;
  u_xlat28 = min(x_1202, x_1204);
  let x_1208 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1208));
  let x_1212 : f32 = u_xlat6.x;
  let x_1214 : f32 = x_747.x_AdditionalShadowFadeParams.x;
  let x_1217 : f32 = x_747.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1212 * x_1214) + x_1217);
  let x_1219 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1219, 0.0f, 1.0f);
  let x_1223 : f32 = x_820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1225 : f32 = x_820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1227 : f32 = x_820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1229 : f32 = x_820.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1230 : vec4<f32> = vec4<f32>(x_1223, x_1225, x_1227, x_1229);
  let x_1236 : vec4<bool> = (vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1236.x, x_1236.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1248 : u32 = u_xlatu_loop_1;
    let x_1249 : u32 = u_xlatu28;
    if ((x_1248 < x_1249)) {
    } else {
      break;
    }
    let x_1252 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1252 >> 2u);
    let x_1256 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1256 & 3u));
    let x_1259 : u32 = u_xlatu6;
    let x_1262 : vec4<f32> = x_1010.unity_LightIndices[bitcast<i32>(x_1259)];
    let x_1272 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1277 : vec4<u32> = indexable[x_1272];
    u_xlat6.x = dot(x_1262, bitcast<vec4<f32>>(x_1277));
    let x_1283 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1283);
    let x_1285 : vec3<f32> = vs_TEXCOORD7;
    let x_1296 : i32 = u_xlati6;
    let x_1298 : vec4<f32> = x_1295.x_AdditionalLightsPosition[x_1296];
    let x_1301 : i32 = u_xlati6;
    let x_1303 : vec4<f32> = x_1295.x_AdditionalLightsPosition[x_1301];
    let x_1305 : vec3<f32> = ((-(x_1285) * vec3<f32>(x_1298.w, x_1298.w, x_1298.w)) + vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
    let x_1306 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
    let x_1309 : vec4<f32> = u_xlat9;
    let x_1311 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1309.x, x_1309.y, x_1309.z), vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
    let x_1314 : f32 = u_xlat35;
    u_xlat35 = max(x_1314, 0.00006103515625f);
    let x_1316 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1316);
    let x_1318 : f32 = u_xlat49;
    let x_1320 : vec4<f32> = u_xlat9;
    let x_1322 : vec3<f32> = (vec3<f32>(x_1318, x_1318, x_1318) * vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
    let x_1323 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
    let x_1326 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1326);
    let x_1328 : f32 = u_xlat35;
    let x_1329 : i32 = u_xlati6;
    let x_1331 : f32 = x_1295.x_AdditionalLightsAttenuation[x_1329].x;
    u_xlat35 = (x_1328 * x_1331);
    let x_1333 : f32 = u_xlat35;
    let x_1335 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1333) * x_1335) + 1.0f);
    let x_1338 : f32 = u_xlat35;
    u_xlat35 = max(x_1338, 0.0f);
    let x_1340 : f32 = u_xlat35;
    let x_1341 : f32 = u_xlat35;
    u_xlat35 = (x_1340 * x_1341);
    let x_1343 : f32 = u_xlat35;
    let x_1344 : f32 = u_xlat50;
    u_xlat35 = (x_1343 * x_1344);
    let x_1346 : i32 = u_xlati6;
    let x_1348 : vec4<f32> = x_1295.x_AdditionalLightsSpotDir[x_1346];
    let x_1350 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : f32 = u_xlat50;
    let x_1354 : i32 = u_xlati6;
    let x_1356 : f32 = x_1295.x_AdditionalLightsAttenuation[x_1354].z;
    let x_1358 : i32 = u_xlati6;
    let x_1360 : f32 = x_1295.x_AdditionalLightsAttenuation[x_1358].w;
    u_xlat50 = ((x_1353 * x_1356) + x_1360);
    let x_1362 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1362, 0.0f, 1.0f);
    let x_1364 : f32 = u_xlat50;
    let x_1365 : f32 = u_xlat50;
    u_xlat50 = (x_1364 * x_1365);
    let x_1367 : f32 = u_xlat35;
    let x_1368 : f32 = u_xlat50;
    u_xlat35 = (x_1367 * x_1368);
    let x_1371 : i32 = u_xlati6;
    let x_1373 : f32 = x_747.x_AdditionalShadowParams[x_1371].w;
    u_xlati50 = i32(x_1373);
    let x_1376 : i32 = u_xlati50;
    u_xlatb51 = (x_1376 >= 0i);
    let x_1378 : bool = u_xlatb51;
    if (x_1378) {
      let x_1382 : i32 = u_xlati6;
      let x_1384 : f32 = x_747.x_AdditionalShadowParams[x_1382].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1384, x_1384, x_1384, x_1384))));
      let x_1388 : bool = u_xlatb51;
      if (x_1388) {
        let x_1393 : vec4<f32> = u_xlat10;
        let x_1396 : vec4<f32> = u_xlat10;
        let x_1399 : vec4<bool> = (abs(vec4<f32>(x_1393.z, x_1393.z, x_1393.y, x_1393.z)) >= abs(vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.x)));
        let x_1401 : vec3<bool> = vec3<bool>(x_1399.x, x_1399.y, x_1399.z);
        let x_1402 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
        let x_1405 : bool = u_xlatb11.y;
        let x_1407 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1405 & x_1407);
        let x_1409 : vec4<f32> = u_xlat10;
        let x_1412 : vec4<bool> = (-(vec4<f32>(x_1409.z, x_1409.y, x_1409.z, x_1409.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1413 : vec3<bool> = vec3<bool>(x_1412.x, x_1412.y, x_1412.w);
        let x_1414 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1413.x, x_1413.y, x_1414.z, x_1413.z);
        let x_1417 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1417);
        let x_1422 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1422);
        let x_1428 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1428);
        let x_1431 : bool = u_xlatb11.z;
        if (x_1431) {
          let x_1436 : f32 = u_xlat11.y;
          x_1432 = x_1436;
        } else {
          let x_1438 : f32 = u_xlat52;
          x_1432 = x_1438;
        }
        let x_1439 : f32 = x_1432;
        u_xlat52 = x_1439;
        let x_1441 : bool = u_xlatb51;
        if (x_1441) {
          let x_1446 : f32 = u_xlat11.x;
          x_1442 = x_1446;
        } else {
          let x_1448 : f32 = u_xlat52;
          x_1442 = x_1448;
        }
        let x_1449 : f32 = x_1442;
        u_xlat51 = x_1449;
        let x_1450 : i32 = u_xlati6;
        let x_1452 : f32 = x_747.x_AdditionalShadowParams[x_1450].w;
        u_xlat52 = trunc(x_1452);
        let x_1454 : f32 = u_xlat51;
        let x_1455 : f32 = u_xlat52;
        u_xlat51 = (x_1454 + x_1455);
        let x_1457 : f32 = u_xlat51;
        u_xlati50 = i32(x_1457);
      }
      let x_1459 : i32 = u_xlati50;
      u_xlati50 = (x_1459 << bitcast<u32>(2i));
      let x_1461 : vec3<f32> = vs_TEXCOORD7;
      let x_1463 : i32 = u_xlati50;
      let x_1466 : i32 = u_xlati50;
      let x_1470 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[((x_1463 + 1i) / 4i)][((x_1466 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1461.y, x_1461.y, x_1461.y, x_1461.y) * x_1470);
      let x_1472 : i32 = u_xlati50;
      let x_1474 : i32 = u_xlati50;
      let x_1477 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[(x_1472 / 4i)][(x_1474 % 4i)];
      let x_1478 : vec3<f32> = vs_TEXCOORD7;
      let x_1481 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1477 * vec4<f32>(x_1478.x, x_1478.x, x_1478.x, x_1478.x)) + x_1481);
      let x_1483 : i32 = u_xlati50;
      let x_1486 : i32 = u_xlati50;
      let x_1490 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[((x_1483 + 2i) / 4i)][((x_1486 + 2i) % 4i)];
      let x_1491 : vec3<f32> = vs_TEXCOORD7;
      let x_1494 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1490 * vec4<f32>(x_1491.z, x_1491.z, x_1491.z, x_1491.z)) + x_1494);
      let x_1496 : vec4<f32> = u_xlat11;
      let x_1497 : i32 = u_xlati50;
      let x_1500 : i32 = u_xlati50;
      let x_1504 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[((x_1497 + 3i) / 4i)][((x_1500 + 3i) % 4i)];
      u_xlat11 = (x_1496 + x_1504);
      let x_1506 : vec4<f32> = u_xlat11;
      let x_1508 : vec4<f32> = u_xlat11;
      let x_1510 : vec3<f32> = (vec3<f32>(x_1506.x, x_1506.y, x_1506.z) / vec3<f32>(x_1508.w, x_1508.w, x_1508.w));
      let x_1511 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
      let x_1514 : vec4<f32> = u_xlat11;
      let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
      let x_1517 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
      let x_1525 : vec3<f32> = txVec1;
      let x_1527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
      u_xlat50 = x_1527;
      let x_1528 : i32 = u_xlati6;
      let x_1530 : f32 = x_747.x_AdditionalShadowParams[x_1528].x;
      u_xlat51 = (1.0f + -(x_1530));
      let x_1533 : f32 = u_xlat50;
      let x_1534 : i32 = u_xlati6;
      let x_1536 : f32 = x_747.x_AdditionalShadowParams[x_1534].x;
      let x_1538 : f32 = u_xlat51;
      u_xlat50 = ((x_1533 * x_1536) + x_1538);
      let x_1541 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1541);
      let x_1545 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1545 >= 1.0f);
      let x_1547 : bool = u_xlatb51;
      let x_1548 : bool = u_xlatb52;
      u_xlatb51 = (x_1547 | x_1548);
      let x_1550 : bool = u_xlatb51;
      let x_1551 : f32 = u_xlat50;
      u_xlat50 = select(x_1551, 1.0f, x_1550);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1554 : f32 = u_xlat50;
    u_xlat51 = (-(x_1554) + 1.0f);
    let x_1557 : f32 = u_xlat45;
    let x_1558 : f32 = u_xlat51;
    let x_1560 : f32 = u_xlat50;
    u_xlat50 = ((x_1557 * x_1558) + x_1560);
    let x_1563 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1563 & 31i)));
    let x_1566 : i32 = u_xlati51;
    let x_1569 : f32 = x_820.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1566) & bitcast<u32>(x_1569)));
    let x_1573 : i32 = u_xlati51;
    if ((x_1573 != 0i)) {
      let x_1577 : i32 = u_xlati6;
      let x_1579 : f32 = x_820.x_AdditionalLightsLightTypes[x_1577].el;
      u_xlati51 = i32(x_1579);
      let x_1582 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1582 != 0i));
      let x_1586 : i32 = u_xlati6;
      u_xlati11 = (x_1586 << bitcast<u32>(2i));
      let x_1588 : i32 = u_xlati52;
      if ((x_1588 != 0i)) {
        let x_1593 : vec3<f32> = vs_TEXCOORD7;
        let x_1595 : i32 = u_xlati11;
        let x_1598 : i32 = u_xlati11;
        let x_1602 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1595 + 1i) / 4i)][((x_1598 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1593.y, x_1593.y, x_1593.y) * vec3<f32>(x_1602.x, x_1602.y, x_1602.w));
        let x_1605 : i32 = u_xlati11;
        let x_1607 : i32 = u_xlati11;
        let x_1610 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[(x_1605 / 4i)][(x_1607 % 4i)];
        let x_1612 : vec3<f32> = vs_TEXCOORD7;
        let x_1615 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1610.x, x_1610.y, x_1610.w) * vec3<f32>(x_1612.x, x_1612.x, x_1612.x)) + x_1615);
        let x_1617 : i32 = u_xlati11;
        let x_1620 : i32 = u_xlati11;
        let x_1624 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1617 + 2i) / 4i)][((x_1620 + 2i) % 4i)];
        let x_1626 : vec3<f32> = vs_TEXCOORD7;
        let x_1629 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1624.x, x_1624.y, x_1624.w) * vec3<f32>(x_1626.z, x_1626.z, x_1626.z)) + x_1629);
        let x_1631 : vec3<f32> = u_xlat25;
        let x_1632 : i32 = u_xlati11;
        let x_1635 : i32 = u_xlati11;
        let x_1639 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1632 + 3i) / 4i)][((x_1635 + 3i) % 4i)];
        u_xlat25 = (x_1631 + vec3<f32>(x_1639.x, x_1639.y, x_1639.w));
        let x_1642 : vec3<f32> = u_xlat25;
        let x_1644 : vec3<f32> = u_xlat25;
        let x_1646 : vec2<f32> = (vec2<f32>(x_1642.x, x_1642.y) / vec2<f32>(x_1644.z, x_1644.z));
        let x_1647 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1646.x, x_1646.y, x_1647.z);
        let x_1649 : vec3<f32> = u_xlat25;
        let x_1652 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1653 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1652.x, x_1652.y, x_1653.z);
        let x_1655 : vec3<f32> = u_xlat25;
        let x_1659 : vec2<f32> = clamp(vec2<f32>(x_1655.x, x_1655.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1660 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1659.x, x_1659.y, x_1660.z);
        let x_1662 : i32 = u_xlati6;
        let x_1664 : vec4<f32> = x_820.x_AdditionalLightsCookieAtlasUVRects[x_1662];
        let x_1666 : vec3<f32> = u_xlat25;
        let x_1669 : i32 = u_xlati6;
        let x_1671 : vec4<f32> = x_820.x_AdditionalLightsCookieAtlasUVRects[x_1669];
        let x_1673 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1666.x, x_1666.y)) + vec2<f32>(x_1671.z, x_1671.w));
        let x_1674 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1673.x, x_1673.y, x_1674.z);
      } else {
        let x_1677 : i32 = u_xlati51;
        u_xlatb51 = (x_1677 == 1i);
        let x_1679 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1679);
        let x_1681 : i32 = u_xlati51;
        if ((x_1681 != 0i)) {
          let x_1685 : vec3<f32> = vs_TEXCOORD7;
          let x_1687 : i32 = u_xlati11;
          let x_1690 : i32 = u_xlati11;
          let x_1694 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1687 + 1i) / 4i)][((x_1690 + 1i) % 4i)];
          let x_1696 : vec2<f32> = (vec2<f32>(x_1685.y, x_1685.y) * vec2<f32>(x_1694.x, x_1694.y));
          let x_1697 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
          let x_1699 : i32 = u_xlati11;
          let x_1701 : i32 = u_xlati11;
          let x_1704 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[(x_1699 / 4i)][(x_1701 % 4i)];
          let x_1706 : vec3<f32> = vs_TEXCOORD7;
          let x_1709 : vec4<f32> = u_xlat12;
          let x_1711 : vec2<f32> = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1706.x, x_1706.x)) + vec2<f32>(x_1709.x, x_1709.y));
          let x_1712 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1711.x, x_1711.y, x_1712.z, x_1712.w);
          let x_1714 : i32 = u_xlati11;
          let x_1717 : i32 = u_xlati11;
          let x_1721 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1714 + 2i) / 4i)][((x_1717 + 2i) % 4i)];
          let x_1723 : vec3<f32> = vs_TEXCOORD7;
          let x_1726 : vec4<f32> = u_xlat12;
          let x_1728 : vec2<f32> = ((vec2<f32>(x_1721.x, x_1721.y) * vec2<f32>(x_1723.z, x_1723.z)) + vec2<f32>(x_1726.x, x_1726.y));
          let x_1729 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
          let x_1731 : vec4<f32> = u_xlat12;
          let x_1733 : i32 = u_xlati11;
          let x_1736 : i32 = u_xlati11;
          let x_1740 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1733 + 3i) / 4i)][((x_1736 + 3i) % 4i)];
          let x_1742 : vec2<f32> = (vec2<f32>(x_1731.x, x_1731.y) + vec2<f32>(x_1740.x, x_1740.y));
          let x_1743 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
          let x_1745 : vec4<f32> = u_xlat12;
          let x_1748 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1749 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
          let x_1751 : vec4<f32> = u_xlat12;
          let x_1753 : vec2<f32> = fract(vec2<f32>(x_1751.x, x_1751.y));
          let x_1754 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
          let x_1756 : i32 = u_xlati6;
          let x_1758 : vec4<f32> = x_820.x_AdditionalLightsCookieAtlasUVRects[x_1756];
          let x_1760 : vec4<f32> = u_xlat12;
          let x_1763 : i32 = u_xlati6;
          let x_1765 : vec4<f32> = x_820.x_AdditionalLightsCookieAtlasUVRects[x_1763];
          let x_1767 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1760.x, x_1760.y)) + vec2<f32>(x_1765.z, x_1765.w));
          let x_1768 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1767.x, x_1767.y, x_1768.z);
        } else {
          let x_1771 : vec3<f32> = vs_TEXCOORD7;
          let x_1773 : i32 = u_xlati11;
          let x_1776 : i32 = u_xlati11;
          let x_1780 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1773 + 1i) / 4i)][((x_1776 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1771.y, x_1771.y, x_1771.y, x_1771.y) * x_1780);
          let x_1782 : i32 = u_xlati11;
          let x_1784 : i32 = u_xlati11;
          let x_1787 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[(x_1782 / 4i)][(x_1784 % 4i)];
          let x_1788 : vec3<f32> = vs_TEXCOORD7;
          let x_1791 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1787 * vec4<f32>(x_1788.x, x_1788.x, x_1788.x, x_1788.x)) + x_1791);
          let x_1793 : i32 = u_xlati11;
          let x_1796 : i32 = u_xlati11;
          let x_1800 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1793 + 2i) / 4i)][((x_1796 + 2i) % 4i)];
          let x_1801 : vec3<f32> = vs_TEXCOORD7;
          let x_1804 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1800 * vec4<f32>(x_1801.z, x_1801.z, x_1801.z, x_1801.z)) + x_1804);
          let x_1806 : vec4<f32> = u_xlat12;
          let x_1807 : i32 = u_xlati11;
          let x_1810 : i32 = u_xlati11;
          let x_1814 : vec4<f32> = x_820.x_AdditionalLightsWorldToLights[((x_1807 + 3i) / 4i)][((x_1810 + 3i) % 4i)];
          u_xlat12 = (x_1806 + x_1814);
          let x_1816 : vec4<f32> = u_xlat12;
          let x_1818 : vec4<f32> = u_xlat12;
          let x_1820 : vec3<f32> = (vec3<f32>(x_1816.x, x_1816.y, x_1816.z) / vec3<f32>(x_1818.w, x_1818.w, x_1818.w));
          let x_1821 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
          let x_1823 : vec4<f32> = u_xlat12;
          let x_1825 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
          let x_1828 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1828);
          let x_1830 : f32 = u_xlat51;
          let x_1832 : vec4<f32> = u_xlat12;
          let x_1834 : vec3<f32> = (vec3<f32>(x_1830, x_1830, x_1830) * vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
          let x_1835 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
          let x_1837 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1837.x, x_1837.y, x_1837.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1842 : f32 = u_xlat51;
          u_xlat51 = max(x_1842, 0.00000099999999747524f);
          let x_1845 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1845);
          let x_1847 : f32 = u_xlat51;
          let x_1849 : vec4<f32> = u_xlat12;
          let x_1851 : vec3<f32> = (vec3<f32>(x_1847, x_1847, x_1847) * vec3<f32>(x_1849.z, x_1849.x, x_1849.y));
          let x_1852 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
          let x_1855 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1855);
          let x_1859 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1859, 0.0f, 1.0f);
          let x_1862 : vec4<f32> = u_xlat13;
          let x_1864 : vec4<bool> = (vec4<f32>(x_1862.y, x_1862.y, x_1862.y, x_1862.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1865 : vec2<bool> = vec2<bool>(x_1864.x, x_1864.w);
          let x_1866 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1865.x, x_1866.y, x_1866.z, x_1865.y);
          let x_1869 : bool = u_xlatb11.x;
          if (x_1869) {
            let x_1874 : f32 = u_xlat13.x;
            x_1870 = x_1874;
          } else {
            let x_1877 : f32 = u_xlat13.x;
            x_1870 = -(x_1877);
          }
          let x_1879 : f32 = x_1870;
          u_xlat11.x = x_1879;
          let x_1882 : bool = u_xlatb11.w;
          if (x_1882) {
            let x_1887 : f32 = u_xlat13.x;
            x_1883 = x_1887;
          } else {
            let x_1890 : f32 = u_xlat13.x;
            x_1883 = -(x_1890);
          }
          let x_1892 : f32 = x_1883;
          u_xlat11.w = x_1892;
          let x_1894 : vec4<f32> = u_xlat12;
          let x_1896 : f32 = u_xlat51;
          let x_1899 : vec4<f32> = u_xlat11;
          let x_1901 : vec2<f32> = ((vec2<f32>(x_1894.x, x_1894.y) * vec2<f32>(x_1896, x_1896)) + vec2<f32>(x_1899.x, x_1899.w));
          let x_1902 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1901.x, x_1902.y, x_1902.z, x_1901.y);
          let x_1904 : vec4<f32> = u_xlat11;
          let x_1907 : vec2<f32> = ((vec2<f32>(x_1904.x, x_1904.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1908 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1907.x, x_1908.y, x_1908.z, x_1907.y);
          let x_1910 : vec4<f32> = u_xlat11;
          let x_1914 : vec2<f32> = clamp(vec2<f32>(x_1910.x, x_1910.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1915 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1914.x, x_1915.y, x_1915.z, x_1914.y);
          let x_1917 : i32 = u_xlati6;
          let x_1919 : vec4<f32> = x_820.x_AdditionalLightsCookieAtlasUVRects[x_1917];
          let x_1921 : vec4<f32> = u_xlat11;
          let x_1924 : i32 = u_xlati6;
          let x_1926 : vec4<f32> = x_820.x_AdditionalLightsCookieAtlasUVRects[x_1924];
          let x_1928 : vec2<f32> = ((vec2<f32>(x_1919.x, x_1919.y) * vec2<f32>(x_1921.x, x_1921.w)) + vec2<f32>(x_1926.z, x_1926.w));
          let x_1929 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1928.x, x_1928.y, x_1929.z);
        }
      }
      let x_1936 : vec3<f32> = u_xlat25;
      let x_1938 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1936.x, x_1936.y), 0.0f);
      u_xlat11 = x_1938;
      let x_1940 : bool = u_xlatb7.y;
      if (x_1940) {
        let x_1945 : f32 = u_xlat11.w;
        x_1941 = x_1945;
      } else {
        let x_1948 : f32 = u_xlat11.x;
        x_1941 = x_1948;
      }
      let x_1949 : f32 = x_1941;
      u_xlat51 = x_1949;
      let x_1951 : bool = u_xlatb7.x;
      if (x_1951) {
        let x_1955 : vec4<f32> = u_xlat11;
        x_1952 = vec3<f32>(x_1955.x, x_1955.y, x_1955.z);
      } else {
        let x_1958 : f32 = u_xlat51;
        x_1952 = vec3<f32>(x_1958, x_1958, x_1958);
      }
      let x_1960 : vec3<f32> = x_1952;
      let x_1961 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1967 : vec4<f32> = u_xlat11;
    let x_1969 : i32 = u_xlati6;
    let x_1971 : vec4<f32> = x_1295.x_AdditionalLightsColor[x_1969];
    let x_1973 : vec3<f32> = (vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
    let x_1974 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
    let x_1976 : f32 = u_xlat35;
    let x_1977 : f32 = u_xlat50;
    u_xlat6.x = (x_1976 * x_1977);
    let x_1980 : vec3<f32> = u_xlat2;
    let x_1981 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(x_1980, vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
    let x_1984 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1984, 0.0f, 1.0f);
    let x_1987 : f32 = u_xlat6.x;
    let x_1988 : f32 = u_xlat35;
    u_xlat6.x = (x_1987 * x_1988);
    let x_1991 : vec4<f32> = u_xlat6;
    let x_1993 : vec4<f32> = u_xlat11;
    let x_1995 : vec3<f32> = (vec3<f32>(x_1991.x, x_1991.x, x_1991.x) * vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1996 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
    let x_1998 : vec4<f32> = u_xlat9;
    let x_2000 : f32 = u_xlat49;
    let x_2003 : vec4<f32> = u_xlat1;
    let x_2005 : vec3<f32> = ((vec3<f32>(x_1998.x, x_1998.y, x_1998.z) * vec3<f32>(x_2000, x_2000, x_2000)) + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
    let x_2006 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
    let x_2008 : vec4<f32> = u_xlat9;
    let x_2010 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2008.x, x_2008.y, x_2008.z), vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
    let x_2015 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2015, 1.17549435e-38f);
    let x_2019 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2019);
    let x_2022 : vec4<f32> = u_xlat6;
    let x_2024 : vec4<f32> = u_xlat9;
    let x_2026 : vec3<f32> = (vec3<f32>(x_2022.x, x_2022.x, x_2022.x) * vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
    let x_2029 : vec3<f32> = u_xlat2;
    let x_2030 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(x_2029, vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
    let x_2035 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2035, 0.0f, 1.0f);
    let x_2038 : vec4<f32> = u_xlat10;
    let x_2040 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2038.x, x_2038.y, x_2038.z), vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2043, 0.0f, 1.0f);
    let x_2046 : f32 = u_xlat6.x;
    let x_2048 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2046 * x_2048);
    let x_2052 : f32 = u_xlat6.x;
    let x_2054 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_2052 * x_2054) + 1.00001001358032226562f);
    let x_2058 : f32 = u_xlat35;
    let x_2059 : f32 = u_xlat35;
    u_xlat35 = (x_2058 * x_2059);
    let x_2062 : f32 = u_xlat6.x;
    let x_2064 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2062 * x_2064);
    let x_2067 : f32 = u_xlat35;
    u_xlat35 = max(x_2067, 0.10000000149011611938f);
    let x_2070 : f32 = u_xlat6.x;
    let x_2071 : f32 = u_xlat35;
    u_xlat6.x = (x_2070 * x_2071);
    let x_2074 : f32 = u_xlat46;
    let x_2076 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2074 * x_2076);
    let x_2079 : f32 = u_xlat44;
    let x_2081 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2079 / x_2081);
    let x_2084 : vec4<f32> = u_xlat5;
    let x_2086 : vec4<f32> = u_xlat6;
    let x_2089 : vec4<f32> = u_xlat4;
    let x_2091 : vec3<f32> = ((vec3<f32>(x_2084.x, x_2084.y, x_2084.z) * vec3<f32>(x_2086.x, x_2086.x, x_2086.x)) + vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
    let x_2092 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    let x_2094 : vec4<f32> = u_xlat9;
    let x_2096 : vec4<f32> = u_xlat11;
    let x_2099 : vec4<f32> = u_xlat8;
    let x_2101 : vec3<f32> = ((vec3<f32>(x_2094.x, x_2094.y, x_2094.z) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z)) + vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
    let x_2102 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);

    continuing {
      let x_2104 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2104 + bitcast<u32>(1i));
    }
  }
  let x_2106 : vec4<f32> = u_xlat3;
  let x_2108 : f32 = u_xlat14;
  let x_2111 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108, x_2108, x_2108)) + x_2111);
  let x_2113 : vec4<f32> = u_xlat8;
  let x_2115 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2113.x, x_2113.y, x_2113.z) + x_2115);
  let x_2117 : f32 = u_xlat43;
  let x_2118 : f32 = u_xlat43;
  u_xlat1.x = (x_2117 * -(x_2118));
  let x_2123 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2123);
  let x_2126 : vec3<f32> = u_xlat0;
  let x_2127 : f32 = u_xlat42;
  let x_2131 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_2126 * vec3<f32>(x_2127, x_2127, x_2127)) + -(vec3<f32>(x_2131.x, x_2131.y, x_2131.z)));
  let x_2137 : vec4<f32> = u_xlat1;
  let x_2139 : vec3<f32> = u_xlat0;
  let x_2142 : vec4<f32> = x_111.unity_FogColor;
  let x_2144 : vec3<f32> = ((vec3<f32>(x_2137.x, x_2137.x, x_2137.x) * x_2139) + vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
  let x_2145 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
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


