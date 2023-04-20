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

@group(1) @binding(4) var<uniform> x_587 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1078 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1354 : AdditionalLights;

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

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_560 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_965 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1494 : f32;
  var x_1505 : f32;
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
  let x_579 : vec3<f32> = vs_TEXCOORD7;
  let x_589 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres0;
  let x_592 : vec3<f32> = (x_579 + -(vec3<f32>(x_589.x, x_589.y, x_589.z)));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = vs_TEXCOORD7;
  let x_597 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres1;
  let x_600 : vec3<f32> = (x_595 + -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_601 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = vs_TEXCOORD7;
  let x_606 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres2;
  let x_609 : vec3<f32> = (x_603 + -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = vs_TEXCOORD7;
  let x_614 : vec4<f32> = x_587.x_CascadeShadowSplitSpheres3;
  let x_617 : vec3<f32> = (x_612 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
  let x_618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_638 : vec4<f32> = u_xlat7;
  let x_640 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_646 : vec4<f32> = u_xlat3;
  let x_648 : vec4<f32> = x_587.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_646 < x_648);
  let x_651 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_663);
  let x_667 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_667);
  let x_672 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_672);
  let x_676 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_676);
  let x_679 : vec4<f32> = u_xlat3;
  let x_681 : vec4<f32> = u_xlat4;
  let x_683 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) + vec3<f32>(x_681.y, x_681.z, x_681.w));
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_689 : vec3<f32> = max(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_689.x, x_689.y, x_689.z);
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_692, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_697 : f32 = u_xlat43;
  u_xlat43 = (-(x_697) + 4.0f);
  let x_702 : f32 = u_xlat43;
  u_xlatu43 = u32(x_702);
  let x_706 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_706) << bitcast<u32>(2i));
  let x_709 : vec3<f32> = vs_TEXCOORD7;
  let x_711 : i32 = u_xlati43;
  let x_714 : i32 = u_xlati43;
  let x_718 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_711 + 1i) / 4i)][((x_714 + 1i) % 4i)];
  let x_720 : vec3<f32> = (vec3<f32>(x_709.y, x_709.y, x_709.y) * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : i32 = u_xlati43;
  let x_725 : i32 = u_xlati43;
  let x_728 : vec4<f32> = x_587.x_MainLightWorldToShadow[(x_723 / 4i)][(x_725 % 4i)];
  let x_730 : vec3<f32> = vs_TEXCOORD7;
  let x_733 : vec4<f32> = u_xlat3;
  let x_735 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730.x, x_730.x, x_730.x)) + vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati43;
  let x_741 : i32 = u_xlati43;
  let x_745 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_738 + 2i) / 4i)][((x_741 + 2i) % 4i)];
  let x_747 : vec3<f32> = vs_TEXCOORD7;
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747.z, x_747.z, x_747.z)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : i32 = u_xlati43;
  let x_760 : i32 = u_xlati43;
  let x_764 : vec4<f32> = x_587.x_MainLightWorldToShadow[((x_757 + 3i) / 4i)][((x_760 + 3i) % 4i)];
  let x_766 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : f32 = vs_TEXCOORD7.y;
  let x_773 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_771 * x_773);
  let x_776 : f32 = x_111.unity_MatrixV[0i].z;
  let x_778 : f32 = vs_TEXCOORD7.x;
  let x_780 : f32 = u_xlat43;
  u_xlat43 = ((x_776 * x_778) + x_780);
  let x_783 : f32 = x_111.unity_MatrixV[2i].z;
  let x_785 : f32 = vs_TEXCOORD7.z;
  let x_787 : f32 = u_xlat43;
  u_xlat43 = ((x_783 * x_785) + x_787);
  let x_789 : f32 = u_xlat43;
  let x_791 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_789 + x_791);
  let x_793 : f32 = u_xlat43;
  let x_796 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_793) + -(x_796));
  let x_799 : f32 = u_xlat43;
  u_xlat43 = max(x_799, 0.0f);
  let x_801 : f32 = u_xlat43;
  let x_803 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_801 * x_803);
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_111.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  u_xlat4 = x_814;
  let x_819 : vec4<f32> = vs_TEXCOORD0;
  let x_822 : f32 = x_111.x_GlobalMipBias.x;
  let x_823 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_819.z, x_819.w), x_822);
  let x_824 : vec3<f32> = vec3<f32>(x_823.x, x_823.y, x_823.z);
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat4;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : vec3<f32> = u_xlat2;
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_835, vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat44;
  u_xlat44 = (x_839 + 0.5f);
  let x_841 : f32 = u_xlat44;
  let x_843 : vec4<f32> = u_xlat6;
  let x_845 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_849 : f32 = u_xlat4.w;
  u_xlat44 = max(x_849, 0.00009999999747378752f);
  let x_852 : vec4<f32> = u_xlat4;
  let x_854 : f32 = u_xlat44;
  let x_856 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) / vec3<f32>(x_854, x_854, x_854));
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_860 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_860) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_866 : f32 = u_xlat28;
  let x_867 : f32 = u_xlat44;
  u_xlat45 = (x_866 + -(x_867));
  let x_870 : f32 = u_xlat44;
  let x_872 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat5;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_882 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = u_xlat0;
  let x_886 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = ((vec3<f32>(x_884.x, x_884.x, x_884.x) * vec3<f32>(x_886.x, x_886.y, x_886.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_892 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : f32 = u_xlat28;
  u_xlat0.x = (-(x_894) + 1.0f);
  let x_899 : f32 = u_xlat0.x;
  let x_901 : f32 = u_xlat0.x;
  u_xlat28 = (x_899 * x_901);
  let x_903 : f32 = u_xlat28;
  u_xlat28 = max(x_903, 0.0078125f);
  let x_906 : f32 = u_xlat28;
  let x_907 : f32 = u_xlat28;
  u_xlat44 = (x_906 * x_907);
  let x_909 : f32 = u_xlat45;
  u_xlat45 = (x_909 + 1.0f);
  let x_911 : f32 = u_xlat45;
  u_xlat45 = clamp(x_911, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat28;
  u_xlat46 = ((x_914 * 4.0f) + 2.0f);
  let x_917 : f32 = u_xlat14;
  u_xlat14 = min(x_917, 1.0f);
  let x_920 : vec4<f32> = u_xlat3;
  let x_921 : vec2<f32> = vec2<f32>(x_920.x, x_920.y);
  let x_923 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_921.x, x_921.y, x_923);
  let x_935 : vec3<f32> = txVec0;
  let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
  u_xlat3.x = x_937;
  let x_941 : f32 = x_587.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_941) + 1.0f);
  let x_945 : f32 = u_xlat3.x;
  let x_947 : f32 = x_587.x_MainLightShadowParams.x;
  let x_949 : f32 = u_xlat17;
  u_xlat3.x = ((x_945 * x_947) + x_949);
  let x_954 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_954);
  let x_958 : f32 = u_xlat3.z;
  u_xlatb31 = (x_958 >= 1.0f);
  let x_960 : bool = u_xlatb31;
  let x_961 : bool = u_xlatb17;
  u_xlatb17 = (x_960 | x_961);
  let x_963 : bool = u_xlatb17;
  if (x_963) {
    x_965 = 1.0f;
  } else {
    let x_970 : f32 = u_xlat3.x;
    x_965 = x_970;
  }
  let x_971 : f32 = x_965;
  u_xlat3.x = x_971;
  let x_973 : vec3<f32> = vs_TEXCOORD7;
  let x_975 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_977 : vec3<f32> = (x_973 + -(x_975));
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_986 : f32 = u_xlat17;
  let x_988 : f32 = x_587.x_MainLightShadowParams.z;
  let x_991 : f32 = x_587.x_MainLightShadowParams.w;
  u_xlat31 = ((x_986 * x_988) + x_991);
  let x_993 : f32 = u_xlat31;
  u_xlat31 = clamp(x_993, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_997) + 1.0f);
  let x_1000 : f32 = u_xlat31;
  let x_1001 : f32 = u_xlat47;
  let x_1004 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1000 * x_1001) + x_1004);
  let x_1007 : vec4<f32> = u_xlat1;
  let x_1010 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1007.x, x_1007.y, x_1007.z)), x_1010);
  let x_1012 : f32 = u_xlat31;
  let x_1013 : f32 = u_xlat31;
  u_xlat31 = (x_1012 + x_1013);
  let x_1015 : vec3<f32> = u_xlat2;
  let x_1016 : f32 = u_xlat31;
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1023 : vec3<f32> = ((x_1015 * -(vec3<f32>(x_1016, x_1016, x_1016))) + -(vec3<f32>(x_1020.x, x_1020.y, x_1020.z)));
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec3<f32> = u_xlat2;
  let x_1027 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(x_1026, vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1030, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat31;
  u_xlat31 = (-(x_1032) + 1.0f);
  let x_1035 : f32 = u_xlat31;
  let x_1036 : f32 = u_xlat31;
  u_xlat31 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat31;
  let x_1039 : f32 = u_xlat31;
  u_xlat31 = (x_1038 * x_1039);
  let x_1042 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1042) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1049 : f32 = u_xlat0.x;
  let x_1050 : f32 = u_xlat47;
  u_xlat0.x = (x_1049 * x_1050);
  let x_1054 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1054 * 6.0f);
  let x_1066 : vec4<f32> = u_xlat7;
  let x_1069 : f32 = u_xlat0.x;
  let x_1070 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1066.x, x_1066.y, x_1066.z), x_1069);
  u_xlat7 = x_1070;
  let x_1072 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1072 + -1.0f);
  let x_1080 : f32 = x_1078.unity_SpecCube0_HDR.w;
  let x_1082 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1080 * x_1082) + 1.0f);
  let x_1087 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1087, 0.0f);
  let x_1091 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1091);
  let x_1095 : f32 = u_xlat0.x;
  let x_1097 : f32 = x_1078.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1095 * x_1097);
  let x_1101 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1101);
  let x_1105 : f32 = u_xlat0.x;
  let x_1107 : f32 = x_1078.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1105 * x_1107);
  let x_1110 : vec4<f32> = u_xlat7;
  let x_1112 : vec3<f32> = u_xlat0;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(x_1112.x, x_1112.x, x_1112.x));
  let x_1115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : f32 = u_xlat28;
  let x_1119 : f32 = u_xlat28;
  let x_1123 : vec2<f32> = ((vec2<f32>(x_1117, x_1117) * vec2<f32>(x_1119, x_1119)) + vec2<f32>(-1.0f, 1.0f));
  let x_1124 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1123.x, x_1124.y, x_1123.y);
  let x_1127 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1127);
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1132 : f32 = u_xlat45;
  let x_1134 : vec3<f32> = (-(vec3<f32>(x_1129.x, x_1129.y, x_1129.z)) + vec3<f32>(x_1132, x_1132, x_1132));
  let x_1135 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : f32 = u_xlat31;
  let x_1139 : vec4<f32> = u_xlat8;
  let x_1142 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1137, x_1137, x_1137) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z)) + vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : f32 = u_xlat28;
  let x_1149 : vec4<f32> = u_xlat8;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1147, x_1147, x_1147) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat7;
  let x_1156 : vec4<f32> = u_xlat8;
  let x_1158 : vec3<f32> = (vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec4<f32> = u_xlat4;
  let x_1163 : vec4<f32> = u_xlat6;
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1168 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * vec3<f32>(x_1163.x, x_1163.y, x_1163.z)) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1172 : f32 = u_xlat3.x;
  let x_1174 : f32 = x_1078.unity_LightData.z;
  u_xlat28 = (x_1172 * x_1174);
  let x_1176 : vec3<f32> = u_xlat2;
  let x_1178 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_1176, vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1183 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1183, 0.0f, 1.0f);
  let x_1186 : f32 = u_xlat28;
  let x_1188 : f32 = u_xlat3.x;
  u_xlat28 = (x_1186 * x_1188);
  let x_1190 : f32 = u_xlat28;
  let x_1193 : vec4<f32> = x_111.x_MainLightColor;
  let x_1195 : vec3<f32> = (vec3<f32>(x_1190, x_1190, x_1190) * vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
  let x_1196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1195.x, x_1196.y, x_1195.y, x_1195.z);
  let x_1198 : vec4<f32> = u_xlat1;
  let x_1201 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1203 : vec3<f32> = (vec3<f32>(x_1198.x, x_1198.y, x_1198.z) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec4<f32> = u_xlat7;
  let x_1208 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1206.x, x_1206.y, x_1206.z), vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : f32 = u_xlat28;
  u_xlat28 = max(x_1211, 1.17549435e-38f);
  let x_1214 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1214);
  let x_1216 : f32 = u_xlat28;
  let x_1218 : vec4<f32> = u_xlat7;
  let x_1220 : vec3<f32> = (vec3<f32>(x_1216, x_1216, x_1216) * vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1223 : vec3<f32> = u_xlat2;
  let x_1224 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1223, vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1227, 0.0f, 1.0f);
  let x_1230 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1232 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1235, 0.0f, 1.0f);
  let x_1237 : f32 = u_xlat28;
  let x_1238 : f32 = u_xlat28;
  u_xlat28 = (x_1237 * x_1238);
  let x_1240 : f32 = u_xlat28;
  let x_1242 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1240 * x_1242) + 1.00001001358032226562f);
  let x_1246 : f32 = u_xlat47;
  let x_1247 : f32 = u_xlat47;
  u_xlat47 = (x_1246 * x_1247);
  let x_1249 : f32 = u_xlat28;
  let x_1250 : f32 = u_xlat28;
  u_xlat28 = (x_1249 * x_1250);
  let x_1252 : f32 = u_xlat47;
  u_xlat47 = max(x_1252, 0.10000000149011611938f);
  let x_1255 : f32 = u_xlat28;
  let x_1256 : f32 = u_xlat47;
  u_xlat28 = (x_1255 * x_1256);
  let x_1258 : f32 = u_xlat46;
  let x_1259 : f32 = u_xlat28;
  u_xlat28 = (x_1258 * x_1259);
  let x_1261 : f32 = u_xlat44;
  let x_1262 : f32 = u_xlat28;
  u_xlat28 = (x_1261 / x_1262);
  let x_1264 : vec4<f32> = u_xlat5;
  let x_1266 : f32 = u_xlat28;
  let x_1269 : vec4<f32> = u_xlat6;
  let x_1271 : vec3<f32> = ((vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(x_1266, x_1266, x_1266)) + vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : vec4<f32> = u_xlat3;
  let x_1276 : vec4<f32> = u_xlat7;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.z, x_1274.w) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
  let x_1282 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1284 : f32 = x_1078.unity_LightData.y;
  u_xlat28 = min(x_1282, x_1284);
  let x_1287 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1287));
  let x_1290 : f32 = u_xlat17;
  let x_1292 : f32 = x_587.x_AdditionalShadowFadeParams.x;
  let x_1295 : f32 = x_587.x_AdditionalShadowFadeParams.y;
  u_xlat17 = ((x_1290 * x_1292) + x_1295);
  let x_1297 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1297, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1309 : u32 = u_xlatu_loop_1;
    let x_1310 : u32 = u_xlatu28;
    if ((x_1309 < x_1310)) {
    } else {
      break;
    }
    let x_1313 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1313 >> 2u);
    let x_1316 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1316 & 3u));
    let x_1320 : u32 = u_xlatu48;
    let x_1323 : vec4<f32> = x_1078.unity_LightIndices[bitcast<i32>(x_1320)];
    let x_1333 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1338 : vec4<u32> = indexable[x_1333];
    u_xlat48 = dot(x_1323, bitcast<vec4<f32>>(x_1338));
    let x_1342 : f32 = u_xlat48;
    u_xlati48 = i32(x_1342);
    let x_1344 : vec3<f32> = vs_TEXCOORD7;
    let x_1355 : i32 = u_xlati48;
    let x_1357 : vec4<f32> = x_1354.x_AdditionalLightsPosition[x_1355];
    let x_1360 : i32 = u_xlati48;
    let x_1362 : vec4<f32> = x_1354.x_AdditionalLightsPosition[x_1360];
    let x_1364 : vec3<f32> = ((-(x_1344) * vec3<f32>(x_1357.w, x_1357.w, x_1357.w)) + vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
    let x_1365 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
    let x_1368 : vec4<f32> = u_xlat8;
    let x_1370 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1368.x, x_1368.y, x_1368.z), vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : f32 = u_xlat49;
    u_xlat49 = max(x_1373, 0.00006103515625f);
    let x_1376 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1376);
    let x_1378 : f32 = u_xlat50;
    let x_1380 : vec4<f32> = u_xlat8;
    let x_1382 : vec3<f32> = (vec3<f32>(x_1378, x_1378, x_1378) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
    let x_1383 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
    let x_1386 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1386);
    let x_1388 : f32 = u_xlat49;
    let x_1389 : i32 = u_xlati48;
    let x_1391 : f32 = x_1354.x_AdditionalLightsAttenuation[x_1389].x;
    u_xlat49 = (x_1388 * x_1391);
    let x_1393 : f32 = u_xlat49;
    let x_1395 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1393) * x_1395) + 1.0f);
    let x_1398 : f32 = u_xlat49;
    u_xlat49 = max(x_1398, 0.0f);
    let x_1400 : f32 = u_xlat49;
    let x_1401 : f32 = u_xlat49;
    u_xlat49 = (x_1400 * x_1401);
    let x_1403 : f32 = u_xlat49;
    let x_1404 : f32 = u_xlat51;
    u_xlat49 = (x_1403 * x_1404);
    let x_1406 : i32 = u_xlati48;
    let x_1408 : vec4<f32> = x_1354.x_AdditionalLightsSpotDir[x_1406];
    let x_1410 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1408.x, x_1408.y, x_1408.z), vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
    let x_1413 : f32 = u_xlat51;
    let x_1414 : i32 = u_xlati48;
    let x_1416 : f32 = x_1354.x_AdditionalLightsAttenuation[x_1414].z;
    let x_1418 : i32 = u_xlati48;
    let x_1420 : f32 = x_1354.x_AdditionalLightsAttenuation[x_1418].w;
    u_xlat51 = ((x_1413 * x_1416) + x_1420);
    let x_1422 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1422, 0.0f, 1.0f);
    let x_1424 : f32 = u_xlat51;
    let x_1425 : f32 = u_xlat51;
    u_xlat51 = (x_1424 * x_1425);
    let x_1427 : f32 = u_xlat49;
    let x_1428 : f32 = u_xlat51;
    u_xlat49 = (x_1427 * x_1428);
    let x_1431 : i32 = u_xlati48;
    let x_1433 : f32 = x_587.x_AdditionalShadowParams[x_1431].w;
    u_xlati51 = i32(x_1433);
    let x_1438 : i32 = u_xlati51;
    u_xlatb10.x = (x_1438 >= 0i);
    let x_1442 : bool = u_xlatb10.x;
    if (x_1442) {
      let x_1446 : i32 = u_xlati48;
      let x_1448 : f32 = x_587.x_AdditionalShadowParams[x_1446].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1448, x_1448, x_1448, x_1448))));
      let x_1454 : bool = u_xlatb10.x;
      if (x_1454) {
        let x_1457 : vec4<f32> = u_xlat9;
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1463 : vec4<bool> = (abs(vec4<f32>(x_1457.z, x_1457.z, x_1457.y, x_1457.z)) >= abs(vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.x)));
        u_xlatb10 = vec3<bool>(x_1463.x, x_1463.y, x_1463.z);
        let x_1466 : bool = u_xlatb10.y;
        let x_1468 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1466 & x_1468);
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1475 : vec4<bool> = (-(vec4<f32>(x_1472.z, x_1472.y, x_1472.x, x_1472.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1475.x, x_1475.y, x_1475.z);
        let x_1479 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1479);
        let x_1484 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1484);
        let x_1488 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1488);
        let x_1493 : bool = u_xlatb10.z;
        if (x_1493) {
          let x_1498 : f32 = u_xlat24.z;
          x_1494 = x_1498;
        } else {
          let x_1501 : f32 = u_xlat11.x;
          x_1494 = x_1501;
        }
        let x_1502 : f32 = x_1494;
        u_xlat38 = x_1502;
        let x_1504 : bool = u_xlatb10.x;
        if (x_1504) {
          let x_1509 : f32 = u_xlat24.x;
          x_1505 = x_1509;
        } else {
          let x_1511 : f32 = u_xlat38;
          x_1505 = x_1511;
        }
        let x_1512 : f32 = x_1505;
        u_xlat10.x = x_1512;
        let x_1514 : i32 = u_xlati48;
        let x_1516 : f32 = x_587.x_AdditionalShadowParams[x_1514].w;
        u_xlat24.x = trunc(x_1516);
        let x_1520 : f32 = u_xlat10.x;
        let x_1522 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1520 + x_1522);
        let x_1526 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1526);
      }
      let x_1528 : i32 = u_xlati51;
      u_xlati51 = (x_1528 << bitcast<u32>(2i));
      let x_1530 : vec3<f32> = vs_TEXCOORD7;
      let x_1532 : i32 = u_xlati51;
      let x_1535 : i32 = u_xlati51;
      let x_1539 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_1532 + 1i) / 4i)][((x_1535 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1530.y, x_1530.y, x_1530.y, x_1530.y) * x_1539);
      let x_1541 : i32 = u_xlati51;
      let x_1543 : i32 = u_xlati51;
      let x_1546 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[(x_1541 / 4i)][(x_1543 % 4i)];
      let x_1547 : vec3<f32> = vs_TEXCOORD7;
      let x_1550 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1546 * vec4<f32>(x_1547.x, x_1547.x, x_1547.x, x_1547.x)) + x_1550);
      let x_1552 : i32 = u_xlati51;
      let x_1555 : i32 = u_xlati51;
      let x_1559 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_1552 + 2i) / 4i)][((x_1555 + 2i) % 4i)];
      let x_1560 : vec3<f32> = vs_TEXCOORD7;
      let x_1563 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1559 * vec4<f32>(x_1560.z, x_1560.z, x_1560.z, x_1560.z)) + x_1563);
      let x_1565 : vec4<f32> = u_xlat10;
      let x_1566 : i32 = u_xlati51;
      let x_1569 : i32 = u_xlati51;
      let x_1573 : vec4<f32> = x_587.x_AdditionalLightsWorldToShadow[((x_1566 + 3i) / 4i)][((x_1569 + 3i) % 4i)];
      u_xlat10 = (x_1565 + x_1573);
      let x_1575 : vec4<f32> = u_xlat10;
      let x_1577 : vec4<f32> = u_xlat10;
      let x_1579 : vec3<f32> = (vec3<f32>(x_1575.x, x_1575.y, x_1575.z) / vec3<f32>(x_1577.w, x_1577.w, x_1577.w));
      let x_1580 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1580.w);
      let x_1583 : vec4<f32> = u_xlat10;
      let x_1584 : vec2<f32> = vec2<f32>(x_1583.x, x_1583.y);
      let x_1586 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
      let x_1594 : vec3<f32> = txVec1;
      let x_1596 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
      u_xlat51 = x_1596;
      let x_1597 : i32 = u_xlati48;
      let x_1599 : f32 = x_587.x_AdditionalShadowParams[x_1597].x;
      u_xlat10.x = (1.0f + -(x_1599));
      let x_1603 : f32 = u_xlat51;
      let x_1604 : i32 = u_xlati48;
      let x_1606 : f32 = x_587.x_AdditionalShadowParams[x_1604].x;
      let x_1609 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1603 * x_1606) + x_1609);
      let x_1612 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1612);
      let x_1617 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1617 >= 1.0f);
      let x_1619 : bool = u_xlatb24;
      let x_1621 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1619 | x_1621);
      let x_1625 : bool = u_xlatb10.x;
      let x_1626 : f32 = u_xlat51;
      u_xlat51 = select(x_1626, 1.0f, x_1625);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1629 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1629) + 1.0f);
    let x_1633 : f32 = u_xlat17;
    let x_1635 : f32 = u_xlat10.x;
    let x_1637 : f32 = u_xlat51;
    u_xlat51 = ((x_1633 * x_1635) + x_1637);
    let x_1639 : f32 = u_xlat49;
    let x_1640 : f32 = u_xlat51;
    u_xlat49 = (x_1639 * x_1640);
    let x_1642 : vec3<f32> = u_xlat2;
    let x_1643 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(x_1642, vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
    let x_1646 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1646, 0.0f, 1.0f);
    let x_1648 : f32 = u_xlat49;
    let x_1649 : f32 = u_xlat51;
    u_xlat49 = (x_1648 * x_1649);
    let x_1651 : f32 = u_xlat49;
    let x_1653 : i32 = u_xlati48;
    let x_1655 : vec4<f32> = x_1354.x_AdditionalLightsColor[x_1653];
    let x_1657 : vec3<f32> = (vec3<f32>(x_1651, x_1651, x_1651) * vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
    let x_1660 : vec4<f32> = u_xlat8;
    let x_1662 : f32 = u_xlat50;
    let x_1665 : vec4<f32> = u_xlat1;
    let x_1667 : vec3<f32> = ((vec3<f32>(x_1660.x, x_1660.y, x_1660.z) * vec3<f32>(x_1662, x_1662, x_1662)) + vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
    let x_1668 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
    let x_1670 : vec4<f32> = u_xlat8;
    let x_1672 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1670.x, x_1670.y, x_1670.z), vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : f32 = u_xlat48;
    u_xlat48 = max(x_1675, 1.17549435e-38f);
    let x_1677 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1677);
    let x_1679 : f32 = u_xlat48;
    let x_1681 : vec4<f32> = u_xlat8;
    let x_1683 : vec3<f32> = (vec3<f32>(x_1679, x_1679, x_1679) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
    let x_1684 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
    let x_1686 : vec3<f32> = u_xlat2;
    let x_1687 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(x_1686, vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
    let x_1690 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1690, 0.0f, 1.0f);
    let x_1692 : vec4<f32> = u_xlat9;
    let x_1694 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1692.x, x_1692.y, x_1692.z), vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
    let x_1697 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1697, 0.0f, 1.0f);
    let x_1699 : f32 = u_xlat48;
    let x_1700 : f32 = u_xlat48;
    u_xlat48 = (x_1699 * x_1700);
    let x_1702 : f32 = u_xlat48;
    let x_1704 : f32 = u_xlat0.x;
    u_xlat48 = ((x_1702 * x_1704) + 1.00001001358032226562f);
    let x_1707 : f32 = u_xlat49;
    let x_1708 : f32 = u_xlat49;
    u_xlat49 = (x_1707 * x_1708);
    let x_1710 : f32 = u_xlat48;
    let x_1711 : f32 = u_xlat48;
    u_xlat48 = (x_1710 * x_1711);
    let x_1713 : f32 = u_xlat49;
    u_xlat49 = max(x_1713, 0.10000000149011611938f);
    let x_1715 : f32 = u_xlat48;
    let x_1716 : f32 = u_xlat49;
    u_xlat48 = (x_1715 * x_1716);
    let x_1718 : f32 = u_xlat46;
    let x_1719 : f32 = u_xlat48;
    u_xlat48 = (x_1718 * x_1719);
    let x_1721 : f32 = u_xlat44;
    let x_1722 : f32 = u_xlat48;
    u_xlat48 = (x_1721 / x_1722);
    let x_1724 : vec4<f32> = u_xlat5;
    let x_1726 : f32 = u_xlat48;
    let x_1729 : vec4<f32> = u_xlat6;
    let x_1731 : vec3<f32> = ((vec3<f32>(x_1724.x, x_1724.y, x_1724.z) * vec3<f32>(x_1726, x_1726, x_1726)) + vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
    let x_1732 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
    let x_1734 : vec4<f32> = u_xlat8;
    let x_1736 : vec4<f32> = u_xlat10;
    let x_1739 : vec4<f32> = u_xlat7;
    let x_1741 : vec3<f32> = ((vec3<f32>(x_1734.x, x_1734.y, x_1734.z) * vec3<f32>(x_1736.x, x_1736.y, x_1736.z)) + vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
    let x_1742 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);

    continuing {
      let x_1744 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1744 + bitcast<u32>(1i));
    }
  }
  let x_1746 : vec4<f32> = u_xlat4;
  let x_1748 : f32 = u_xlat14;
  let x_1751 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1746.x, x_1746.y, x_1746.z) * vec3<f32>(x_1748, x_1748, x_1748)) + vec3<f32>(x_1751.x, x_1751.z, x_1751.w));
  let x_1754 : vec4<f32> = u_xlat7;
  let x_1756 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1754.x, x_1754.y, x_1754.z) + x_1756);
  let x_1758 : f32 = u_xlat42;
  let x_1760 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1758, x_1758, x_1758) * x_1760);
  let x_1762 : f32 = u_xlat43;
  let x_1763 : f32 = u_xlat43;
  u_xlat42 = (x_1762 * -(x_1763));
  let x_1766 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1766);
  let x_1770 : vec3<f32> = u_xlat0;
  let x_1771 : f32 = u_xlat42;
  let x_1773 : vec3<f32> = (x_1770 * vec3<f32>(x_1771, x_1771, x_1771));
  let x_1774 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
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


