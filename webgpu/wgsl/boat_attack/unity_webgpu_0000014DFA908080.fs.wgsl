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

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_744 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_881 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1155 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1293 : f32;
  var x_1303 : f32;
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
  let x_803 : vec3<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_803), vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_810 : f32 = u_xlat6.x;
  let x_812 : f32 = u_xlat6.x;
  u_xlat6.x = (x_810 + x_812);
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec4<f32> = u_xlat6;
  let x_821 : vec3<f32> = u_xlat2;
  let x_823 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.y, x_815.z) * -(vec3<f32>(x_817.x, x_817.x, x_817.x))) + -(x_821));
  let x_824 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), x_829);
  let x_831 : f32 = u_xlat48;
  u_xlat48 = clamp(x_831, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat48;
  u_xlat48 = (-(x_833) + 1.0f);
  let x_836 : f32 = u_xlat48;
  let x_837 : f32 = u_xlat48;
  u_xlat48 = (x_836 * x_837);
  let x_839 : f32 = u_xlat48;
  let x_840 : f32 = u_xlat48;
  u_xlat48 = (x_839 * x_840);
  let x_843 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_843) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_851 : f32 = u_xlat0.x;
  let x_853 : f32 = u_xlat7.x;
  u_xlat0.x = (x_851 * x_853);
  let x_857 : f32 = u_xlat0.x;
  u_xlat0.x = (x_857 * 6.0f);
  let x_869 : vec4<f32> = u_xlat6;
  let x_872 : f32 = u_xlat0.x;
  let x_873 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_869.x, x_869.y, x_869.z), x_872);
  u_xlat7 = x_873;
  let x_875 : f32 = u_xlat7.w;
  u_xlat0.x = (x_875 + -1.0f);
  let x_883 : f32 = x_881.unity_SpecCube0_HDR.w;
  let x_885 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_883 * x_885) + 1.0f);
  let x_890 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_890, 0.0f);
  let x_894 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_894);
  let x_898 : f32 = u_xlat0.x;
  let x_900 : f32 = x_881.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_898 * x_900);
  let x_904 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_904);
  let x_908 : f32 = u_xlat0.x;
  let x_910 : f32 = x_881.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_908 * x_910);
  let x_913 : vec4<f32> = u_xlat7;
  let x_915 : vec3<f32> = u_xlat0;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) * vec3<f32>(x_915.x, x_915.x, x_915.x));
  let x_918 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : f32 = u_xlat28;
  let x_922 : f32 = u_xlat28;
  let x_926 : vec2<f32> = ((vec2<f32>(x_920, x_920) * vec2<f32>(x_922, x_922)) + vec2<f32>(-1.0f, 1.0f));
  let x_927 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_926.x, x_927.y, x_926.y);
  let x_930 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_930);
  let x_932 : vec4<f32> = u_xlat5;
  let x_935 : f32 = u_xlat44;
  let x_937 : vec3<f32> = (-(vec3<f32>(x_932.x, x_932.y, x_932.z)) + vec3<f32>(x_935, x_935, x_935));
  let x_938 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : f32 = u_xlat48;
  let x_942 : vec4<f32> = u_xlat7;
  let x_945 : vec4<f32> = u_xlat5;
  let x_947 : vec3<f32> = ((vec3<f32>(x_940, x_940, x_940) * vec3<f32>(x_942.x, x_942.y, x_942.z)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : f32 = u_xlat28;
  let x_952 : vec4<f32> = u_xlat7;
  let x_954 : vec3<f32> = (vec3<f32>(x_950, x_950, x_950) * vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : vec4<f32> = u_xlat6;
  let x_959 : vec4<f32> = u_xlat7;
  let x_961 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat3;
  let x_966 : vec4<f32> = u_xlat4;
  let x_969 : vec4<f32> = u_xlat6;
  let x_971 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_966.x, x_966.y, x_966.z)) + vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : f32 = u_xlat46;
  let x_976 : f32 = x_881.unity_LightData.z;
  u_xlat28 = (x_974 * x_976);
  let x_978 : vec4<f32> = u_xlat1;
  let x_981 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_978.x, x_978.y, x_978.z), vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : f32 = u_xlat44;
  u_xlat44 = clamp(x_984, 0.0f, 1.0f);
  let x_986 : f32 = u_xlat28;
  let x_987 : f32 = u_xlat44;
  u_xlat28 = (x_986 * x_987);
  let x_989 : f32 = u_xlat28;
  let x_992 : vec4<f32> = x_111.x_MainLightColor;
  let x_994 : vec3<f32> = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec3<f32> = u_xlat2;
  let x_999 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1001 : vec3<f32> = (x_997 + vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat7;
  let x_1006 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : f32 = u_xlat28;
  u_xlat28 = max(x_1009, 1.17549435e-38f);
  let x_1012 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1012);
  let x_1014 : f32 = u_xlat28;
  let x_1016 : vec4<f32> = u_xlat7;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1014, x_1014, x_1014) * vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1023 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1026, 0.0f, 1.0f);
  let x_1029 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1034, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat28;
  let x_1037 : f32 = u_xlat28;
  u_xlat28 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat28;
  let x_1041 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1039 * x_1041) + 1.00001001358032226562f);
  let x_1045 : f32 = u_xlat44;
  let x_1046 : f32 = u_xlat44;
  u_xlat44 = (x_1045 * x_1046);
  let x_1048 : f32 = u_xlat28;
  let x_1049 : f32 = u_xlat28;
  u_xlat28 = (x_1048 * x_1049);
  let x_1051 : f32 = u_xlat44;
  u_xlat44 = max(x_1051, 0.10000000149011611938f);
  let x_1054 : f32 = u_xlat28;
  let x_1055 : f32 = u_xlat44;
  u_xlat28 = (x_1054 * x_1055);
  let x_1057 : f32 = u_xlat45;
  let x_1058 : f32 = u_xlat28;
  u_xlat28 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat43;
  let x_1061 : f32 = u_xlat28;
  u_xlat28 = (x_1060 / x_1061);
  let x_1063 : vec4<f32> = u_xlat5;
  let x_1065 : f32 = u_xlat28;
  let x_1068 : vec4<f32> = u_xlat4;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(x_1065, x_1065, x_1065)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat6;
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1077 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1082 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1084 : f32 = x_881.unity_LightData.y;
  u_xlat28 = min(x_1082, x_1084);
  let x_1088 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1088));
  let x_1091 : f32 = u_xlat47;
  let x_1093 : f32 = x_744.x_AdditionalShadowFadeParams.x;
  let x_1096 : f32 = x_744.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1091 * x_1093) + x_1096);
  let x_1098 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1098, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1110 : u32 = u_xlatu_loop_1;
    let x_1111 : u32 = u_xlatu28;
    if ((x_1110 < x_1111)) {
    } else {
      break;
    }
    let x_1114 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1114 >> 2u);
    let x_1118 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1118 & 3u));
    let x_1121 : u32 = u_xlatu47;
    let x_1124 : vec4<f32> = x_881.unity_LightIndices[bitcast<i32>(x_1121)];
    let x_1134 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1139 : vec4<u32> = indexable[x_1134];
    u_xlat47 = dot(x_1124, bitcast<vec4<f32>>(x_1139));
    let x_1143 : f32 = u_xlat47;
    u_xlati47 = i32(x_1143);
    let x_1145 : vec3<f32> = vs_TEXCOORD7;
    let x_1156 : i32 = u_xlati47;
    let x_1158 : vec4<f32> = x_1155.x_AdditionalLightsPosition[x_1156];
    let x_1161 : i32 = u_xlati47;
    let x_1163 : vec4<f32> = x_1155.x_AdditionalLightsPosition[x_1161];
    let x_1165 : vec3<f32> = ((-(x_1145) * vec3<f32>(x_1158.w, x_1158.w, x_1158.w)) + vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
    let x_1166 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
    let x_1168 : vec4<f32> = u_xlat8;
    let x_1170 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1168.x, x_1168.y, x_1168.z), vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
    let x_1173 : f32 = u_xlat48;
    u_xlat48 = max(x_1173, 0.00006103515625f);
    let x_1176 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1176);
    let x_1178 : f32 = u_xlat49;
    let x_1180 : vec4<f32> = u_xlat8;
    let x_1182 : vec3<f32> = (vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1186 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1186);
    let x_1188 : f32 = u_xlat48;
    let x_1189 : i32 = u_xlati47;
    let x_1191 : f32 = x_1155.x_AdditionalLightsAttenuation[x_1189].x;
    u_xlat48 = (x_1188 * x_1191);
    let x_1193 : f32 = u_xlat48;
    let x_1195 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1193) * x_1195) + 1.0f);
    let x_1198 : f32 = u_xlat48;
    u_xlat48 = max(x_1198, 0.0f);
    let x_1200 : f32 = u_xlat48;
    let x_1201 : f32 = u_xlat48;
    u_xlat48 = (x_1200 * x_1201);
    let x_1203 : f32 = u_xlat48;
    let x_1204 : f32 = u_xlat50;
    u_xlat48 = (x_1203 * x_1204);
    let x_1206 : i32 = u_xlati47;
    let x_1208 : vec4<f32> = x_1155.x_AdditionalLightsSpotDir[x_1206];
    let x_1210 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
    let x_1213 : f32 = u_xlat50;
    let x_1214 : i32 = u_xlati47;
    let x_1216 : f32 = x_1155.x_AdditionalLightsAttenuation[x_1214].z;
    let x_1218 : i32 = u_xlati47;
    let x_1220 : f32 = x_1155.x_AdditionalLightsAttenuation[x_1218].w;
    u_xlat50 = ((x_1213 * x_1216) + x_1220);
    let x_1222 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1222, 0.0f, 1.0f);
    let x_1224 : f32 = u_xlat50;
    let x_1225 : f32 = u_xlat50;
    u_xlat50 = (x_1224 * x_1225);
    let x_1227 : f32 = u_xlat48;
    let x_1228 : f32 = u_xlat50;
    u_xlat48 = (x_1227 * x_1228);
    let x_1231 : i32 = u_xlati47;
    let x_1233 : f32 = x_744.x_AdditionalShadowParams[x_1231].w;
    u_xlati50 = i32(x_1233);
    let x_1236 : i32 = u_xlati50;
    u_xlatb51 = (x_1236 >= 0i);
    let x_1238 : bool = u_xlatb51;
    if (x_1238) {
      let x_1242 : i32 = u_xlati47;
      let x_1244 : f32 = x_744.x_AdditionalShadowParams[x_1242].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1244, x_1244, x_1244, x_1244))));
      let x_1248 : bool = u_xlatb51;
      if (x_1248) {
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1256 : vec4<f32> = u_xlat9;
        let x_1259 : vec4<bool> = (abs(vec4<f32>(x_1253.z, x_1253.z, x_1253.y, x_1253.z)) >= abs(vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.x)));
        let x_1261 : vec3<bool> = vec3<bool>(x_1259.x, x_1259.y, x_1259.z);
        let x_1262 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1265 : bool = u_xlatb10.y;
        let x_1267 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1265 & x_1267);
        let x_1269 : vec4<f32> = u_xlat9;
        let x_1272 : vec4<bool> = (-(vec4<f32>(x_1269.z, x_1269.y, x_1269.z, x_1269.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1273 : vec3<bool> = vec3<bool>(x_1272.x, x_1272.y, x_1272.w);
        let x_1274 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1273.x, x_1273.y, x_1274.z, x_1273.z);
        let x_1277 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1277);
        let x_1282 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1282);
        let x_1288 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1288);
        let x_1292 : bool = u_xlatb10.z;
        if (x_1292) {
          let x_1297 : f32 = u_xlat10.y;
          x_1293 = x_1297;
        } else {
          let x_1299 : f32 = u_xlat52;
          x_1293 = x_1299;
        }
        let x_1300 : f32 = x_1293;
        u_xlat24 = x_1300;
        let x_1302 : bool = u_xlatb51;
        if (x_1302) {
          let x_1307 : f32 = u_xlat10.x;
          x_1303 = x_1307;
        } else {
          let x_1309 : f32 = u_xlat24;
          x_1303 = x_1309;
        }
        let x_1310 : f32 = x_1303;
        u_xlat51 = x_1310;
        let x_1311 : i32 = u_xlati47;
        let x_1313 : f32 = x_744.x_AdditionalShadowParams[x_1311].w;
        u_xlat10.x = trunc(x_1313);
        let x_1316 : f32 = u_xlat51;
        let x_1318 : f32 = u_xlat10.x;
        u_xlat51 = (x_1316 + x_1318);
        let x_1320 : f32 = u_xlat51;
        u_xlati50 = i32(x_1320);
      }
      let x_1322 : i32 = u_xlati50;
      u_xlati50 = (x_1322 << bitcast<u32>(2i));
      let x_1324 : vec3<f32> = vs_TEXCOORD7;
      let x_1326 : i32 = u_xlati50;
      let x_1329 : i32 = u_xlati50;
      let x_1333 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_1326 + 1i) / 4i)][((x_1329 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1324.y, x_1324.y, x_1324.y, x_1324.y) * x_1333);
      let x_1335 : i32 = u_xlati50;
      let x_1337 : i32 = u_xlati50;
      let x_1340 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[(x_1335 / 4i)][(x_1337 % 4i)];
      let x_1341 : vec3<f32> = vs_TEXCOORD7;
      let x_1344 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1340 * vec4<f32>(x_1341.x, x_1341.x, x_1341.x, x_1341.x)) + x_1344);
      let x_1346 : i32 = u_xlati50;
      let x_1349 : i32 = u_xlati50;
      let x_1353 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_1346 + 2i) / 4i)][((x_1349 + 2i) % 4i)];
      let x_1354 : vec3<f32> = vs_TEXCOORD7;
      let x_1357 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1353 * vec4<f32>(x_1354.z, x_1354.z, x_1354.z, x_1354.z)) + x_1357);
      let x_1359 : vec4<f32> = u_xlat10;
      let x_1360 : i32 = u_xlati50;
      let x_1363 : i32 = u_xlati50;
      let x_1367 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_1360 + 3i) / 4i)][((x_1363 + 3i) % 4i)];
      u_xlat10 = (x_1359 + x_1367);
      let x_1369 : vec4<f32> = u_xlat10;
      let x_1371 : vec4<f32> = u_xlat10;
      let x_1373 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.y, x_1369.z) / vec3<f32>(x_1371.w, x_1371.w, x_1371.w));
      let x_1374 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
      let x_1377 : vec4<f32> = u_xlat10;
      let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
      let x_1380 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
      let x_1388 : vec3<f32> = txVec1;
      let x_1390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
      u_xlat50 = x_1390;
      let x_1391 : i32 = u_xlati47;
      let x_1393 : f32 = x_744.x_AdditionalShadowParams[x_1391].x;
      u_xlat51 = (1.0f + -(x_1393));
      let x_1396 : f32 = u_xlat50;
      let x_1397 : i32 = u_xlati47;
      let x_1399 : f32 = x_744.x_AdditionalShadowParams[x_1397].x;
      let x_1401 : f32 = u_xlat51;
      u_xlat50 = ((x_1396 * x_1399) + x_1401);
      let x_1404 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1404);
      let x_1407 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1407 >= 1.0f);
      let x_1410 : bool = u_xlatb51;
      let x_1412 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1410 | x_1412);
      let x_1414 : bool = u_xlatb51;
      let x_1415 : f32 = u_xlat50;
      u_xlat50 = select(x_1415, 1.0f, x_1414);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1418 : f32 = u_xlat50;
    u_xlat51 = (-(x_1418) + 1.0f);
    let x_1421 : f32 = u_xlat44;
    let x_1422 : f32 = u_xlat51;
    let x_1424 : f32 = u_xlat50;
    u_xlat50 = ((x_1421 * x_1422) + x_1424);
    let x_1426 : f32 = u_xlat48;
    let x_1427 : f32 = u_xlat50;
    u_xlat48 = (x_1426 * x_1427);
    let x_1429 : vec4<f32> = u_xlat1;
    let x_1431 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1429.x, x_1429.y, x_1429.z), vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1434, 0.0f, 1.0f);
    let x_1436 : f32 = u_xlat48;
    let x_1437 : f32 = u_xlat50;
    u_xlat48 = (x_1436 * x_1437);
    let x_1439 : f32 = u_xlat48;
    let x_1441 : i32 = u_xlati47;
    let x_1443 : vec4<f32> = x_1155.x_AdditionalLightsColor[x_1441];
    let x_1445 : vec3<f32> = (vec3<f32>(x_1439, x_1439, x_1439) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
    let x_1448 : vec4<f32> = u_xlat8;
    let x_1450 : f32 = u_xlat49;
    let x_1453 : vec3<f32> = u_xlat2;
    let x_1454 : vec3<f32> = ((vec3<f32>(x_1448.x, x_1448.y, x_1448.z) * vec3<f32>(x_1450, x_1450, x_1450)) + x_1453);
    let x_1455 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
    let x_1457 : vec4<f32> = u_xlat8;
    let x_1459 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1457.x, x_1457.y, x_1457.z), vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
    let x_1462 : f32 = u_xlat47;
    u_xlat47 = max(x_1462, 1.17549435e-38f);
    let x_1464 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1464);
    let x_1466 : f32 = u_xlat47;
    let x_1468 : vec4<f32> = u_xlat8;
    let x_1470 : vec3<f32> = (vec3<f32>(x_1466, x_1466, x_1466) * vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
    let x_1471 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
    let x_1473 : vec4<f32> = u_xlat1;
    let x_1475 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1473.x, x_1473.y, x_1473.z), vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
    let x_1478 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1478, 0.0f, 1.0f);
    let x_1480 : vec4<f32> = u_xlat9;
    let x_1482 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1480.x, x_1480.y, x_1480.z), vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
    let x_1485 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1485, 0.0f, 1.0f);
    let x_1487 : f32 = u_xlat47;
    let x_1488 : f32 = u_xlat47;
    u_xlat47 = (x_1487 * x_1488);
    let x_1490 : f32 = u_xlat47;
    let x_1492 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1490 * x_1492) + 1.00001001358032226562f);
    let x_1495 : f32 = u_xlat48;
    let x_1496 : f32 = u_xlat48;
    u_xlat48 = (x_1495 * x_1496);
    let x_1498 : f32 = u_xlat47;
    let x_1499 : f32 = u_xlat47;
    u_xlat47 = (x_1498 * x_1499);
    let x_1501 : f32 = u_xlat48;
    u_xlat48 = max(x_1501, 0.10000000149011611938f);
    let x_1503 : f32 = u_xlat47;
    let x_1504 : f32 = u_xlat48;
    u_xlat47 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat45;
    let x_1507 : f32 = u_xlat47;
    u_xlat47 = (x_1506 * x_1507);
    let x_1509 : f32 = u_xlat43;
    let x_1510 : f32 = u_xlat47;
    u_xlat47 = (x_1509 / x_1510);
    let x_1512 : vec4<f32> = u_xlat5;
    let x_1514 : f32 = u_xlat47;
    let x_1517 : vec4<f32> = u_xlat4;
    let x_1519 : vec3<f32> = ((vec3<f32>(x_1512.x, x_1512.y, x_1512.z) * vec3<f32>(x_1514, x_1514, x_1514)) + vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
    let x_1520 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
    let x_1522 : vec4<f32> = u_xlat8;
    let x_1524 : vec4<f32> = u_xlat10;
    let x_1527 : vec4<f32> = u_xlat7;
    let x_1529 : vec3<f32> = ((vec3<f32>(x_1522.x, x_1522.y, x_1522.z) * vec3<f32>(x_1524.x, x_1524.y, x_1524.z)) + vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
    let x_1530 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);

    continuing {
      let x_1532 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1532 + bitcast<u32>(1i));
    }
  }
  let x_1534 : vec4<f32> = u_xlat3;
  let x_1536 : f32 = u_xlat14;
  let x_1539 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * vec3<f32>(x_1536, x_1536, x_1536)) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = u_xlat7;
  let x_1544 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1542.x, x_1542.y, x_1542.z) + x_1544);
  let x_1548 : f32 = u_xlat42;
  let x_1550 : vec3<f32> = u_xlat0;
  let x_1551 : vec3<f32> = (vec3<f32>(x_1548, x_1548, x_1548) * x_1550);
  let x_1552 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
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


