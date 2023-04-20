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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_759 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat21 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_909 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1170 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_560 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1312 : f32;
  var x_1323 : f32;
  var txVec1 : vec3<f32>;
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
  let x_778 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_778 >= 1.0f);
  let x_780 : bool = u_xlatb20;
  let x_781 : bool = u_xlatb6;
  u_xlatb6 = (x_780 | x_781);
  let x_783 : bool = u_xlatb6;
  let x_784 : f32 = u_xlat47;
  u_xlat47 = select(x_784, 1.0f, x_783);
  let x_786 : vec3<f32> = vs_TEXCOORD7;
  let x_788 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_790 : vec3<f32> = (x_786 + -(x_788));
  let x_791 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat6;
  let x_795 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_793.x, x_793.y, x_793.z), vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_801 : f32 = u_xlat6.x;
  let x_803 : f32 = x_759.x_MainLightShadowParams.z;
  let x_806 : f32 = x_759.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_801 * x_803) + x_806);
  let x_810 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_810, 0.0f, 1.0f);
  let x_814 : f32 = u_xlat47;
  u_xlat34 = (-(x_814) + 1.0f);
  let x_818 : f32 = u_xlat20.x;
  let x_819 : f32 = u_xlat34;
  let x_821 : f32 = u_xlat47;
  u_xlat47 = ((x_818 * x_819) + x_821);
  let x_823 : vec4<f32> = u_xlat1;
  let x_826 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(-(vec3<f32>(x_823.x, x_823.y, x_823.z)), x_826);
  let x_830 : f32 = u_xlat20.x;
  let x_832 : f32 = u_xlat20.x;
  u_xlat20.x = (x_830 + x_832);
  let x_835 : vec3<f32> = u_xlat2;
  let x_836 : vec3<f32> = u_xlat20;
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat20 = ((x_835 * -(vec3<f32>(x_836.x, x_836.x, x_836.x))) + -(vec3<f32>(x_840.x, x_840.y, x_840.z)));
  let x_844 : vec3<f32> = u_xlat2;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(x_844, vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_850 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_850, 0.0f, 1.0f);
  let x_854 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_854) + 1.0f);
  let x_859 : f32 = u_xlat7.x;
  let x_861 : f32 = u_xlat7.x;
  u_xlat7.x = (x_859 * x_861);
  let x_865 : f32 = u_xlat7.x;
  let x_867 : f32 = u_xlat7.x;
  u_xlat7.x = (x_865 * x_867);
  let x_872 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_872) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_880 : f32 = u_xlat0.x;
  let x_882 : f32 = u_xlat21.x;
  u_xlat0.x = (x_880 * x_882);
  let x_886 : f32 = u_xlat0.x;
  u_xlat0.x = (x_886 * 6.0f);
  let x_898 : vec3<f32> = u_xlat20;
  let x_900 : f32 = u_xlat0.x;
  let x_901 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_898, x_900);
  u_xlat8 = x_901;
  let x_903 : f32 = u_xlat8.w;
  u_xlat0.x = (x_903 + -1.0f);
  let x_911 : f32 = x_909.unity_SpecCube0_HDR.w;
  let x_913 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_911 * x_913) + 1.0f);
  let x_918 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_918, 0.0f);
  let x_922 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_922);
  let x_926 : f32 = u_xlat0.x;
  let x_928 : f32 = x_909.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_926 * x_928);
  let x_932 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_932);
  let x_936 : f32 = u_xlat0.x;
  let x_938 : f32 = x_909.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_936 * x_938);
  let x_941 : vec4<f32> = u_xlat8;
  let x_943 : vec3<f32> = u_xlat0;
  u_xlat20 = (vec3<f32>(x_941.x, x_941.y, x_941.z) * vec3<f32>(x_943.x, x_943.x, x_943.x));
  let x_946 : f32 = u_xlat28;
  let x_948 : f32 = u_xlat28;
  let x_952 : vec2<f32> = ((vec2<f32>(x_946, x_946) * vec2<f32>(x_948, x_948)) + vec2<f32>(-1.0f, 1.0f));
  let x_953 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_952.x, x_953.y, x_952.y);
  let x_956 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_956);
  let x_958 : vec4<f32> = u_xlat5;
  let x_961 : f32 = u_xlat45;
  u_xlat21 = (-(vec3<f32>(x_958.x, x_958.y, x_958.z)) + vec3<f32>(x_961, x_961, x_961));
  let x_964 : vec4<f32> = u_xlat7;
  let x_966 : vec3<f32> = u_xlat21;
  let x_968 : vec4<f32> = u_xlat5;
  let x_970 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.x, x_964.x) * x_966) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : f32 = u_xlat28;
  let x_975 : vec4<f32> = u_xlat7;
  let x_977 : vec3<f32> = (vec3<f32>(x_973, x_973, x_973) * vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec3<f32> = u_xlat20;
  let x_981 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_980 * vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : vec4<f32> = u_xlat3;
  let x_986 : vec4<f32> = u_xlat4;
  let x_989 : vec3<f32> = u_xlat20;
  let x_990 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.y, x_986.z)) + x_989);
  let x_991 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : f32 = u_xlat47;
  let x_995 : f32 = x_909.unity_LightData.z;
  u_xlat28 = (x_993 * x_995);
  let x_997 : vec3<f32> = u_xlat2;
  let x_999 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat45 = dot(x_997, vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1002, 0.0f, 1.0f);
  let x_1004 : f32 = u_xlat28;
  let x_1005 : f32 = u_xlat45;
  u_xlat28 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat28;
  let x_1010 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1016 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1023 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : f32 = u_xlat28;
  u_xlat28 = max(x_1026, 1.17549435e-38f);
  let x_1029 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1029);
  let x_1031 : f32 = u_xlat28;
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1031, x_1031, x_1031) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec3<f32> = u_xlat2;
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1038, vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1042, 0.0f, 1.0f);
  let x_1045 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1050, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat28;
  let x_1053 : f32 = u_xlat28;
  u_xlat28 = (x_1052 * x_1053);
  let x_1055 : f32 = u_xlat28;
  let x_1057 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1055 * x_1057) + 1.00001001358032226562f);
  let x_1061 : f32 = u_xlat45;
  let x_1062 : f32 = u_xlat45;
  u_xlat45 = (x_1061 * x_1062);
  let x_1064 : f32 = u_xlat28;
  let x_1065 : f32 = u_xlat28;
  u_xlat28 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat45;
  u_xlat45 = max(x_1067, 0.10000000149011611938f);
  let x_1070 : f32 = u_xlat28;
  let x_1071 : f32 = u_xlat45;
  u_xlat28 = (x_1070 * x_1071);
  let x_1073 : f32 = u_xlat46;
  let x_1074 : f32 = u_xlat28;
  u_xlat28 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat44;
  let x_1077 : f32 = u_xlat28;
  u_xlat28 = (x_1076 / x_1077);
  let x_1079 : vec4<f32> = u_xlat5;
  let x_1081 : f32 = u_xlat28;
  let x_1084 : vec4<f32> = u_xlat4;
  let x_1086 : vec3<f32> = ((vec3<f32>(x_1079.x, x_1079.y, x_1079.z) * vec3<f32>(x_1081, x_1081, x_1081)) + vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1087 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec3<f32> = u_xlat20;
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1089 * vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1094 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1096 : f32 = x_909.unity_LightData.y;
  u_xlat28 = min(x_1094, x_1096);
  let x_1100 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1100));
  let x_1104 : f32 = u_xlat6.x;
  let x_1106 : f32 = x_759.x_AdditionalShadowFadeParams.x;
  let x_1109 : f32 = x_759.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1104 * x_1106) + x_1109);
  let x_1111 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1111, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1123 : u32 = u_xlatu_loop_1;
    let x_1124 : u32 = u_xlatu28;
    if ((x_1123 < x_1124)) {
    } else {
      break;
    }
    let x_1127 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1127 >> 2u);
    let x_1131 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1131 & 3u));
    let x_1134 : u32 = u_xlatu6;
    let x_1137 : vec4<f32> = x_909.unity_LightIndices[bitcast<i32>(x_1134)];
    let x_1147 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1152 : vec4<u32> = indexable[x_1147];
    u_xlat6.x = dot(x_1137, bitcast<vec4<f32>>(x_1152));
    let x_1158 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1158);
    let x_1160 : vec3<f32> = vs_TEXCOORD7;
    let x_1171 : i32 = u_xlati6;
    let x_1173 : vec4<f32> = x_1170.x_AdditionalLightsPosition[x_1171];
    let x_1176 : i32 = u_xlati6;
    let x_1178 : vec4<f32> = x_1170.x_AdditionalLightsPosition[x_1176];
    let x_1180 : vec3<f32> = ((-(x_1160) * vec3<f32>(x_1173.w, x_1173.w, x_1173.w)) + vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
    let x_1181 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
    let x_1184 : vec4<f32> = u_xlat8;
    let x_1186 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : f32 = u_xlat49;
    u_xlat49 = max(x_1189, 0.00006103515625f);
    let x_1192 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1192);
    let x_1194 : f32 = u_xlat50;
    let x_1196 : vec4<f32> = u_xlat8;
    let x_1198 : vec3<f32> = (vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
    let x_1199 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1202 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1202);
    let x_1204 : f32 = u_xlat49;
    let x_1205 : i32 = u_xlati6;
    let x_1207 : f32 = x_1170.x_AdditionalLightsAttenuation[x_1205].x;
    u_xlat49 = (x_1204 * x_1207);
    let x_1209 : f32 = u_xlat49;
    let x_1211 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1209) * x_1211) + 1.0f);
    let x_1214 : f32 = u_xlat49;
    u_xlat49 = max(x_1214, 0.0f);
    let x_1216 : f32 = u_xlat49;
    let x_1217 : f32 = u_xlat49;
    u_xlat49 = (x_1216 * x_1217);
    let x_1219 : f32 = u_xlat49;
    let x_1220 : f32 = u_xlat51;
    u_xlat49 = (x_1219 * x_1220);
    let x_1222 : i32 = u_xlati6;
    let x_1224 : vec4<f32> = x_1170.x_AdditionalLightsSpotDir[x_1222];
    let x_1226 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
    let x_1229 : f32 = u_xlat51;
    let x_1230 : i32 = u_xlati6;
    let x_1232 : f32 = x_1170.x_AdditionalLightsAttenuation[x_1230].z;
    let x_1234 : i32 = u_xlati6;
    let x_1236 : f32 = x_1170.x_AdditionalLightsAttenuation[x_1234].w;
    u_xlat51 = ((x_1229 * x_1232) + x_1236);
    let x_1238 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1238, 0.0f, 1.0f);
    let x_1240 : f32 = u_xlat51;
    let x_1241 : f32 = u_xlat51;
    u_xlat51 = (x_1240 * x_1241);
    let x_1243 : f32 = u_xlat49;
    let x_1244 : f32 = u_xlat51;
    u_xlat49 = (x_1243 * x_1244);
    let x_1247 : i32 = u_xlati6;
    let x_1249 : f32 = x_759.x_AdditionalShadowParams[x_1247].w;
    u_xlati51 = i32(x_1249);
    let x_1254 : i32 = u_xlati51;
    u_xlatb10.x = (x_1254 >= 0i);
    let x_1258 : bool = u_xlatb10.x;
    if (x_1258) {
      let x_1262 : i32 = u_xlati6;
      let x_1264 : f32 = x_759.x_AdditionalShadowParams[x_1262].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1264, x_1264, x_1264, x_1264))));
      let x_1270 : bool = u_xlatb10.x;
      if (x_1270) {
        let x_1273 : vec4<f32> = u_xlat9;
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1279 : vec4<bool> = (abs(vec4<f32>(x_1273.z, x_1273.z, x_1273.y, x_1273.z)) >= abs(vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.x)));
        u_xlatb10 = vec3<bool>(x_1279.x, x_1279.y, x_1279.z);
        let x_1282 : bool = u_xlatb10.y;
        let x_1284 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1282 & x_1284);
        let x_1288 : vec4<f32> = u_xlat9;
        let x_1291 : vec4<bool> = (-(vec4<f32>(x_1288.z, x_1288.y, x_1288.x, x_1288.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1291.x, x_1291.y, x_1291.z);
        let x_1295 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1295);
        let x_1300 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1300);
        let x_1305 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1305);
        let x_1310 : bool = u_xlatb10.z;
        if (x_1310) {
          let x_1316 : f32 = u_xlat24.z;
          x_1312 = x_1316;
        } else {
          let x_1319 : f32 = u_xlat11.x;
          x_1312 = x_1319;
        }
        let x_1320 : f32 = x_1312;
        u_xlat38 = x_1320;
        let x_1322 : bool = u_xlatb10.x;
        if (x_1322) {
          let x_1327 : f32 = u_xlat24.x;
          x_1323 = x_1327;
        } else {
          let x_1329 : f32 = u_xlat38;
          x_1323 = x_1329;
        }
        let x_1330 : f32 = x_1323;
        u_xlat10.x = x_1330;
        let x_1332 : i32 = u_xlati6;
        let x_1334 : f32 = x_759.x_AdditionalShadowParams[x_1332].w;
        u_xlat24.x = trunc(x_1334);
        let x_1338 : f32 = u_xlat10.x;
        let x_1340 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1338 + x_1340);
        let x_1344 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1344);
      }
      let x_1346 : i32 = u_xlati51;
      u_xlati51 = (x_1346 << bitcast<u32>(2i));
      let x_1348 : vec3<f32> = vs_TEXCOORD7;
      let x_1350 : i32 = u_xlati51;
      let x_1353 : i32 = u_xlati51;
      let x_1357 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[((x_1350 + 1i) / 4i)][((x_1353 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1348.y, x_1348.y, x_1348.y, x_1348.y) * x_1357);
      let x_1359 : i32 = u_xlati51;
      let x_1361 : i32 = u_xlati51;
      let x_1364 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[(x_1359 / 4i)][(x_1361 % 4i)];
      let x_1365 : vec3<f32> = vs_TEXCOORD7;
      let x_1368 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1364 * vec4<f32>(x_1365.x, x_1365.x, x_1365.x, x_1365.x)) + x_1368);
      let x_1370 : i32 = u_xlati51;
      let x_1373 : i32 = u_xlati51;
      let x_1377 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[((x_1370 + 2i) / 4i)][((x_1373 + 2i) % 4i)];
      let x_1378 : vec3<f32> = vs_TEXCOORD7;
      let x_1381 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1377 * vec4<f32>(x_1378.z, x_1378.z, x_1378.z, x_1378.z)) + x_1381);
      let x_1383 : vec4<f32> = u_xlat10;
      let x_1384 : i32 = u_xlati51;
      let x_1387 : i32 = u_xlati51;
      let x_1391 : vec4<f32> = x_759.x_AdditionalLightsWorldToShadow[((x_1384 + 3i) / 4i)][((x_1387 + 3i) % 4i)];
      u_xlat10 = (x_1383 + x_1391);
      let x_1393 : vec4<f32> = u_xlat10;
      let x_1395 : vec4<f32> = u_xlat10;
      let x_1397 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) / vec3<f32>(x_1395.w, x_1395.w, x_1395.w));
      let x_1398 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
      let x_1401 : vec4<f32> = u_xlat10;
      let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
      let x_1404 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
      let x_1412 : vec3<f32> = txVec1;
      let x_1414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
      u_xlat51 = x_1414;
      let x_1415 : i32 = u_xlati6;
      let x_1417 : f32 = x_759.x_AdditionalShadowParams[x_1415].x;
      u_xlat10.x = (1.0f + -(x_1417));
      let x_1421 : f32 = u_xlat51;
      let x_1422 : i32 = u_xlati6;
      let x_1424 : f32 = x_759.x_AdditionalShadowParams[x_1422].x;
      let x_1427 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1421 * x_1424) + x_1427);
      let x_1430 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1430);
      let x_1435 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1435 >= 1.0f);
      let x_1437 : bool = u_xlatb24;
      let x_1439 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1437 | x_1439);
      let x_1443 : bool = u_xlatb10.x;
      let x_1444 : f32 = u_xlat51;
      u_xlat51 = select(x_1444, 1.0f, x_1443);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1447 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1447) + 1.0f);
    let x_1451 : f32 = u_xlat45;
    let x_1453 : f32 = u_xlat10.x;
    let x_1455 : f32 = u_xlat51;
    u_xlat51 = ((x_1451 * x_1453) + x_1455);
    let x_1457 : f32 = u_xlat49;
    let x_1458 : f32 = u_xlat51;
    u_xlat49 = (x_1457 * x_1458);
    let x_1460 : vec3<f32> = u_xlat2;
    let x_1461 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(x_1460, vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
    let x_1464 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1464, 0.0f, 1.0f);
    let x_1466 : f32 = u_xlat49;
    let x_1467 : f32 = u_xlat51;
    u_xlat49 = (x_1466 * x_1467);
    let x_1469 : f32 = u_xlat49;
    let x_1471 : i32 = u_xlati6;
    let x_1473 : vec4<f32> = x_1170.x_AdditionalLightsColor[x_1471];
    let x_1475 : vec3<f32> = (vec3<f32>(x_1469, x_1469, x_1469) * vec3<f32>(x_1473.x, x_1473.y, x_1473.z));
    let x_1476 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
    let x_1478 : vec4<f32> = u_xlat8;
    let x_1480 : f32 = u_xlat50;
    let x_1483 : vec4<f32> = u_xlat1;
    let x_1485 : vec3<f32> = ((vec3<f32>(x_1478.x, x_1478.y, x_1478.z) * vec3<f32>(x_1480, x_1480, x_1480)) + vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
    let x_1488 : vec4<f32> = u_xlat8;
    let x_1490 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1488.x, x_1488.y, x_1488.z), vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
    let x_1495 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1495, 1.17549435e-38f);
    let x_1499 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1499);
    let x_1502 : vec4<f32> = u_xlat6;
    let x_1504 : vec4<f32> = u_xlat8;
    let x_1506 : vec3<f32> = (vec3<f32>(x_1502.x, x_1502.x, x_1502.x) * vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
    let x_1507 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
    let x_1509 : vec3<f32> = u_xlat2;
    let x_1510 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1509, vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
    let x_1515 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1515, 0.0f, 1.0f);
    let x_1518 : vec4<f32> = u_xlat9;
    let x_1520 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1518.x, x_1518.y, x_1518.z), vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
    let x_1523 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1523, 0.0f, 1.0f);
    let x_1526 : f32 = u_xlat6.x;
    let x_1528 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1526 * x_1528);
    let x_1532 : f32 = u_xlat6.x;
    let x_1534 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_1532 * x_1534) + 1.00001001358032226562f);
    let x_1538 : f32 = u_xlat49;
    let x_1539 : f32 = u_xlat49;
    u_xlat49 = (x_1538 * x_1539);
    let x_1542 : f32 = u_xlat6.x;
    let x_1544 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1542 * x_1544);
    let x_1547 : f32 = u_xlat49;
    u_xlat49 = max(x_1547, 0.10000000149011611938f);
    let x_1550 : f32 = u_xlat6.x;
    let x_1551 : f32 = u_xlat49;
    u_xlat6.x = (x_1550 * x_1551);
    let x_1554 : f32 = u_xlat46;
    let x_1556 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1554 * x_1556);
    let x_1559 : f32 = u_xlat44;
    let x_1561 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1559 / x_1561);
    let x_1564 : vec4<f32> = u_xlat5;
    let x_1566 : vec4<f32> = u_xlat6;
    let x_1569 : vec4<f32> = u_xlat4;
    let x_1571 : vec3<f32> = ((vec3<f32>(x_1564.x, x_1564.y, x_1564.z) * vec3<f32>(x_1566.x, x_1566.x, x_1566.x)) + vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
    let x_1572 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
    let x_1574 : vec4<f32> = u_xlat8;
    let x_1576 : vec4<f32> = u_xlat10;
    let x_1579 : vec4<f32> = u_xlat7;
    let x_1581 : vec3<f32> = ((vec3<f32>(x_1574.x, x_1574.y, x_1574.z) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z)) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
    let x_1582 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);

    continuing {
      let x_1584 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1584 + bitcast<u32>(1i));
    }
  }
  let x_1586 : vec4<f32> = u_xlat3;
  let x_1588 : f32 = u_xlat14;
  let x_1591 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1586.x, x_1586.y, x_1586.z) * vec3<f32>(x_1588, x_1588, x_1588)) + x_1591);
  let x_1593 : vec4<f32> = u_xlat7;
  let x_1595 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1593.x, x_1593.y, x_1593.z) + x_1595);
  let x_1597 : f32 = u_xlat42;
  let x_1599 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1597, x_1597, x_1597) * x_1599);
  let x_1601 : f32 = u_xlat43;
  let x_1602 : f32 = u_xlat43;
  u_xlat42 = (x_1601 * -(x_1602));
  let x_1605 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1605);
  let x_1609 : vec3<f32> = u_xlat0;
  let x_1610 : f32 = u_xlat42;
  let x_1612 : vec3<f32> = (x_1609 * vec3<f32>(x_1610, x_1610, x_1610));
  let x_1613 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
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


