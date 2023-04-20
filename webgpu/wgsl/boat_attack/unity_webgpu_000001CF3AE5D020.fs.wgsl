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

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_759 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_832 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1022 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1307 : AdditionalLights;

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
  var x_560 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_915 : f32;
  var x_926 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1444 : f32;
  var x_1454 : f32;
  var txVec1 : vec3<f32>;
  var x_1882 : f32;
  var x_1895 : f32;
  var x_1953 : f32;
  var x_1964 : vec3<f32>;
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
  let x_549 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_563 : vec3<f32> = u_xlat15;
    x_560 = x_563;
  } else {
    let x_565 : vec3<f32> = u_xlat2;
    x_560 = x_565;
  }
  let x_566 : vec3<f32> = x_560;
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  let x_571 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_570, x_571);
  let x_573 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_573);
  let x_575 : f32 = u_xlat43;
  let x_577 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_581 : f32 = vs_TEXCOORD7.y;
  let x_583 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_581 * x_583);
  let x_586 : f32 = x_111.unity_MatrixV[0i].z;
  let x_588 : f32 = vs_TEXCOORD7.x;
  let x_590 : f32 = u_xlat43;
  u_xlat43 = ((x_586 * x_588) + x_590);
  let x_593 : f32 = x_111.unity_MatrixV[2i].z;
  let x_595 : f32 = vs_TEXCOORD7.z;
  let x_597 : f32 = u_xlat43;
  u_xlat43 = ((x_593 * x_595) + x_597);
  let x_599 : f32 = u_xlat43;
  let x_602 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_599 + x_602);
  let x_604 : f32 = u_xlat43;
  let x_607 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_604) + -(x_607));
  let x_610 : f32 = u_xlat43;
  u_xlat43 = max(x_610, 0.0f);
  let x_612 : f32 = u_xlat43;
  let x_614 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_612 * x_614);
  let x_621 : vec4<f32> = vs_TEXCOORD0;
  let x_624 : f32 = x_111.x_GlobalMipBias.x;
  let x_625 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_621.z, x_621.w), x_624);
  u_xlat3 = x_625;
  let x_630 : vec4<f32> = vs_TEXCOORD0;
  let x_633 : f32 = x_111.x_GlobalMipBias.x;
  let x_634 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_630.z, x_630.w), x_633);
  let x_635 : vec3<f32> = vec3<f32>(x_634.x, x_634.y, x_634.z);
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat3;
  let x_642 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : vec3<f32> = u_xlat2;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_646, vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : f32 = u_xlat44;
  u_xlat44 = (x_650 + 0.5f);
  let x_652 : f32 = u_xlat44;
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec3<f32> = (vec3<f32>(x_652, x_652, x_652) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_660 : f32 = u_xlat3.w;
  u_xlat44 = max(x_660, 0.00009999999747378752f);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : f32 = u_xlat44;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) / vec3<f32>(x_665, x_665, x_665));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_671) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_677 : f32 = u_xlat28;
  let x_678 : f32 = u_xlat44;
  u_xlat45 = (x_677 + -(x_678));
  let x_681 : f32 = u_xlat44;
  let x_683 : vec4<f32> = u_xlat5;
  let x_685 : vec3<f32> = (vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat5;
  let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_693 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat0;
  let x_697 : vec4<f32> = u_xlat5;
  let x_702 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.x, x_695.x) * vec3<f32>(x_697.x, x_697.y, x_697.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : f32 = u_xlat28;
  u_xlat0.x = (-(x_705) + 1.0f);
  let x_710 : f32 = u_xlat0.x;
  let x_712 : f32 = u_xlat0.x;
  u_xlat28 = (x_710 * x_712);
  let x_714 : f32 = u_xlat28;
  u_xlat28 = max(x_714, 0.0078125f);
  let x_717 : f32 = u_xlat28;
  let x_718 : f32 = u_xlat28;
  u_xlat44 = (x_717 * x_718);
  let x_720 : f32 = u_xlat45;
  u_xlat45 = (x_720 + 1.0f);
  let x_722 : f32 = u_xlat45;
  u_xlat45 = clamp(x_722, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat28;
  u_xlat46 = ((x_725 * 4.0f) + 2.0f);
  let x_729 : f32 = u_xlat14;
  u_xlat14 = min(x_729, 1.0f);
  let x_733 : vec4<f32> = vs_TEXCOORD8;
  let x_734 : vec2<f32> = vec2<f32>(x_733.x, x_733.y);
  let x_736 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_734.x, x_734.y, x_736);
  let x_749 : vec3<f32> = txVec0;
  let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_749.xy, x_749.z);
  u_xlat47 = x_751;
  let x_761 : f32 = x_759.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_761) + 1.0f);
  let x_765 : f32 = u_xlat47;
  let x_767 : f32 = x_759.x_MainLightShadowParams.x;
  let x_770 : f32 = u_xlat6.x;
  u_xlat47 = ((x_765 * x_767) + x_770);
  let x_774 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_774);
  let x_780 : f32 = vs_TEXCOORD8.z;
  u_xlatb20.x = (x_780 >= 1.0f);
  let x_784 : bool = u_xlatb20.x;
  let x_785 : bool = u_xlatb6;
  u_xlatb6 = (x_784 | x_785);
  let x_787 : bool = u_xlatb6;
  let x_788 : f32 = u_xlat47;
  u_xlat47 = select(x_788, 1.0f, x_787);
  let x_790 : vec3<f32> = vs_TEXCOORD7;
  let x_792 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_794 : vec3<f32> = (x_790 + -(x_792));
  let x_795 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_805 : f32 = u_xlat6.x;
  let x_807 : f32 = x_759.x_MainLightShadowParams.z;
  let x_810 : f32 = x_759.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_805 * x_807) + x_810);
  let x_814 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_814, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat47;
  u_xlat34 = (-(x_818) + 1.0f);
  let x_822 : f32 = u_xlat20.x;
  let x_823 : f32 = u_xlat34;
  let x_825 : f32 = u_xlat47;
  u_xlat47 = ((x_822 * x_823) + x_825);
  let x_834 : f32 = x_832.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_834 == -1.0f));
  let x_838 : bool = u_xlatb20.x;
  if (x_838) {
    let x_841 : vec3<f32> = vs_TEXCOORD7;
    let x_844 : vec4<f32> = x_832.x_MainLightWorldToLight[1i];
    let x_846 : vec2<f32> = (vec2<f32>(x_841.y, x_841.y) * vec2<f32>(x_844.x, x_844.y));
    let x_847 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_846.x, x_846.y, x_847.z);
    let x_850 : vec4<f32> = x_832.x_MainLightWorldToLight[0i];
    let x_852 : vec3<f32> = vs_TEXCOORD7;
    let x_855 : vec3<f32> = u_xlat20;
    let x_857 : vec2<f32> = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_852.x, x_852.x)) + vec2<f32>(x_855.x, x_855.y));
    let x_858 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_857.x, x_857.y, x_858.z);
    let x_861 : vec4<f32> = x_832.x_MainLightWorldToLight[2i];
    let x_863 : vec3<f32> = vs_TEXCOORD7;
    let x_866 : vec3<f32> = u_xlat20;
    let x_868 : vec2<f32> = ((vec2<f32>(x_861.x, x_861.y) * vec2<f32>(x_863.z, x_863.z)) + vec2<f32>(x_866.x, x_866.y));
    let x_869 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_868.x, x_868.y, x_869.z);
    let x_871 : vec3<f32> = u_xlat20;
    let x_874 : vec4<f32> = x_832.x_MainLightWorldToLight[3i];
    let x_876 : vec2<f32> = (vec2<f32>(x_871.x, x_871.y) + vec2<f32>(x_874.x, x_874.y));
    let x_877 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_876.x, x_876.y, x_877.z);
    let x_879 : vec3<f32> = u_xlat20;
    let x_882 : vec2<f32> = ((vec2<f32>(x_879.x, x_879.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_883 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_882.x, x_882.y, x_883.z);
    let x_890 : vec3<f32> = u_xlat20;
    let x_893 : f32 = x_111.x_GlobalMipBias.x;
    let x_894 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_890.x, x_890.y), x_893);
    u_xlat7 = x_894;
    let x_896 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_898 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_900 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_902 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_903 : vec4<f32> = vec4<f32>(x_896, x_898, x_900, x_902);
    let x_910 : vec4<bool> = (vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_910.x, x_910.y);
    let x_913 : bool = u_xlatb20.y;
    if (x_913) {
      let x_919 : f32 = u_xlat7.w;
      x_915 = x_919;
    } else {
      let x_922 : f32 = u_xlat7.x;
      x_915 = x_922;
    }
    let x_923 : f32 = x_915;
    u_xlat34 = x_923;
    let x_925 : bool = u_xlatb20.x;
    if (x_925) {
      let x_929 : vec4<f32> = u_xlat7;
      x_926 = vec3<f32>(x_929.x, x_929.y, x_929.z);
    } else {
      let x_932 : f32 = u_xlat34;
      x_926 = vec3<f32>(x_932, x_932, x_932);
    }
    let x_934 : vec3<f32> = x_926;
    u_xlat20 = x_934;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_939 : vec3<f32> = u_xlat20;
  let x_941 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat20 = (x_939 * vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat1;
  let x_947 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_944.x, x_944.y, x_944.z)), x_947);
  let x_951 : f32 = u_xlat7.x;
  let x_953 : f32 = u_xlat7.x;
  u_xlat7.x = (x_951 + x_953);
  let x_956 : vec3<f32> = u_xlat2;
  let x_957 : vec4<f32> = u_xlat7;
  let x_961 : vec4<f32> = u_xlat1;
  let x_964 : vec3<f32> = ((x_956 * -(vec3<f32>(x_957.x, x_957.x, x_957.x))) + -(vec3<f32>(x_961.x, x_961.y, x_961.z)));
  let x_965 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_968 : vec3<f32> = u_xlat2;
  let x_969 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(x_968, vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : f32 = u_xlat49;
  u_xlat49 = clamp(x_972, 0.0f, 1.0f);
  let x_974 : f32 = u_xlat49;
  u_xlat49 = (-(x_974) + 1.0f);
  let x_977 : f32 = u_xlat49;
  let x_978 : f32 = u_xlat49;
  u_xlat49 = (x_977 * x_978);
  let x_980 : f32 = u_xlat49;
  let x_981 : f32 = u_xlat49;
  u_xlat49 = (x_980 * x_981);
  let x_984 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_984) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_992 : f32 = u_xlat0.x;
  let x_994 : f32 = u_xlat8.x;
  u_xlat0.x = (x_992 * x_994);
  let x_998 : f32 = u_xlat0.x;
  u_xlat0.x = (x_998 * 6.0f);
  let x_1010 : vec4<f32> = u_xlat7;
  let x_1013 : f32 = u_xlat0.x;
  let x_1014 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1010.x, x_1010.y, x_1010.z), x_1013);
  u_xlat8 = x_1014;
  let x_1016 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1016 + -1.0f);
  let x_1024 : f32 = x_1022.unity_SpecCube0_HDR.w;
  let x_1026 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1024 * x_1026) + 1.0f);
  let x_1031 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1031, 0.0f);
  let x_1035 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1035);
  let x_1039 : f32 = u_xlat0.x;
  let x_1041 : f32 = x_1022.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1039 * x_1041);
  let x_1045 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1045);
  let x_1049 : f32 = u_xlat0.x;
  let x_1051 : f32 = x_1022.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1049 * x_1051);
  let x_1054 : vec4<f32> = u_xlat8;
  let x_1056 : vec3<f32> = u_xlat0;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(x_1056.x, x_1056.x, x_1056.x));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat28;
  let x_1067 : vec2<f32> = ((vec2<f32>(x_1061, x_1061) * vec2<f32>(x_1063, x_1063)) + vec2<f32>(-1.0f, 1.0f));
  let x_1068 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1067.x, x_1068.y, x_1067.y);
  let x_1071 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1071);
  let x_1073 : vec4<f32> = u_xlat5;
  let x_1076 : f32 = u_xlat45;
  let x_1078 : vec3<f32> = (-(vec3<f32>(x_1073.x, x_1073.y, x_1073.z)) + vec3<f32>(x_1076, x_1076, x_1076));
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : f32 = u_xlat49;
  let x_1083 : vec4<f32> = u_xlat8;
  let x_1086 : vec4<f32> = u_xlat5;
  let x_1088 : vec3<f32> = ((vec3<f32>(x_1081, x_1081, x_1081) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z)) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : f32 = u_xlat28;
  let x_1093 : vec4<f32> = u_xlat8;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat7;
  let x_1100 : vec4<f32> = u_xlat8;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat3;
  let x_1107 : vec4<f32> = u_xlat4;
  let x_1110 : vec4<f32> = u_xlat7;
  let x_1112 : vec3<f32> = ((vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z)) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : f32 = u_xlat47;
  let x_1117 : f32 = x_1022.unity_LightData.z;
  u_xlat28 = (x_1115 * x_1117);
  let x_1119 : vec3<f32> = u_xlat2;
  let x_1121 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat45 = dot(x_1119, vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1124, 0.0f, 1.0f);
  let x_1126 : f32 = u_xlat28;
  let x_1127 : f32 = u_xlat45;
  u_xlat28 = (x_1126 * x_1127);
  let x_1129 : f32 = u_xlat28;
  let x_1131 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1129, x_1129, x_1129) * x_1131);
  let x_1133 : vec4<f32> = u_xlat1;
  let x_1136 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.y, x_1133.z) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec4<f32> = u_xlat7;
  let x_1143 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1141.x, x_1141.y, x_1141.z), vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : f32 = u_xlat28;
  u_xlat28 = max(x_1146, 1.17549435e-38f);
  let x_1149 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1149);
  let x_1151 : f32 = u_xlat28;
  let x_1153 : vec4<f32> = u_xlat7;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1151, x_1151, x_1151) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec3<f32> = u_xlat2;
  let x_1159 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1158, vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1162, 0.0f, 1.0f);
  let x_1165 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1167 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1165.x, x_1165.y, x_1165.z), vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1170, 0.0f, 1.0f);
  let x_1172 : f32 = u_xlat28;
  let x_1173 : f32 = u_xlat28;
  u_xlat28 = (x_1172 * x_1173);
  let x_1175 : f32 = u_xlat28;
  let x_1177 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1175 * x_1177) + 1.00001001358032226562f);
  let x_1181 : f32 = u_xlat45;
  let x_1182 : f32 = u_xlat45;
  u_xlat45 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat28;
  let x_1185 : f32 = u_xlat28;
  u_xlat28 = (x_1184 * x_1185);
  let x_1187 : f32 = u_xlat45;
  u_xlat45 = max(x_1187, 0.10000000149011611938f);
  let x_1190 : f32 = u_xlat28;
  let x_1191 : f32 = u_xlat45;
  u_xlat28 = (x_1190 * x_1191);
  let x_1193 : f32 = u_xlat46;
  let x_1194 : f32 = u_xlat28;
  u_xlat28 = (x_1193 * x_1194);
  let x_1196 : f32 = u_xlat44;
  let x_1197 : f32 = u_xlat28;
  u_xlat28 = (x_1196 / x_1197);
  let x_1199 : vec4<f32> = u_xlat5;
  let x_1201 : f32 = u_xlat28;
  let x_1204 : vec4<f32> = u_xlat4;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1199.x, x_1199.y, x_1199.z) * vec3<f32>(x_1201, x_1201, x_1201)) + vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1209 : vec3<f32> = u_xlat20;
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1209 * vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1214 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1216 : f32 = x_1022.unity_LightData.y;
  u_xlat28 = min(x_1214, x_1216);
  let x_1220 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1220));
  let x_1224 : f32 = u_xlat6.x;
  let x_1226 : f32 = x_759.x_AdditionalShadowFadeParams.x;
  let x_1229 : f32 = x_759.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1224 * x_1226) + x_1229);
  let x_1231 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1231, 0.0f, 1.0f);
  let x_1235 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1237 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1239 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1241 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1242 : vec4<f32> = vec4<f32>(x_1235, x_1237, x_1239, x_1241);
  let x_1248 : vec4<bool> = (vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1242.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1248.x, x_1248.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1260 : u32 = u_xlatu_loop_1;
    let x_1261 : u32 = u_xlatu28;
    if ((x_1260 < x_1261)) {
    } else {
      break;
    }
    let x_1264 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1264 >> 2u);
    let x_1268 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1268 & 3u));
    let x_1271 : u32 = u_xlatu6;
    let x_1274 : vec4<f32> = x_1022.unity_LightIndices[bitcast<i32>(x_1271)];
    let x_1284 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1289 : vec4<u32> = indexable[x_1284];
    u_xlat6.x = dot(x_1274, bitcast<vec4<f32>>(x_1289));
    let x_1295 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1295);
    let x_1297 : vec3<f32> = vs_TEXCOORD7;
    let x_1308 : i32 = u_xlati6;
    let x_1310 : vec4<f32> = x_1307.x_AdditionalLightsPosition[x_1308];
    let x_1313 : i32 = u_xlati6;
    let x_1315 : vec4<f32> = x_1307.x_AdditionalLightsPosition[x_1313];
    let x_1317 : vec3<f32> = ((-(x_1297) * vec3<f32>(x_1310.w, x_1310.w, x_1310.w)) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
    let x_1318 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
    let x_1321 : vec4<f32> = u_xlat9;
    let x_1323 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
    let x_1326 : f32 = u_xlat35;
    u_xlat35 = max(x_1326, 0.00006103515625f);
    let x_1328 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1328);
    let x_1330 : f32 = u_xlat49;
    let x_1332 : vec4<f32> = u_xlat9;
    let x_1334 : vec3<f32> = (vec3<f32>(x_1330, x_1330, x_1330) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
    let x_1338 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1338);
    let x_1340 : f32 = u_xlat35;
    let x_1341 : i32 = u_xlati6;
    let x_1343 : f32 = x_1307.x_AdditionalLightsAttenuation[x_1341].x;
    u_xlat35 = (x_1340 * x_1343);
    let x_1345 : f32 = u_xlat35;
    let x_1347 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1345) * x_1347) + 1.0f);
    let x_1350 : f32 = u_xlat35;
    u_xlat35 = max(x_1350, 0.0f);
    let x_1352 : f32 = u_xlat35;
    let x_1353 : f32 = u_xlat35;
    u_xlat35 = (x_1352 * x_1353);
    let x_1355 : f32 = u_xlat35;
    let x_1356 : f32 = u_xlat50;
    u_xlat35 = (x_1355 * x_1356);
    let x_1358 : i32 = u_xlati6;
    let x_1360 : vec4<f32> = x_1307.x_AdditionalLightsSpotDir[x_1358];
    let x_1362 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1360.x, x_1360.y, x_1360.z), vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
    let x_1365 : f32 = u_xlat50;
    let x_1366 : i32 = u_xlati6;
    let x_1368 : f32 = x_1307.x_AdditionalLightsAttenuation[x_1366].z;
    let x_1370 : i32 = u_xlati6;
    let x_1372 : f32 = x_1307.x_AdditionalLightsAttenuation[x_1370].w;
    u_xlat50 = ((x_1365 * x_1368) + x_1372);
    let x_1374 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1374, 0.0f, 1.0f);
    let x_1376 : f32 = u_xlat50;
    let x_1377 : f32 = u_xlat50;
    u_xlat50 = (x_1376 * x_1377);
    let x_1379 : f32 = u_xlat35;
    let x_1380 : f32 = u_xlat50;
    u_xlat35 = (x_1379 * x_1380);
    let x_1383 : i32 = u_xlati6;
    let x_1385 : f32 = x_759.x_AdditionalShadowParams[x_1383].w;
    u_xlati50 = i32(x_1385);
    let x_1388 : i32 = u_xlati50;
    u_xlatb51 = (x_1388 >= 0i);
    let x_1390 : bool = u_xlatb51;
    if (x_1390) {
      let x_1394 : i32 = u_xlati6;
      let x_1396 : f32 = x_759.x_AdditionalShadowParams[x_1394].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1396, x_1396, x_1396, x_1396))));
      let x_1400 : bool = u_xlatb51;
      if (x_1400) {
        let x_1405 : vec4<f32> = u_xlat10;
        let x_1408 : vec4<f32> = u_xlat10;
        let x_1411 : vec4<bool> = (abs(vec4<f32>(x_1405.z, x_1405.z, x_1405.y, x_1405.z)) >= abs(vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.x)));
        let x_1413 : vec3<bool> = vec3<bool>(x_1411.x, x_1411.y, x_1411.z);
        let x_1414 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1417 : bool = u_xlatb11.y;
        let x_1419 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1417 & x_1419);
        let x_1421 : vec4<f32> = u_xlat10;
        let x_1424 : vec4<bool> = (-(vec4<f32>(x_1421.z, x_1421.y, x_1421.z, x_1421.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1425 : vec3<bool> = vec3<bool>(x_1424.x, x_1424.y, x_1424.w);
        let x_1426 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1425.x, x_1425.y, x_1426.z, x_1425.z);
        let x_1429 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1429);
        let x_1434 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1434);
        let x_1440 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1440);
        let x_1443 : bool = u_xlatb11.z;
        if (x_1443) {
          let x_1448 : f32 = u_xlat11.y;
          x_1444 = x_1448;
        } else {
          let x_1450 : f32 = u_xlat52;
          x_1444 = x_1450;
        }
        let x_1451 : f32 = x_1444;
        u_xlat52 = x_1451;
        let x_1453 : bool = u_xlatb51;
        if (x_1453) {
          let x_1458 : f32 = u_xlat11.x;
          x_1454 = x_1458;
        } else {
          let x_1460 : f32 = u_xlat52;
          x_1454 = x_1460;
        }
        let x_1461 : f32 = x_1454;
        u_xlat51 = x_1461;
        let x_1462 : i32 = u_xlati6;
        let x_1464 : f32 = x_759.x_AdditionalShadowParams[x_1462].w;
        u_xlat52 = trunc(x_1464);
        let x_1466 : f32 = u_xlat51;
        let x_1467 : f32 = u_xlat52;
        u_xlat51 = (x_1466 + x_1467);
        let x_1469 : f32 = u_xlat51;
        u_xlati50 = i32(x_1469);
      }
      let x_1471 : i32 = u_xlati50;
      u_xlati50 = (x_1471 << bitcast<u32>(2i));
      let x_1473 : vec3<f32> = vs_TEXCOORD7;
      let x_1475 : i32 = u_xlati50;
      let x_1478 : i32 = u_xlati50;
      let x_1482 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[((x_1475 + 1i) / 4i)][((x_1478 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1473.y, x_1473.y, x_1473.y, x_1473.y) * x_1482);
      let x_1484 : i32 = u_xlati50;
      let x_1486 : i32 = u_xlati50;
      let x_1489 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[(x_1484 / 4i)][(x_1486 % 4i)];
      let x_1490 : vec3<f32> = vs_TEXCOORD7;
      let x_1493 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1489 * vec4<f32>(x_1490.x, x_1490.x, x_1490.x, x_1490.x)) + x_1493);
      let x_1495 : i32 = u_xlati50;
      let x_1498 : i32 = u_xlati50;
      let x_1502 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[((x_1495 + 2i) / 4i)][((x_1498 + 2i) % 4i)];
      let x_1503 : vec3<f32> = vs_TEXCOORD7;
      let x_1506 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1502 * vec4<f32>(x_1503.z, x_1503.z, x_1503.z, x_1503.z)) + x_1506);
      let x_1508 : vec4<f32> = u_xlat11;
      let x_1509 : i32 = u_xlati50;
      let x_1512 : i32 = u_xlati50;
      let x_1516 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[((x_1509 + 3i) / 4i)][((x_1512 + 3i) % 4i)];
      u_xlat11 = (x_1508 + x_1516);
      let x_1518 : vec4<f32> = u_xlat11;
      let x_1520 : vec4<f32> = u_xlat11;
      let x_1522 : vec3<f32> = (vec3<f32>(x_1518.x, x_1518.y, x_1518.z) / vec3<f32>(x_1520.w, x_1520.w, x_1520.w));
      let x_1523 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
      let x_1526 : vec4<f32> = u_xlat11;
      let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
      let x_1529 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
      let x_1537 : vec3<f32> = txVec1;
      let x_1539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
      u_xlat50 = x_1539;
      let x_1540 : i32 = u_xlati6;
      let x_1542 : f32 = x_759.x_AdditionalShadowParams[x_1540].x;
      u_xlat51 = (1.0f + -(x_1542));
      let x_1545 : f32 = u_xlat50;
      let x_1546 : i32 = u_xlati6;
      let x_1548 : f32 = x_759.x_AdditionalShadowParams[x_1546].x;
      let x_1550 : f32 = u_xlat51;
      u_xlat50 = ((x_1545 * x_1548) + x_1550);
      let x_1553 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1553);
      let x_1557 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1557 >= 1.0f);
      let x_1559 : bool = u_xlatb51;
      let x_1560 : bool = u_xlatb52;
      u_xlatb51 = (x_1559 | x_1560);
      let x_1562 : bool = u_xlatb51;
      let x_1563 : f32 = u_xlat50;
      u_xlat50 = select(x_1563, 1.0f, x_1562);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1566 : f32 = u_xlat50;
    u_xlat51 = (-(x_1566) + 1.0f);
    let x_1569 : f32 = u_xlat45;
    let x_1570 : f32 = u_xlat51;
    let x_1572 : f32 = u_xlat50;
    u_xlat50 = ((x_1569 * x_1570) + x_1572);
    let x_1575 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1575 & 31i)));
    let x_1578 : i32 = u_xlati51;
    let x_1581 : f32 = x_832.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1578) & bitcast<u32>(x_1581)));
    let x_1585 : i32 = u_xlati51;
    if ((x_1585 != 0i)) {
      let x_1589 : i32 = u_xlati6;
      let x_1591 : f32 = x_832.x_AdditionalLightsLightTypes[x_1589].el;
      u_xlati51 = i32(x_1591);
      let x_1594 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1594 != 0i));
      let x_1598 : i32 = u_xlati6;
      u_xlati11 = (x_1598 << bitcast<u32>(2i));
      let x_1600 : i32 = u_xlati52;
      if ((x_1600 != 0i)) {
        let x_1605 : vec3<f32> = vs_TEXCOORD7;
        let x_1607 : i32 = u_xlati11;
        let x_1610 : i32 = u_xlati11;
        let x_1614 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1607 + 1i) / 4i)][((x_1610 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1605.y, x_1605.y, x_1605.y) * vec3<f32>(x_1614.x, x_1614.y, x_1614.w));
        let x_1617 : i32 = u_xlati11;
        let x_1619 : i32 = u_xlati11;
        let x_1622 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[(x_1617 / 4i)][(x_1619 % 4i)];
        let x_1624 : vec3<f32> = vs_TEXCOORD7;
        let x_1627 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1622.x, x_1622.y, x_1622.w) * vec3<f32>(x_1624.x, x_1624.x, x_1624.x)) + x_1627);
        let x_1629 : i32 = u_xlati11;
        let x_1632 : i32 = u_xlati11;
        let x_1636 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1629 + 2i) / 4i)][((x_1632 + 2i) % 4i)];
        let x_1638 : vec3<f32> = vs_TEXCOORD7;
        let x_1641 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1636.x, x_1636.y, x_1636.w) * vec3<f32>(x_1638.z, x_1638.z, x_1638.z)) + x_1641);
        let x_1643 : vec3<f32> = u_xlat25;
        let x_1644 : i32 = u_xlati11;
        let x_1647 : i32 = u_xlati11;
        let x_1651 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1644 + 3i) / 4i)][((x_1647 + 3i) % 4i)];
        u_xlat25 = (x_1643 + vec3<f32>(x_1651.x, x_1651.y, x_1651.w));
        let x_1654 : vec3<f32> = u_xlat25;
        let x_1656 : vec3<f32> = u_xlat25;
        let x_1658 : vec2<f32> = (vec2<f32>(x_1654.x, x_1654.y) / vec2<f32>(x_1656.z, x_1656.z));
        let x_1659 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1658.x, x_1658.y, x_1659.z);
        let x_1661 : vec3<f32> = u_xlat25;
        let x_1664 : vec2<f32> = ((vec2<f32>(x_1661.x, x_1661.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1665 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1664.x, x_1664.y, x_1665.z);
        let x_1667 : vec3<f32> = u_xlat25;
        let x_1671 : vec2<f32> = clamp(vec2<f32>(x_1667.x, x_1667.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1672 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1671.x, x_1671.y, x_1672.z);
        let x_1674 : i32 = u_xlati6;
        let x_1676 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1674];
        let x_1678 : vec3<f32> = u_xlat25;
        let x_1681 : i32 = u_xlati6;
        let x_1683 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1681];
        let x_1685 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(x_1678.x, x_1678.y)) + vec2<f32>(x_1683.z, x_1683.w));
        let x_1686 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1685.x, x_1685.y, x_1686.z);
      } else {
        let x_1689 : i32 = u_xlati51;
        u_xlatb51 = (x_1689 == 1i);
        let x_1691 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1691);
        let x_1693 : i32 = u_xlati51;
        if ((x_1693 != 0i)) {
          let x_1697 : vec3<f32> = vs_TEXCOORD7;
          let x_1699 : i32 = u_xlati11;
          let x_1702 : i32 = u_xlati11;
          let x_1706 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1699 + 1i) / 4i)][((x_1702 + 1i) % 4i)];
          let x_1708 : vec2<f32> = (vec2<f32>(x_1697.y, x_1697.y) * vec2<f32>(x_1706.x, x_1706.y));
          let x_1709 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
          let x_1711 : i32 = u_xlati11;
          let x_1713 : i32 = u_xlati11;
          let x_1716 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[(x_1711 / 4i)][(x_1713 % 4i)];
          let x_1718 : vec3<f32> = vs_TEXCOORD7;
          let x_1721 : vec4<f32> = u_xlat12;
          let x_1723 : vec2<f32> = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1718.x, x_1718.x)) + vec2<f32>(x_1721.x, x_1721.y));
          let x_1724 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
          let x_1726 : i32 = u_xlati11;
          let x_1729 : i32 = u_xlati11;
          let x_1733 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1726 + 2i) / 4i)][((x_1729 + 2i) % 4i)];
          let x_1735 : vec3<f32> = vs_TEXCOORD7;
          let x_1738 : vec4<f32> = u_xlat12;
          let x_1740 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1735.z, x_1735.z)) + vec2<f32>(x_1738.x, x_1738.y));
          let x_1741 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
          let x_1743 : vec4<f32> = u_xlat12;
          let x_1745 : i32 = u_xlati11;
          let x_1748 : i32 = u_xlati11;
          let x_1752 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1745 + 3i) / 4i)][((x_1748 + 3i) % 4i)];
          let x_1754 : vec2<f32> = (vec2<f32>(x_1743.x, x_1743.y) + vec2<f32>(x_1752.x, x_1752.y));
          let x_1755 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
          let x_1757 : vec4<f32> = u_xlat12;
          let x_1760 : vec2<f32> = ((vec2<f32>(x_1757.x, x_1757.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1761 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1760.x, x_1760.y, x_1761.z, x_1761.w);
          let x_1763 : vec4<f32> = u_xlat12;
          let x_1765 : vec2<f32> = fract(vec2<f32>(x_1763.x, x_1763.y));
          let x_1766 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1765.x, x_1765.y, x_1766.z, x_1766.w);
          let x_1768 : i32 = u_xlati6;
          let x_1770 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1768];
          let x_1772 : vec4<f32> = u_xlat12;
          let x_1775 : i32 = u_xlati6;
          let x_1777 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1775];
          let x_1779 : vec2<f32> = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(x_1772.x, x_1772.y)) + vec2<f32>(x_1777.z, x_1777.w));
          let x_1780 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1779.x, x_1779.y, x_1780.z);
        } else {
          let x_1783 : vec3<f32> = vs_TEXCOORD7;
          let x_1785 : i32 = u_xlati11;
          let x_1788 : i32 = u_xlati11;
          let x_1792 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1785 + 1i) / 4i)][((x_1788 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1783.y, x_1783.y, x_1783.y, x_1783.y) * x_1792);
          let x_1794 : i32 = u_xlati11;
          let x_1796 : i32 = u_xlati11;
          let x_1799 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[(x_1794 / 4i)][(x_1796 % 4i)];
          let x_1800 : vec3<f32> = vs_TEXCOORD7;
          let x_1803 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1799 * vec4<f32>(x_1800.x, x_1800.x, x_1800.x, x_1800.x)) + x_1803);
          let x_1805 : i32 = u_xlati11;
          let x_1808 : i32 = u_xlati11;
          let x_1812 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1805 + 2i) / 4i)][((x_1808 + 2i) % 4i)];
          let x_1813 : vec3<f32> = vs_TEXCOORD7;
          let x_1816 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1812 * vec4<f32>(x_1813.z, x_1813.z, x_1813.z, x_1813.z)) + x_1816);
          let x_1818 : vec4<f32> = u_xlat12;
          let x_1819 : i32 = u_xlati11;
          let x_1822 : i32 = u_xlati11;
          let x_1826 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1819 + 3i) / 4i)][((x_1822 + 3i) % 4i)];
          u_xlat12 = (x_1818 + x_1826);
          let x_1828 : vec4<f32> = u_xlat12;
          let x_1830 : vec4<f32> = u_xlat12;
          let x_1832 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.y, x_1828.z) / vec3<f32>(x_1830.w, x_1830.w, x_1830.w));
          let x_1833 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
          let x_1835 : vec4<f32> = u_xlat12;
          let x_1837 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1835.x, x_1835.y, x_1835.z), vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
          let x_1840 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1840);
          let x_1842 : f32 = u_xlat51;
          let x_1844 : vec4<f32> = u_xlat12;
          let x_1846 : vec3<f32> = (vec3<f32>(x_1842, x_1842, x_1842) * vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
          let x_1847 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
          let x_1849 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1849.x, x_1849.y, x_1849.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1854 : f32 = u_xlat51;
          u_xlat51 = max(x_1854, 0.00000099999999747524f);
          let x_1857 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1857);
          let x_1859 : f32 = u_xlat51;
          let x_1861 : vec4<f32> = u_xlat12;
          let x_1863 : vec3<f32> = (vec3<f32>(x_1859, x_1859, x_1859) * vec3<f32>(x_1861.z, x_1861.x, x_1861.y));
          let x_1864 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
          let x_1867 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1867);
          let x_1871 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1871, 0.0f, 1.0f);
          let x_1874 : vec4<f32> = u_xlat13;
          let x_1876 : vec4<bool> = (vec4<f32>(x_1874.y, x_1874.y, x_1874.y, x_1874.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1877 : vec2<bool> = vec2<bool>(x_1876.x, x_1876.w);
          let x_1878 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1877.x, x_1878.y, x_1878.z, x_1877.y);
          let x_1881 : bool = u_xlatb11.x;
          if (x_1881) {
            let x_1886 : f32 = u_xlat13.x;
            x_1882 = x_1886;
          } else {
            let x_1889 : f32 = u_xlat13.x;
            x_1882 = -(x_1889);
          }
          let x_1891 : f32 = x_1882;
          u_xlat11.x = x_1891;
          let x_1894 : bool = u_xlatb11.w;
          if (x_1894) {
            let x_1899 : f32 = u_xlat13.x;
            x_1895 = x_1899;
          } else {
            let x_1902 : f32 = u_xlat13.x;
            x_1895 = -(x_1902);
          }
          let x_1904 : f32 = x_1895;
          u_xlat11.w = x_1904;
          let x_1906 : vec4<f32> = u_xlat12;
          let x_1908 : f32 = u_xlat51;
          let x_1911 : vec4<f32> = u_xlat11;
          let x_1913 : vec2<f32> = ((vec2<f32>(x_1906.x, x_1906.y) * vec2<f32>(x_1908, x_1908)) + vec2<f32>(x_1911.x, x_1911.w));
          let x_1914 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1913.x, x_1914.y, x_1914.z, x_1913.y);
          let x_1916 : vec4<f32> = u_xlat11;
          let x_1919 : vec2<f32> = ((vec2<f32>(x_1916.x, x_1916.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1920 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1919.x, x_1920.y, x_1920.z, x_1919.y);
          let x_1922 : vec4<f32> = u_xlat11;
          let x_1926 : vec2<f32> = clamp(vec2<f32>(x_1922.x, x_1922.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1927 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1926.x, x_1927.y, x_1927.z, x_1926.y);
          let x_1929 : i32 = u_xlati6;
          let x_1931 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1929];
          let x_1933 : vec4<f32> = u_xlat11;
          let x_1936 : i32 = u_xlati6;
          let x_1938 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1936];
          let x_1940 : vec2<f32> = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1933.x, x_1933.w)) + vec2<f32>(x_1938.z, x_1938.w));
          let x_1941 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1940.x, x_1940.y, x_1941.z);
        }
      }
      let x_1948 : vec3<f32> = u_xlat25;
      let x_1950 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1948.x, x_1948.y), 0.0f);
      u_xlat11 = x_1950;
      let x_1952 : bool = u_xlatb7.y;
      if (x_1952) {
        let x_1957 : f32 = u_xlat11.w;
        x_1953 = x_1957;
      } else {
        let x_1960 : f32 = u_xlat11.x;
        x_1953 = x_1960;
      }
      let x_1961 : f32 = x_1953;
      u_xlat51 = x_1961;
      let x_1963 : bool = u_xlatb7.x;
      if (x_1963) {
        let x_1967 : vec4<f32> = u_xlat11;
        x_1964 = vec3<f32>(x_1967.x, x_1967.y, x_1967.z);
      } else {
        let x_1970 : f32 = u_xlat51;
        x_1964 = vec3<f32>(x_1970, x_1970, x_1970);
      }
      let x_1972 : vec3<f32> = x_1964;
      let x_1973 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1979 : vec4<f32> = u_xlat11;
    let x_1981 : i32 = u_xlati6;
    let x_1983 : vec4<f32> = x_1307.x_AdditionalLightsColor[x_1981];
    let x_1985 : vec3<f32> = (vec3<f32>(x_1979.x, x_1979.y, x_1979.z) * vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
    let x_1986 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
    let x_1988 : f32 = u_xlat35;
    let x_1989 : f32 = u_xlat50;
    u_xlat6.x = (x_1988 * x_1989);
    let x_1992 : vec3<f32> = u_xlat2;
    let x_1993 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(x_1992, vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1996 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1996, 0.0f, 1.0f);
    let x_1999 : f32 = u_xlat6.x;
    let x_2000 : f32 = u_xlat35;
    u_xlat6.x = (x_1999 * x_2000);
    let x_2003 : vec4<f32> = u_xlat6;
    let x_2005 : vec4<f32> = u_xlat11;
    let x_2007 : vec3<f32> = (vec3<f32>(x_2003.x, x_2003.x, x_2003.x) * vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
    let x_2010 : vec4<f32> = u_xlat9;
    let x_2012 : f32 = u_xlat49;
    let x_2015 : vec4<f32> = u_xlat1;
    let x_2017 : vec3<f32> = ((vec3<f32>(x_2010.x, x_2010.y, x_2010.z) * vec3<f32>(x_2012, x_2012, x_2012)) + vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
    let x_2018 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2018.w);
    let x_2020 : vec4<f32> = u_xlat9;
    let x_2022 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2020.x, x_2020.y, x_2020.z), vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
    let x_2027 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2027, 1.17549435e-38f);
    let x_2031 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2031);
    let x_2034 : vec4<f32> = u_xlat6;
    let x_2036 : vec4<f32> = u_xlat9;
    let x_2038 : vec3<f32> = (vec3<f32>(x_2034.x, x_2034.x, x_2034.x) * vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
    let x_2041 : vec3<f32> = u_xlat2;
    let x_2042 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(x_2041, vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
    let x_2047 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2047, 0.0f, 1.0f);
    let x_2050 : vec4<f32> = u_xlat10;
    let x_2052 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2050.x, x_2050.y, x_2050.z), vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
    let x_2055 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2055, 0.0f, 1.0f);
    let x_2058 : f32 = u_xlat6.x;
    let x_2060 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2058 * x_2060);
    let x_2064 : f32 = u_xlat6.x;
    let x_2066 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_2064 * x_2066) + 1.00001001358032226562f);
    let x_2070 : f32 = u_xlat35;
    let x_2071 : f32 = u_xlat35;
    u_xlat35 = (x_2070 * x_2071);
    let x_2074 : f32 = u_xlat6.x;
    let x_2076 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2074 * x_2076);
    let x_2079 : f32 = u_xlat35;
    u_xlat35 = max(x_2079, 0.10000000149011611938f);
    let x_2082 : f32 = u_xlat6.x;
    let x_2083 : f32 = u_xlat35;
    u_xlat6.x = (x_2082 * x_2083);
    let x_2086 : f32 = u_xlat46;
    let x_2088 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2086 * x_2088);
    let x_2091 : f32 = u_xlat44;
    let x_2093 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2091 / x_2093);
    let x_2096 : vec4<f32> = u_xlat5;
    let x_2098 : vec4<f32> = u_xlat6;
    let x_2101 : vec4<f32> = u_xlat4;
    let x_2103 : vec3<f32> = ((vec3<f32>(x_2096.x, x_2096.y, x_2096.z) * vec3<f32>(x_2098.x, x_2098.x, x_2098.x)) + vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2106 : vec4<f32> = u_xlat9;
    let x_2108 : vec4<f32> = u_xlat11;
    let x_2111 : vec4<f32> = u_xlat8;
    let x_2113 : vec3<f32> = ((vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108.x, x_2108.y, x_2108.z)) + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
    let x_2114 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);

    continuing {
      let x_2116 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2116 + bitcast<u32>(1i));
    }
  }
  let x_2118 : vec4<f32> = u_xlat3;
  let x_2120 : f32 = u_xlat14;
  let x_2123 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_2118.x, x_2118.y, x_2118.z) * vec3<f32>(x_2120, x_2120, x_2120)) + x_2123);
  let x_2125 : vec4<f32> = u_xlat8;
  let x_2127 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2125.x, x_2125.y, x_2125.z) + x_2127);
  let x_2129 : f32 = u_xlat42;
  let x_2131 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2129, x_2129, x_2129) * x_2131);
  let x_2133 : f32 = u_xlat43;
  let x_2134 : f32 = u_xlat43;
  u_xlat42 = (x_2133 * -(x_2134));
  let x_2137 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2137);
  let x_2141 : vec3<f32> = u_xlat0;
  let x_2142 : f32 = u_xlat42;
  let x_2144 : vec3<f32> = (x_2141 * vec3<f32>(x_2142, x_2142, x_2142));
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


