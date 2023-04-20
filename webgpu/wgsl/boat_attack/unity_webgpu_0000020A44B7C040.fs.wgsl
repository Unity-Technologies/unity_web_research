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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_888 : UnityPerDraw;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1048 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1484 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1076 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1625 : f32;
  var x_1636 : f32;
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
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_111.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.z;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec4<f32> = u_xlat6;
  let x_390 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat43;
  u_xlat43 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat43;
  u_xlat43 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_403);
  let x_405 : f32 = u_xlat43;
  u_xlat7.z = max(x_405, 0.0000000000000001f);
  let x_409 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_13.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_111.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat43;
  u_xlat43 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat43;
  u_xlat43 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_451);
  let x_453 : f32 = u_xlat43;
  u_xlat8.z = max(x_453, 0.0000000000000001f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_13.x_NormalScale1;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_111.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat43;
  u_xlat43 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat43;
  u_xlat43 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_520);
  let x_522 : f32 = u_xlat43;
  u_xlat8.z = max(x_522, 0.0000000000000001f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_13.x_NormalScale2;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_111.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat43;
  u_xlat43 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat43;
  u_xlat43 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_583);
  let x_585 : f32 = u_xlat43;
  u_xlat8.z = max(x_585, 0.0000000000000001f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_13.x_NormalScale3;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00000999999974737875f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat43;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_13.x_Smoothness0;
  let x_675 : f32 = x_13.x_Smoothness1;
  let x_677 : f32 = x_13.x_Smoothness2;
  let x_679 : f32 = x_13.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_13.x_LayerHasMask0;
  let x_689 : f32 = x_13.x_LayerHasMask1;
  let x_692 : f32 = x_13.x_LayerHasMask2;
  let x_695 : f32 = x_13.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_13.x_Metallic0;
  let x_723 : f32 = x_13.x_Metallic1;
  let x_726 : f32 = x_13.x_Metallic2;
  let x_729 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_13.x_LayerHasMask0;
  let x_736 : f32 = x_13.x_LayerHasMask1;
  let x_738 : f32 = x_13.x_LayerHasMask2;
  let x_740 : f32 = x_13.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_13.x_Metallic0;
  let x_747 : f32 = x_13.x_Metallic1;
  let x_749 : f32 = x_13.x_Metallic2;
  let x_751 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_13.x_LayerHasMask0;
  let x_774 : f32 = x_13.x_LayerHasMask1;
  let x_776 : f32 = x_13.x_LayerHasMask2;
  let x_778 : f32 = x_13.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat43;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_837 : f32 = vs_TEXCOORD7.y;
  let x_839 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_837 * x_839);
  let x_843 : f32 = x_111.unity_MatrixV[0i].z;
  let x_845 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_843 * x_845) + x_848);
  let x_852 : f32 = x_111.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_TEXCOORD7.z;
  let x_857 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_852 * x_854) + x_857);
  let x_861 : f32 = u_xlat2.x;
  let x_863 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_861 + x_863);
  let x_867 : f32 = u_xlat2.x;
  let x_870 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_867) + -(x_870));
  let x_875 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_875, 0.0f);
  let x_879 : f32 = u_xlat2.x;
  let x_881 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_879 * x_881);
  u_xlat1.w = 1.0f;
  let x_890 : vec4<f32> = x_888.unity_SHAr;
  let x_891 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_890, x_891);
  let x_895 : vec4<f32> = x_888.unity_SHAg;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_895, x_896);
  let x_900 : vec4<f32> = x_888.unity_SHAb;
  let x_901 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_900, x_901);
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_904.y, x_904.z, x_904.z, x_904.x) * vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.z));
  let x_910 : vec4<f32> = x_888.unity_SHBr;
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_910, x_911);
  let x_915 : vec4<f32> = x_888.unity_SHBg;
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_915, x_916);
  let x_920 : vec4<f32> = x_888.unity_SHBb;
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_920, x_921);
  let x_925 : f32 = u_xlat1.y;
  let x_927 : f32 = u_xlat1.y;
  u_xlat43 = (x_925 * x_927);
  let x_930 : f32 = u_xlat1.x;
  let x_932 : f32 = u_xlat1.x;
  let x_934 : f32 = u_xlat43;
  u_xlat43 = ((x_930 * x_932) + -(x_934));
  let x_940 : vec4<f32> = x_888.unity_SHC;
  let x_942 : f32 = u_xlat43;
  let x_945 : vec4<f32> = u_xlat6;
  u_xlat16 = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat16;
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_948 + vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_952, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_956) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_961 : f32 = u_xlat28;
  let x_962 : f32 = u_xlat43;
  u_xlat3.x = (x_961 + -(x_962));
  let x_967 : f32 = u_xlat43;
  let x_969 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_967, x_967, x_967) * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat5;
  let x_976 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_977 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec3<f32> = u_xlat0;
  let x_981 : vec4<f32> = u_xlat4;
  let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.x, x_979.x) * vec3<f32>(x_981.x, x_981.y, x_981.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : f32 = u_xlat28;
  u_xlat0.x = (-(x_989) + 1.0f);
  let x_994 : f32 = u_xlat0.x;
  let x_996 : f32 = u_xlat0.x;
  u_xlat28 = (x_994 * x_996);
  let x_998 : f32 = u_xlat28;
  u_xlat28 = max(x_998, 0.0078125f);
  let x_1001 : f32 = u_xlat28;
  let x_1002 : f32 = u_xlat28;
  u_xlat43 = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1005 + 1.0f);
  let x_1009 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat28;
  u_xlat46 = ((x_1013 * 4.0f) + 2.0f);
  let x_1016 : f32 = u_xlat14;
  u_xlat14 = min(x_1016, 1.0f);
  let x_1021 : vec4<f32> = vs_TEXCOORD8;
  let x_1022 : vec2<f32> = vec2<f32>(x_1021.x, x_1021.y);
  let x_1024 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
  let x_1036 : vec3<f32> = txVec0;
  let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
  u_xlat5.x = x_1038;
  let x_1050 : f32 = x_1048.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1050) + 1.0f);
  let x_1055 : f32 = u_xlat5.x;
  let x_1057 : f32 = x_1048.x_MainLightShadowParams.x;
  let x_1060 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1055 * x_1057) + x_1060);
  let x_1065 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1065);
  let x_1069 : f32 = vs_TEXCOORD8.z;
  u_xlatb33 = (x_1069 >= 1.0f);
  let x_1071 : bool = u_xlatb33;
  let x_1072 : bool = u_xlatb19;
  u_xlatb19 = (x_1071 | x_1072);
  let x_1074 : bool = u_xlatb19;
  if (x_1074) {
    x_1076 = 1.0f;
  } else {
    let x_1081 : f32 = u_xlat5.x;
    x_1076 = x_1081;
  }
  let x_1082 : f32 = x_1076;
  u_xlat5.x = x_1082;
  let x_1084 : vec3<f32> = vs_TEXCOORD7;
  let x_1087 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1084 + -(x_1087));
  let x_1090 : vec3<f32> = u_xlat19;
  let x_1091 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1090, x_1091);
  let x_1096 : f32 = u_xlat19.x;
  let x_1098 : f32 = x_1048.x_MainLightShadowParams.z;
  let x_1101 : f32 = x_1048.x_MainLightShadowParams.w;
  u_xlat33 = ((x_1096 * x_1098) + x_1101);
  let x_1103 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1103, 0.0f, 1.0f);
  let x_1107 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1107) + 1.0f);
  let x_1110 : f32 = u_xlat33;
  let x_1111 : f32 = u_xlat47;
  let x_1114 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1110 * x_1111) + x_1114);
  let x_1118 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1118;
  let x_1121 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1121;
  let x_1124 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1124;
  let x_1126 : vec4<f32> = u_xlat6;
  let x_1129 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(-(vec3<f32>(x_1126.x, x_1126.y, x_1126.z)), vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : f32 = u_xlat33;
  let x_1133 : f32 = u_xlat33;
  u_xlat33 = (x_1132 + x_1133);
  let x_1135 : vec4<f32> = u_xlat1;
  let x_1137 : f32 = u_xlat33;
  let x_1141 : vec4<f32> = u_xlat6;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * -(vec3<f32>(x_1137, x_1137, x_1137))) + -(vec3<f32>(x_1141.x, x_1141.y, x_1141.z)));
  let x_1145 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec4<f32> = u_xlat1;
  let x_1149 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_1147.x, x_1147.y, x_1147.z), vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1152, 0.0f, 1.0f);
  let x_1154 : f32 = u_xlat33;
  u_xlat33 = (-(x_1154) + 1.0f);
  let x_1157 : f32 = u_xlat33;
  let x_1158 : f32 = u_xlat33;
  u_xlat33 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat33;
  let x_1161 : f32 = u_xlat33;
  u_xlat33 = (x_1160 * x_1161);
  let x_1164 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1164) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1171 : f32 = u_xlat0.x;
  let x_1172 : f32 = u_xlat47;
  u_xlat0.x = (x_1171 * x_1172);
  let x_1176 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1176 * 6.0f);
  let x_1188 : vec4<f32> = u_xlat7;
  let x_1191 : f32 = u_xlat0.x;
  let x_1192 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1188.x, x_1188.y, x_1188.z), x_1191);
  u_xlat7 = x_1192;
  let x_1194 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1194 + -1.0f);
  let x_1198 : f32 = x_888.unity_SpecCube0_HDR.w;
  let x_1200 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1198 * x_1200) + 1.0f);
  let x_1205 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1205, 0.0f);
  let x_1209 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1209);
  let x_1213 : f32 = u_xlat0.x;
  let x_1215 : f32 = x_888.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1213 * x_1215);
  let x_1219 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1219);
  let x_1223 : f32 = u_xlat0.x;
  let x_1225 : f32 = x_888.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1223 * x_1225);
  let x_1228 : vec4<f32> = u_xlat7;
  let x_1230 : vec3<f32> = u_xlat0;
  let x_1232 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(x_1230.x, x_1230.x, x_1230.x));
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : f32 = u_xlat28;
  let x_1237 : f32 = u_xlat28;
  let x_1241 : vec2<f32> = ((vec2<f32>(x_1235, x_1235) * vec2<f32>(x_1237, x_1237)) + vec2<f32>(-1.0f, 1.0f));
  let x_1242 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1241.x, x_1242.y, x_1241.y);
  let x_1245 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1245);
  let x_1247 : vec4<f32> = u_xlat4;
  let x_1250 : vec4<f32> = u_xlat3;
  let x_1252 : vec3<f32> = (-(vec3<f32>(x_1247.x, x_1247.y, x_1247.z)) + vec3<f32>(x_1250.x, x_1250.x, x_1250.x));
  let x_1253 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : f32 = u_xlat33;
  let x_1257 : vec4<f32> = u_xlat8;
  let x_1260 : vec4<f32> = u_xlat4;
  let x_1262 : vec3<f32> = ((vec3<f32>(x_1255, x_1255, x_1255) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z)) + vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : f32 = u_xlat28;
  let x_1267 : vec4<f32> = u_xlat8;
  let x_1269 : vec3<f32> = (vec3<f32>(x_1265, x_1265, x_1265) * vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
  let x_1272 : vec4<f32> = u_xlat7;
  let x_1274 : vec4<f32> = u_xlat8;
  let x_1276 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
  let x_1279 : vec3<f32> = u_xlat16;
  let x_1280 : vec3<f32> = u_xlat17;
  let x_1282 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1279 * x_1280) + vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1286 : f32 = u_xlat5.x;
  let x_1288 : f32 = x_888.unity_LightData.z;
  u_xlat28 = (x_1286 * x_1288);
  let x_1290 : vec4<f32> = u_xlat1;
  let x_1293 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1290.x, x_1290.y, x_1290.z), vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1298 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1298, 0.0f, 1.0f);
  let x_1301 : f32 = u_xlat28;
  let x_1303 : f32 = u_xlat3.x;
  u_xlat28 = (x_1301 * x_1303);
  let x_1305 : f32 = u_xlat28;
  let x_1308 : vec4<f32> = x_111.x_MainLightColor;
  let x_1310 : vec3<f32> = (vec3<f32>(x_1305, x_1305, x_1305) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1310.x, x_1311.y, x_1310.y, x_1310.z);
  let x_1313 : vec4<f32> = u_xlat6;
  let x_1316 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1318 : vec3<f32> = (vec3<f32>(x_1313.x, x_1313.y, x_1313.z) + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : vec4<f32> = u_xlat7;
  let x_1323 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : f32 = u_xlat28;
  u_xlat28 = max(x_1326, 1.17549435e-38f);
  let x_1329 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1329);
  let x_1331 : f32 = u_xlat28;
  let x_1333 : vec4<f32> = u_xlat7;
  let x_1335 : vec3<f32> = (vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1336 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
  let x_1338 : vec4<f32> = u_xlat1;
  let x_1340 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1338.x, x_1338.y, x_1338.z), vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
  let x_1343 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1343, 0.0f, 1.0f);
  let x_1346 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1348 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1346.x, x_1346.y, x_1346.z), vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
  let x_1353 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1353, 0.0f, 1.0f);
  let x_1356 : f32 = u_xlat28;
  let x_1357 : f32 = u_xlat28;
  u_xlat28 = (x_1356 * x_1357);
  let x_1359 : f32 = u_xlat28;
  let x_1361 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1359 * x_1361) + 1.00001001358032226562f);
  let x_1366 : f32 = u_xlat3.x;
  let x_1368 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1366 * x_1368);
  let x_1371 : f32 = u_xlat28;
  let x_1372 : f32 = u_xlat28;
  u_xlat28 = (x_1371 * x_1372);
  let x_1375 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1375, 0.10000000149011611938f);
  let x_1379 : f32 = u_xlat28;
  let x_1381 : f32 = u_xlat3.x;
  u_xlat28 = (x_1379 * x_1381);
  let x_1383 : f32 = u_xlat46;
  let x_1384 : f32 = u_xlat28;
  u_xlat28 = (x_1383 * x_1384);
  let x_1386 : f32 = u_xlat43;
  let x_1387 : f32 = u_xlat28;
  u_xlat28 = (x_1386 / x_1387);
  let x_1389 : vec4<f32> = u_xlat4;
  let x_1391 : f32 = u_xlat28;
  let x_1394 : vec3<f32> = u_xlat17;
  let x_1395 : vec3<f32> = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * vec3<f32>(x_1391, x_1391, x_1391)) + x_1394);
  let x_1396 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1398 : vec4<f32> = u_xlat5;
  let x_1400 : vec4<f32> = u_xlat7;
  let x_1402 : vec3<f32> = (vec3<f32>(x_1398.x, x_1398.z, x_1398.w) * vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1402.z);
  let x_1406 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1408 : f32 = x_888.unity_LightData.y;
  u_xlat28 = min(x_1406, x_1408);
  let x_1412 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1412));
  let x_1416 : f32 = u_xlat19.x;
  let x_1418 : f32 = x_1048.x_AdditionalShadowFadeParams.x;
  let x_1421 : f32 = x_1048.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1416 * x_1418) + x_1421);
  let x_1425 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1425, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1438 : u32 = u_xlatu_loop_1;
    let x_1439 : u32 = u_xlatu28;
    if ((x_1438 < x_1439)) {
    } else {
      break;
    }
    let x_1442 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1442 >> 2u);
    let x_1446 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1446 & 3u));
    let x_1450 : u32 = u_xlatu48;
    let x_1453 : vec4<f32> = x_888.unity_LightIndices[bitcast<i32>(x_1450)];
    let x_1463 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1468 : vec4<u32> = indexable[x_1463];
    u_xlat48 = dot(x_1453, bitcast<vec4<f32>>(x_1468));
    let x_1472 : f32 = u_xlat48;
    u_xlati48 = i32(x_1472);
    let x_1474 : vec3<f32> = vs_TEXCOORD7;
    let x_1485 : i32 = u_xlati48;
    let x_1487 : vec4<f32> = x_1484.x_AdditionalLightsPosition[x_1485];
    let x_1490 : i32 = u_xlati48;
    let x_1492 : vec4<f32> = x_1484.x_AdditionalLightsPosition[x_1490];
    let x_1494 : vec3<f32> = ((-(x_1474) * vec3<f32>(x_1487.w, x_1487.w, x_1487.w)) + vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
    let x_1498 : vec4<f32> = u_xlat8;
    let x_1500 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1498.x, x_1498.y, x_1498.z), vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
    let x_1503 : f32 = u_xlat49;
    u_xlat49 = max(x_1503, 0.00006103515625f);
    let x_1506 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1506);
    let x_1508 : f32 = u_xlat50;
    let x_1510 : vec4<f32> = u_xlat8;
    let x_1512 : vec3<f32> = (vec3<f32>(x_1508, x_1508, x_1508) * vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
    let x_1513 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
    let x_1516 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1516);
    let x_1518 : f32 = u_xlat49;
    let x_1519 : i32 = u_xlati48;
    let x_1521 : f32 = x_1484.x_AdditionalLightsAttenuation[x_1519].x;
    u_xlat49 = (x_1518 * x_1521);
    let x_1523 : f32 = u_xlat49;
    let x_1525 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1523) * x_1525) + 1.0f);
    let x_1528 : f32 = u_xlat49;
    u_xlat49 = max(x_1528, 0.0f);
    let x_1530 : f32 = u_xlat49;
    let x_1531 : f32 = u_xlat49;
    u_xlat49 = (x_1530 * x_1531);
    let x_1533 : f32 = u_xlat49;
    let x_1534 : f32 = u_xlat51;
    u_xlat49 = (x_1533 * x_1534);
    let x_1536 : i32 = u_xlati48;
    let x_1538 : vec4<f32> = x_1484.x_AdditionalLightsSpotDir[x_1536];
    let x_1540 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1538.x, x_1538.y, x_1538.z), vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
    let x_1543 : f32 = u_xlat51;
    let x_1544 : i32 = u_xlati48;
    let x_1546 : f32 = x_1484.x_AdditionalLightsAttenuation[x_1544].z;
    let x_1548 : i32 = u_xlati48;
    let x_1550 : f32 = x_1484.x_AdditionalLightsAttenuation[x_1548].w;
    u_xlat51 = ((x_1543 * x_1546) + x_1550);
    let x_1552 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1552, 0.0f, 1.0f);
    let x_1554 : f32 = u_xlat51;
    let x_1555 : f32 = u_xlat51;
    u_xlat51 = (x_1554 * x_1555);
    let x_1557 : f32 = u_xlat49;
    let x_1558 : f32 = u_xlat51;
    u_xlat49 = (x_1557 * x_1558);
    let x_1561 : i32 = u_xlati48;
    let x_1563 : f32 = x_1048.x_AdditionalShadowParams[x_1561].w;
    u_xlati51 = i32(x_1563);
    let x_1568 : i32 = u_xlati51;
    u_xlatb10.x = (x_1568 >= 0i);
    let x_1572 : bool = u_xlatb10.x;
    if (x_1572) {
      let x_1576 : i32 = u_xlati48;
      let x_1578 : f32 = x_1048.x_AdditionalShadowParams[x_1576].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1578, x_1578, x_1578, x_1578))));
      let x_1584 : bool = u_xlatb10.x;
      if (x_1584) {
        let x_1587 : vec4<f32> = u_xlat9;
        let x_1590 : vec4<f32> = u_xlat9;
        let x_1593 : vec4<bool> = (abs(vec4<f32>(x_1587.z, x_1587.z, x_1587.y, x_1587.z)) >= abs(vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.x)));
        u_xlatb10 = vec3<bool>(x_1593.x, x_1593.y, x_1593.z);
        let x_1596 : bool = u_xlatb10.y;
        let x_1598 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1596 & x_1598);
        let x_1602 : vec4<f32> = u_xlat9;
        let x_1605 : vec4<bool> = (-(vec4<f32>(x_1602.z, x_1602.y, x_1602.x, x_1602.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1605.x, x_1605.y, x_1605.z);
        let x_1609 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1609);
        let x_1614 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1614);
        let x_1619 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1619);
        let x_1624 : bool = u_xlatb10.z;
        if (x_1624) {
          let x_1629 : f32 = u_xlat24.z;
          x_1625 = x_1629;
        } else {
          let x_1632 : f32 = u_xlat11.x;
          x_1625 = x_1632;
        }
        let x_1633 : f32 = x_1625;
        u_xlat38 = x_1633;
        let x_1635 : bool = u_xlatb10.x;
        if (x_1635) {
          let x_1640 : f32 = u_xlat24.x;
          x_1636 = x_1640;
        } else {
          let x_1642 : f32 = u_xlat38;
          x_1636 = x_1642;
        }
        let x_1643 : f32 = x_1636;
        u_xlat10.x = x_1643;
        let x_1645 : i32 = u_xlati48;
        let x_1647 : f32 = x_1048.x_AdditionalShadowParams[x_1645].w;
        u_xlat24.x = trunc(x_1647);
        let x_1651 : f32 = u_xlat10.x;
        let x_1653 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1651 + x_1653);
        let x_1657 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1657);
      }
      let x_1659 : i32 = u_xlati51;
      u_xlati51 = (x_1659 << bitcast<u32>(2i));
      let x_1661 : vec3<f32> = vs_TEXCOORD7;
      let x_1663 : i32 = u_xlati51;
      let x_1666 : i32 = u_xlati51;
      let x_1670 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[((x_1663 + 1i) / 4i)][((x_1666 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1661.y, x_1661.y, x_1661.y, x_1661.y) * x_1670);
      let x_1672 : i32 = u_xlati51;
      let x_1674 : i32 = u_xlati51;
      let x_1677 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[(x_1672 / 4i)][(x_1674 % 4i)];
      let x_1678 : vec3<f32> = vs_TEXCOORD7;
      let x_1681 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1677 * vec4<f32>(x_1678.x, x_1678.x, x_1678.x, x_1678.x)) + x_1681);
      let x_1683 : i32 = u_xlati51;
      let x_1686 : i32 = u_xlati51;
      let x_1690 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[((x_1683 + 2i) / 4i)][((x_1686 + 2i) % 4i)];
      let x_1691 : vec3<f32> = vs_TEXCOORD7;
      let x_1694 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1690 * vec4<f32>(x_1691.z, x_1691.z, x_1691.z, x_1691.z)) + x_1694);
      let x_1696 : vec4<f32> = u_xlat10;
      let x_1697 : i32 = u_xlati51;
      let x_1700 : i32 = u_xlati51;
      let x_1704 : vec4<f32> = x_1048.x_AdditionalLightsWorldToShadow[((x_1697 + 3i) / 4i)][((x_1700 + 3i) % 4i)];
      u_xlat10 = (x_1696 + x_1704);
      let x_1706 : vec4<f32> = u_xlat10;
      let x_1708 : vec4<f32> = u_xlat10;
      let x_1710 : vec3<f32> = (vec3<f32>(x_1706.x, x_1706.y, x_1706.z) / vec3<f32>(x_1708.w, x_1708.w, x_1708.w));
      let x_1711 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
      let x_1714 : vec4<f32> = u_xlat10;
      let x_1715 : vec2<f32> = vec2<f32>(x_1714.x, x_1714.y);
      let x_1717 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
      let x_1725 : vec3<f32> = txVec1;
      let x_1727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1725.xy, x_1725.z);
      u_xlat51 = x_1727;
      let x_1728 : i32 = u_xlati48;
      let x_1730 : f32 = x_1048.x_AdditionalShadowParams[x_1728].x;
      u_xlat10.x = (1.0f + -(x_1730));
      let x_1734 : f32 = u_xlat51;
      let x_1735 : i32 = u_xlati48;
      let x_1737 : f32 = x_1048.x_AdditionalShadowParams[x_1735].x;
      let x_1740 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1734 * x_1737) + x_1740);
      let x_1743 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1743);
      let x_1748 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1748 >= 1.0f);
      let x_1750 : bool = u_xlatb24;
      let x_1752 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1750 | x_1752);
      let x_1756 : bool = u_xlatb10.x;
      let x_1757 : f32 = u_xlat51;
      u_xlat51 = select(x_1757, 1.0f, x_1756);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1760 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1760) + 1.0f);
    let x_1765 : f32 = u_xlat3.x;
    let x_1767 : f32 = u_xlat10.x;
    let x_1769 : f32 = u_xlat51;
    u_xlat51 = ((x_1765 * x_1767) + x_1769);
    let x_1771 : f32 = u_xlat49;
    let x_1772 : f32 = u_xlat51;
    u_xlat49 = (x_1771 * x_1772);
    let x_1774 : vec4<f32> = u_xlat1;
    let x_1776 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1774.x, x_1774.y, x_1774.z), vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
    let x_1779 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1779, 0.0f, 1.0f);
    let x_1781 : f32 = u_xlat49;
    let x_1782 : f32 = u_xlat51;
    u_xlat49 = (x_1781 * x_1782);
    let x_1784 : f32 = u_xlat49;
    let x_1786 : i32 = u_xlati48;
    let x_1788 : vec4<f32> = x_1484.x_AdditionalLightsColor[x_1786];
    let x_1790 : vec3<f32> = (vec3<f32>(x_1784, x_1784, x_1784) * vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
    let x_1791 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
    let x_1793 : vec4<f32> = u_xlat8;
    let x_1795 : f32 = u_xlat50;
    let x_1798 : vec4<f32> = u_xlat6;
    let x_1800 : vec3<f32> = ((vec3<f32>(x_1793.x, x_1793.y, x_1793.z) * vec3<f32>(x_1795, x_1795, x_1795)) + vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
    let x_1801 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
    let x_1803 : vec4<f32> = u_xlat8;
    let x_1805 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1803.x, x_1803.y, x_1803.z), vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : f32 = u_xlat48;
    u_xlat48 = max(x_1808, 1.17549435e-38f);
    let x_1810 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1810);
    let x_1812 : f32 = u_xlat48;
    let x_1814 : vec4<f32> = u_xlat8;
    let x_1816 : vec3<f32> = (vec3<f32>(x_1812, x_1812, x_1812) * vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
    let x_1817 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
    let x_1819 : vec4<f32> = u_xlat1;
    let x_1821 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1819.x, x_1819.y, x_1819.z), vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
    let x_1824 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1824, 0.0f, 1.0f);
    let x_1826 : vec4<f32> = u_xlat9;
    let x_1828 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1826.x, x_1826.y, x_1826.z), vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1831, 0.0f, 1.0f);
    let x_1833 : f32 = u_xlat48;
    let x_1834 : f32 = u_xlat48;
    u_xlat48 = (x_1833 * x_1834);
    let x_1836 : f32 = u_xlat48;
    let x_1838 : f32 = u_xlat0.x;
    u_xlat48 = ((x_1836 * x_1838) + 1.00001001358032226562f);
    let x_1841 : f32 = u_xlat49;
    let x_1842 : f32 = u_xlat49;
    u_xlat49 = (x_1841 * x_1842);
    let x_1844 : f32 = u_xlat48;
    let x_1845 : f32 = u_xlat48;
    u_xlat48 = (x_1844 * x_1845);
    let x_1847 : f32 = u_xlat49;
    u_xlat49 = max(x_1847, 0.10000000149011611938f);
    let x_1849 : f32 = u_xlat48;
    let x_1850 : f32 = u_xlat49;
    u_xlat48 = (x_1849 * x_1850);
    let x_1852 : f32 = u_xlat46;
    let x_1853 : f32 = u_xlat48;
    u_xlat48 = (x_1852 * x_1853);
    let x_1855 : f32 = u_xlat43;
    let x_1856 : f32 = u_xlat48;
    u_xlat48 = (x_1855 / x_1856);
    let x_1858 : vec4<f32> = u_xlat4;
    let x_1860 : f32 = u_xlat48;
    let x_1863 : vec3<f32> = u_xlat17;
    let x_1864 : vec3<f32> = ((vec3<f32>(x_1858.x, x_1858.y, x_1858.z) * vec3<f32>(x_1860, x_1860, x_1860)) + x_1863);
    let x_1865 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
    let x_1867 : vec4<f32> = u_xlat8;
    let x_1869 : vec4<f32> = u_xlat10;
    let x_1872 : vec4<f32> = u_xlat7;
    let x_1874 : vec3<f32> = ((vec3<f32>(x_1867.x, x_1867.y, x_1867.z) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z)) + vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
    let x_1875 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);

    continuing {
      let x_1877 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1877 + bitcast<u32>(1i));
    }
  }
  let x_1879 : vec3<f32> = u_xlat16;
  let x_1880 : f32 = u_xlat14;
  let x_1883 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_1879 * vec3<f32>(x_1880, x_1880, x_1880)) + vec3<f32>(x_1883.x, x_1883.z, x_1883.w));
  let x_1886 : vec4<f32> = u_xlat7;
  let x_1888 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1886.x, x_1886.y, x_1886.z) + x_1888);
  let x_1890 : f32 = u_xlat42;
  let x_1892 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1890, x_1890, x_1890) * x_1892);
  let x_1895 : f32 = u_xlat2.x;
  let x_1897 : f32 = u_xlat2.x;
  u_xlat42 = (x_1895 * -(x_1897));
  let x_1900 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1900);
  let x_1904 : vec3<f32> = u_xlat0;
  let x_1905 : f32 = u_xlat42;
  let x_1907 : vec3<f32> = (x_1904 * vec3<f32>(x_1905, x_1905, x_1905));
  let x_1908 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


