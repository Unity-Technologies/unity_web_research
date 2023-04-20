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

@group(1) @binding(0) var<uniform> x_110 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_837 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_995 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1408 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1547 : f32;
  var x_1557 : f32;
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
  let x_116 : f32 = x_110.x_GlobalMipBias.x;
  let x_117 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_116);
  u_xlat4 = x_117;
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_120, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_131 : vec4<f32> = vs_TEXCOORD1;
  let x_134 : f32 = x_110.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_131.x, x_131.y), x_134);
  u_xlat5 = x_135;
  let x_141 : vec4<f32> = vs_TEXCOORD1;
  let x_144 : f32 = x_110.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_141.z, x_141.w), x_144);
  u_xlat6 = x_145;
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_155 : f32 = x_110.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_152.x, x_152.y), x_155);
  u_xlat7 = x_156;
  let x_162 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : f32 = x_110.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_162.z, x_162.w), x_165);
  u_xlat8 = x_166;
  let x_170 : f32 = u_xlat5.w;
  u_xlat9.x = x_170;
  let x_173 : f32 = u_xlat6.w;
  u_xlat9.y = x_173;
  let x_177 : f32 = u_xlat7.w;
  u_xlat9.z = x_177;
  let x_181 : f32 = u_xlat8.w;
  u_xlat9.w = x_181;
  let x_184 : vec4<f32> = u_xlat9;
  let x_187 : f32 = x_13.x_Smoothness0;
  let x_190 : f32 = x_13.x_Smoothness1;
  let x_193 : f32 = x_13.x_Smoothness2;
  let x_196 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_184 * vec4<f32>(x_187, x_190, x_193, x_196));
  let x_205 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_205);
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_208) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat9;
  let x_212 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_211 + -(x_212));
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_215 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_219 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_224 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_231 + -(x_232));
  let x_237 : f32 = u_xlat12.x;
  let x_240 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_237 * x_240);
  let x_244 : f32 = u_xlat12.y;
  let x_247 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_244 * x_247);
  let x_251 : f32 = u_xlat12.z;
  let x_254 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.w;
  let x_261 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_258 * x_261);
  let x_264 : vec4<f32> = u_xlat11;
  let x_265 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_264 + x_265);
  let x_267 : bool = u_xlatb43;
  let x_268 : vec4<f32> = u_xlat11;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_269, x_268, vec4<bool>(x_267, x_267, x_267, x_267));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_274, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_278);
  let x_280 : bool = u_xlatb44;
  if (((select(0i, 1i, x_280) * -1i) != 0i)) {
    discard;
  }
  let x_289 : f32 = u_xlat43;
  u_xlat43 = (x_289 + 0.00006103515625f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat43;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_370 : vec4<f32> = vs_TEXCOORD1;
  let x_373 : f32 = x_110.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_370.x, x_370.y), x_373);
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.w);
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = u_xlat6.x;
  let x_381 : f32 = u_xlat6.z;
  u_xlat6.x = (x_379 * x_381);
  let x_384 : vec4<f32> = u_xlat6;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_397 : f32 = u_xlat43;
  u_xlat43 = min(x_397, 1.0f);
  let x_399 : f32 = u_xlat43;
  u_xlat43 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_402);
  let x_404 : f32 = u_xlat43;
  u_xlat7.z = max(x_404, 0.0000000000000001f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_411 : f32 = x_13.x_NormalScale0;
  let x_413 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_411, x_411));
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_420 : vec4<f32> = vs_TEXCOORD1;
  let x_423 : f32 = x_110.x_GlobalMipBias.x;
  let x_424 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_420.z, x_420.w), x_423);
  let x_425 : vec3<f32> = vec3<f32>(x_424.x, x_424.y, x_424.w);
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat6.x;
  let x_431 : f32 = u_xlat6.z;
  u_xlat6.x = (x_429 * x_431);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
  let x_445 : f32 = u_xlat43;
  u_xlat43 = min(x_445, 1.0f);
  let x_447 : f32 = u_xlat43;
  u_xlat43 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_450);
  let x_452 : f32 = u_xlat43;
  u_xlat8.z = max(x_452, 0.0000000000000001f);
  let x_455 : vec4<f32> = u_xlat6;
  let x_458 : f32 = x_13.x_NormalScale1;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_461 : vec2<f32> = vec2<f32>(x_458, x_460);
  let x_465 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(x_461.x, x_461.y));
  let x_466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat8;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.y, x_468.y, x_468.y) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * vec3<f32>(x_477.x, x_477.y, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_489 : vec4<f32> = vs_TEXCOORD2;
  let x_492 : f32 = x_110.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_489.x, x_489.y), x_492);
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.w);
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat7.z;
  u_xlat7.x = (x_498 * x_500);
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec2<f32> = ((vec2<f32>(x_503.x, x_503.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  let x_511 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_509.x, x_509.y), vec2<f32>(x_511.x, x_511.y));
  let x_514 : f32 = u_xlat43;
  u_xlat43 = min(x_514, 1.0f);
  let x_516 : f32 = u_xlat43;
  u_xlat43 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_519);
  let x_521 : f32 = u_xlat43;
  u_xlat8.z = max(x_521, 0.0000000000000001f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_528 : f32 = x_13.x_NormalScale2;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_531 : vec2<f32> = vec2<f32>(x_528, x_530);
  let x_535 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(x_531.x, x_531.y));
  let x_536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat8;
  let x_543 : vec4<f32> = u_xlat6;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.z, x_538.z, x_538.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_552 : vec4<f32> = vs_TEXCOORD2;
  let x_555 : f32 = x_110.x_GlobalMipBias.x;
  let x_556 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_552.z, x_552.w), x_555);
  let x_557 : vec3<f32> = vec3<f32>(x_556.x, x_556.y, x_556.w);
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat7.x;
  let x_563 : f32 = u_xlat7.z;
  u_xlat7.x = (x_561 * x_563);
  let x_566 : vec4<f32> = u_xlat7;
  let x_569 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  let x_574 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_572.x, x_572.y), vec2<f32>(x_574.x, x_574.y));
  let x_577 : f32 = u_xlat43;
  u_xlat43 = min(x_577, 1.0f);
  let x_579 : f32 = u_xlat43;
  u_xlat43 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_582);
  let x_584 : f32 = u_xlat43;
  u_xlat8.z = max(x_584, 0.0000000000000001f);
  let x_587 : vec4<f32> = u_xlat7;
  let x_591 : f32 = x_13.x_NormalScale3;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_594 : vec2<f32> = vec2<f32>(x_591, x_593);
  let x_598 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_594.x, x_594.y));
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = u_xlat8;
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.w, x_601.w, x_601.w) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat6.z;
  u_xlat6.w = (x_612 + 0.00000999999974737875f);
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_616.x, x_616.y, x_616.w), vec3<f32>(x_618.x, x_618.y, x_618.w));
  let x_621 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat43;
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.w));
  let x_628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_652;
  let x_654 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_654 + x_655);
  let x_658 : f32 = u_xlat0.z;
  u_xlat8.x = x_658;
  let x_661 : f32 = u_xlat1.z;
  u_xlat8.y = x_661;
  let x_664 : f32 = u_xlat2.z;
  u_xlat8.z = x_664;
  let x_667 : f32 = u_xlat3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat9;
  let x_672 : f32 = x_13.x_Smoothness0;
  let x_674 : f32 = x_13.x_Smoothness1;
  let x_676 : f32 = x_13.x_Smoothness2;
  let x_678 : f32 = x_13.x_Smoothness3;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_669) * vec4<f32>(x_672, x_674, x_676, x_678)) + x_681);
  let x_685 : f32 = x_13.x_LayerHasMask0;
  let x_688 : f32 = x_13.x_LayerHasMask1;
  let x_691 : f32 = x_13.x_LayerHasMask2;
  let x_694 : f32 = x_13.x_LayerHasMask3;
  let x_696 : vec4<f32> = u_xlat8;
  let x_698 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_685, x_688, x_691, x_694) * x_696) + x_698);
  let x_701 : vec4<f32> = u_xlat4;
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_701, x_702);
  let x_705 : f32 = u_xlat0.x;
  u_xlat8.x = x_705;
  let x_708 : f32 = u_xlat1.x;
  u_xlat8.y = x_708;
  let x_711 : f32 = u_xlat2.x;
  u_xlat8.z = x_711;
  let x_714 : f32 = u_xlat3.x;
  u_xlat8.w = x_714;
  let x_716 : vec4<f32> = u_xlat8;
  let x_719 : f32 = x_13.x_Metallic0;
  let x_722 : f32 = x_13.x_Metallic1;
  let x_725 : f32 = x_13.x_Metallic2;
  let x_728 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_716 + -(vec4<f32>(x_719, x_722, x_725, x_728)));
  let x_733 : f32 = x_13.x_LayerHasMask0;
  let x_735 : f32 = x_13.x_LayerHasMask1;
  let x_737 : f32 = x_13.x_LayerHasMask2;
  let x_739 : f32 = x_13.x_LayerHasMask3;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_13.x_Metallic0;
  let x_746 : f32 = x_13.x_Metallic1;
  let x_748 : f32 = x_13.x_Metallic2;
  let x_750 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_733, x_735, x_737, x_739) * x_741) + vec4<f32>(x_744, x_746, x_748, x_750));
  let x_753 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_753, x_754);
  let x_758 : f32 = u_xlat0.y;
  u_xlat3.x = x_758;
  let x_761 : f32 = u_xlat1.y;
  u_xlat3.y = x_761;
  let x_764 : f32 = u_xlat2.y;
  u_xlat3.z = x_764;
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_766) + x_768);
  let x_771 : f32 = x_13.x_LayerHasMask0;
  let x_773 : f32 = x_13.x_LayerHasMask1;
  let x_775 : f32 = x_13.x_LayerHasMask2;
  let x_777 : f32 = x_13.x_LayerHasMask3;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_771, x_773, x_775, x_777) * x_779) + x_781);
  let x_784 : vec4<f32> = u_xlat4;
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_784, x_785);
  let x_787 : vec4<f32> = u_xlat6;
  let x_790 : vec4<f32> = vs_TEXCOORD5;
  let x_792 : vec3<f32> = (vec3<f32>(x_787.y, x_787.y, x_787.y) * vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD4;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * -(vec3<f32>(x_798.x, x_798.y, x_798.z))) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD3;
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = ((vec3<f32>(x_807.z, x_807.z, x_807.z) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_823);
  let x_825 : f32 = u_xlat43;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = (vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  u_xlat1.w = 1.0f;
  let x_839 : vec4<f32> = x_837.unity_SHAr;
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_839, x_840);
  let x_844 : vec4<f32> = x_837.unity_SHAg;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_844, x_845);
  let x_849 : vec4<f32> = x_837.unity_SHAb;
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_849, x_850);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_853.y, x_853.z, x_853.z, x_853.x) * vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.z));
  let x_859 : vec4<f32> = x_837.unity_SHBr;
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_859, x_860);
  let x_864 : vec4<f32> = x_837.unity_SHBg;
  let x_865 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_864, x_865);
  let x_869 : vec4<f32> = x_837.unity_SHBb;
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_869, x_870);
  let x_874 : f32 = u_xlat1.y;
  let x_876 : f32 = u_xlat1.y;
  u_xlat43 = (x_874 * x_876);
  let x_879 : f32 = u_xlat1.x;
  let x_881 : f32 = u_xlat1.x;
  let x_883 : f32 = u_xlat43;
  u_xlat43 = ((x_879 * x_881) + -(x_883));
  let x_888 : vec4<f32> = x_837.unity_SHC;
  let x_890 : f32 = u_xlat43;
  let x_893 : vec4<f32> = u_xlat4;
  let x_895 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat2;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_898 + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_902, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_906 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_906) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_912 : f32 = u_xlat28;
  let x_913 : f32 = u_xlat43;
  u_xlat44 = (x_912 + -(x_913));
  let x_916 : f32 = u_xlat43;
  let x_918 : vec4<f32> = u_xlat5;
  let x_920 : vec3<f32> = (vec3<f32>(x_916, x_916, x_916) * vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat5;
  let x_927 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_928 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec3<f32> = u_xlat0;
  let x_932 : vec4<f32> = u_xlat4;
  let x_937 : vec3<f32> = ((vec3<f32>(x_930.x, x_930.x, x_930.x) * vec3<f32>(x_932.x, x_932.y, x_932.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_938 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : f32 = u_xlat28;
  u_xlat0.x = (-(x_940) + 1.0f);
  let x_945 : f32 = u_xlat0.x;
  let x_947 : f32 = u_xlat0.x;
  u_xlat28 = (x_945 * x_947);
  let x_949 : f32 = u_xlat28;
  u_xlat28 = max(x_949, 0.0078125f);
  let x_952 : f32 = u_xlat28;
  let x_953 : f32 = u_xlat28;
  u_xlat43 = (x_952 * x_953);
  let x_955 : f32 = u_xlat44;
  u_xlat44 = (x_955 + 1.0f);
  let x_957 : f32 = u_xlat44;
  u_xlat44 = clamp(x_957, 0.0f, 1.0f);
  let x_960 : f32 = u_xlat28;
  u_xlat45 = ((x_960 * 4.0f) + 2.0f);
  let x_963 : f32 = u_xlat14;
  u_xlat14 = min(x_963, 1.0f);
  let x_968 : vec4<f32> = vs_TEXCOORD8;
  let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
  let x_972 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_969.x, x_969.y, x_972);
  let x_985 : vec3<f32> = txVec0;
  let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_985.xy, x_985.z);
  u_xlat46 = x_987;
  let x_997 : f32 = x_995.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_997) + 1.0f);
  let x_1001 : f32 = u_xlat46;
  let x_1003 : f32 = x_995.x_MainLightShadowParams.x;
  let x_1006 : f32 = u_xlat5.x;
  u_xlat46 = ((x_1001 * x_1003) + x_1006);
  let x_1010 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1010);
  let x_1014 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_1014 >= 1.0f);
  let x_1016 : bool = u_xlatb19;
  let x_1017 : bool = u_xlatb5;
  u_xlatb5 = (x_1016 | x_1017);
  let x_1019 : bool = u_xlatb5;
  let x_1020 : f32 = u_xlat46;
  u_xlat46 = select(x_1020, 1.0f, x_1019);
  let x_1024 : vec3<f32> = vs_TEXCOORD7;
  let x_1027 : vec3<f32> = x_110.x_WorldSpaceCameraPos;
  let x_1029 : vec3<f32> = (x_1024 + -(x_1027));
  let x_1030 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat5;
  let x_1034 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1040 : f32 = u_xlat5.x;
  let x_1042 : f32 = x_995.x_MainLightShadowParams.z;
  let x_1045 : f32 = x_995.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1040 * x_1042) + x_1045);
  let x_1049 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1049, 0.0f, 1.0f);
  let x_1053 : f32 = u_xlat46;
  u_xlat33 = (-(x_1053) + 1.0f);
  let x_1057 : f32 = u_xlat19.x;
  let x_1058 : f32 = u_xlat33;
  let x_1060 : f32 = u_xlat46;
  u_xlat46 = ((x_1057 * x_1058) + x_1060);
  let x_1063 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1063;
  let x_1066 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1066;
  let x_1069 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1069;
  let x_1071 : vec4<f32> = u_xlat6;
  let x_1074 : vec4<f32> = u_xlat1;
  u_xlat19.x = dot(-(vec3<f32>(x_1071.x, x_1071.y, x_1071.z)), vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1079 : f32 = u_xlat19.x;
  let x_1081 : f32 = u_xlat19.x;
  u_xlat19.x = (x_1079 + x_1081);
  let x_1084 : vec4<f32> = u_xlat1;
  let x_1086 : vec3<f32> = u_xlat19;
  let x_1090 : vec4<f32> = u_xlat6;
  u_xlat19 = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * -(vec3<f32>(x_1086.x, x_1086.x, x_1086.x))) + -(vec3<f32>(x_1090.x, x_1090.y, x_1090.z)));
  let x_1095 : vec4<f32> = u_xlat1;
  let x_1097 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1095.x, x_1095.y, x_1095.z), vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1100, 0.0f, 1.0f);
  let x_1102 : f32 = u_xlat48;
  u_xlat48 = (-(x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat48;
  let x_1106 : f32 = u_xlat48;
  u_xlat48 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat48;
  let x_1109 : f32 = u_xlat48;
  u_xlat48 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_1112) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1120 : f32 = u_xlat0.x;
  let x_1122 : f32 = u_xlat7.x;
  u_xlat0.x = (x_1120 * x_1122);
  let x_1126 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1126 * 6.0f);
  let x_1138 : vec3<f32> = u_xlat19;
  let x_1140 : f32 = u_xlat0.x;
  let x_1141 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1138, x_1140);
  u_xlat7 = x_1141;
  let x_1143 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1143 + -1.0f);
  let x_1147 : f32 = x_837.unity_SpecCube0_HDR.w;
  let x_1149 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1147 * x_1149) + 1.0f);
  let x_1154 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1154, 0.0f);
  let x_1158 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1158);
  let x_1162 : f32 = u_xlat0.x;
  let x_1164 : f32 = x_837.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1162 * x_1164);
  let x_1168 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1168);
  let x_1172 : f32 = u_xlat0.x;
  let x_1174 : f32 = x_837.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1172 * x_1174);
  let x_1177 : vec4<f32> = u_xlat7;
  let x_1179 : vec3<f32> = u_xlat0;
  u_xlat19 = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) * vec3<f32>(x_1179.x, x_1179.x, x_1179.x));
  let x_1182 : f32 = u_xlat28;
  let x_1184 : f32 = u_xlat28;
  let x_1188 : vec2<f32> = ((vec2<f32>(x_1182, x_1182) * vec2<f32>(x_1184, x_1184)) + vec2<f32>(-1.0f, 1.0f));
  let x_1189 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1188.x, x_1189.y, x_1188.y);
  let x_1192 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1192);
  let x_1194 : vec4<f32> = u_xlat4;
  let x_1197 : f32 = u_xlat44;
  let x_1199 : vec3<f32> = (-(vec3<f32>(x_1194.x, x_1194.y, x_1194.z)) + vec3<f32>(x_1197, x_1197, x_1197));
  let x_1200 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : f32 = u_xlat48;
  let x_1204 : vec4<f32> = u_xlat7;
  let x_1207 : vec4<f32> = u_xlat4;
  let x_1209 : vec3<f32> = ((vec3<f32>(x_1202, x_1202, x_1202) * vec3<f32>(x_1204.x, x_1204.y, x_1204.z)) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : f32 = u_xlat28;
  let x_1214 : vec4<f32> = u_xlat7;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec3<f32> = u_xlat19;
  let x_1220 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1219 * vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec3<f32> = u_xlat2;
  let x_1224 : vec4<f32> = u_xlat3;
  let x_1227 : vec3<f32> = u_xlat19;
  u_xlat2 = ((x_1223 * vec3<f32>(x_1224.x, x_1224.y, x_1224.z)) + x_1227);
  let x_1229 : f32 = u_xlat46;
  let x_1231 : f32 = x_837.unity_LightData.z;
  u_xlat28 = (x_1229 * x_1231);
  let x_1233 : vec4<f32> = u_xlat1;
  let x_1236 : vec4<f32> = x_110.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
  let x_1239 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1239, 0.0f, 1.0f);
  let x_1241 : f32 = u_xlat28;
  let x_1242 : f32 = u_xlat44;
  u_xlat28 = (x_1241 * x_1242);
  let x_1244 : f32 = u_xlat28;
  let x_1247 : vec4<f32> = x_110.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_1244, x_1244, x_1244) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat6;
  let x_1253 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1255 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.y, x_1250.z) + vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
  let x_1258 : vec4<f32> = u_xlat7;
  let x_1260 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1258.x, x_1258.y, x_1258.z), vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : f32 = u_xlat28;
  u_xlat28 = max(x_1263, 1.17549435e-38f);
  let x_1266 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1266);
  let x_1268 : f32 = u_xlat28;
  let x_1270 : vec4<f32> = u_xlat7;
  let x_1272 : vec3<f32> = (vec3<f32>(x_1268, x_1268, x_1268) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1273 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
  let x_1275 : vec4<f32> = u_xlat1;
  let x_1277 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1275.x, x_1275.y, x_1275.z), vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1280, 0.0f, 1.0f);
  let x_1283 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1285 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1283.x, x_1283.y, x_1283.z), vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1288, 0.0f, 1.0f);
  let x_1290 : f32 = u_xlat28;
  let x_1291 : f32 = u_xlat28;
  u_xlat28 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat28;
  let x_1295 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1293 * x_1295) + 1.00001001358032226562f);
  let x_1299 : f32 = u_xlat44;
  let x_1300 : f32 = u_xlat44;
  u_xlat44 = (x_1299 * x_1300);
  let x_1302 : f32 = u_xlat28;
  let x_1303 : f32 = u_xlat28;
  u_xlat28 = (x_1302 * x_1303);
  let x_1305 : f32 = u_xlat44;
  u_xlat44 = max(x_1305, 0.10000000149011611938f);
  let x_1308 : f32 = u_xlat28;
  let x_1309 : f32 = u_xlat44;
  u_xlat28 = (x_1308 * x_1309);
  let x_1311 : f32 = u_xlat45;
  let x_1312 : f32 = u_xlat28;
  u_xlat28 = (x_1311 * x_1312);
  let x_1314 : f32 = u_xlat43;
  let x_1315 : f32 = u_xlat28;
  u_xlat28 = (x_1314 / x_1315);
  let x_1317 : vec4<f32> = u_xlat4;
  let x_1319 : f32 = u_xlat28;
  let x_1322 : vec4<f32> = u_xlat3;
  let x_1324 : vec3<f32> = ((vec3<f32>(x_1317.x, x_1317.y, x_1317.z) * vec3<f32>(x_1319, x_1319, x_1319)) + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1327 : vec3<f32> = u_xlat19;
  let x_1328 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1327 * vec3<f32>(x_1328.x, x_1328.y, x_1328.z));
  let x_1332 : f32 = x_110.x_AdditionalLightsCount.x;
  let x_1334 : f32 = x_837.unity_LightData.y;
  u_xlat28 = min(x_1332, x_1334);
  let x_1338 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1338));
  let x_1342 : f32 = u_xlat5.x;
  let x_1344 : f32 = x_995.x_AdditionalShadowFadeParams.x;
  let x_1347 : f32 = x_995.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1342 * x_1344) + x_1347);
  let x_1349 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1349, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1361 : u32 = u_xlatu_loop_1;
    let x_1362 : u32 = u_xlatu28;
    if ((x_1361 < x_1362)) {
    } else {
      break;
    }
    let x_1365 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1365 >> 2u);
    let x_1369 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1369 & 3u));
    let x_1372 : u32 = u_xlatu5;
    let x_1375 : vec4<f32> = x_837.unity_LightIndices[bitcast<i32>(x_1372)];
    let x_1385 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1390 : vec4<u32> = indexable[x_1385];
    u_xlat5.x = dot(x_1375, bitcast<vec4<f32>>(x_1390));
    let x_1396 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1396);
    let x_1398 : vec3<f32> = vs_TEXCOORD7;
    let x_1409 : i32 = u_xlati5;
    let x_1411 : vec4<f32> = x_1408.x_AdditionalLightsPosition[x_1409];
    let x_1414 : i32 = u_xlati5;
    let x_1416 : vec4<f32> = x_1408.x_AdditionalLightsPosition[x_1414];
    let x_1418 : vec3<f32> = ((-(x_1398) * vec3<f32>(x_1411.w, x_1411.w, x_1411.w)) + vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
    let x_1419 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
    let x_1421 : vec4<f32> = u_xlat8;
    let x_1423 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1421.x, x_1421.y, x_1421.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
    let x_1426 : f32 = u_xlat48;
    u_xlat48 = max(x_1426, 0.00006103515625f);
    let x_1429 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1429);
    let x_1431 : f32 = u_xlat49;
    let x_1433 : vec4<f32> = u_xlat8;
    let x_1435 : vec3<f32> = (vec3<f32>(x_1431, x_1431, x_1431) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
    let x_1436 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
    let x_1439 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1439);
    let x_1441 : f32 = u_xlat48;
    let x_1442 : i32 = u_xlati5;
    let x_1444 : f32 = x_1408.x_AdditionalLightsAttenuation[x_1442].x;
    u_xlat48 = (x_1441 * x_1444);
    let x_1446 : f32 = u_xlat48;
    let x_1448 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1446) * x_1448) + 1.0f);
    let x_1451 : f32 = u_xlat48;
    u_xlat48 = max(x_1451, 0.0f);
    let x_1453 : f32 = u_xlat48;
    let x_1454 : f32 = u_xlat48;
    u_xlat48 = (x_1453 * x_1454);
    let x_1456 : f32 = u_xlat48;
    let x_1457 : f32 = u_xlat50;
    u_xlat48 = (x_1456 * x_1457);
    let x_1459 : i32 = u_xlati5;
    let x_1461 : vec4<f32> = x_1408.x_AdditionalLightsSpotDir[x_1459];
    let x_1463 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
    let x_1466 : f32 = u_xlat50;
    let x_1467 : i32 = u_xlati5;
    let x_1469 : f32 = x_1408.x_AdditionalLightsAttenuation[x_1467].z;
    let x_1471 : i32 = u_xlati5;
    let x_1473 : f32 = x_1408.x_AdditionalLightsAttenuation[x_1471].w;
    u_xlat50 = ((x_1466 * x_1469) + x_1473);
    let x_1475 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1475, 0.0f, 1.0f);
    let x_1477 : f32 = u_xlat50;
    let x_1478 : f32 = u_xlat50;
    u_xlat50 = (x_1477 * x_1478);
    let x_1480 : f32 = u_xlat48;
    let x_1481 : f32 = u_xlat50;
    u_xlat48 = (x_1480 * x_1481);
    let x_1484 : i32 = u_xlati5;
    let x_1486 : f32 = x_995.x_AdditionalShadowParams[x_1484].w;
    u_xlati50 = i32(x_1486);
    let x_1489 : i32 = u_xlati50;
    u_xlatb51 = (x_1489 >= 0i);
    let x_1491 : bool = u_xlatb51;
    if (x_1491) {
      let x_1495 : i32 = u_xlati5;
      let x_1497 : f32 = x_995.x_AdditionalShadowParams[x_1495].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1497, x_1497, x_1497, x_1497))));
      let x_1501 : bool = u_xlatb51;
      if (x_1501) {
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1512 : vec4<bool> = (abs(vec4<f32>(x_1506.z, x_1506.z, x_1506.y, x_1506.z)) >= abs(vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.x)));
        let x_1514 : vec3<bool> = vec3<bool>(x_1512.x, x_1512.y, x_1512.z);
        let x_1515 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
        let x_1518 : bool = u_xlatb10.y;
        let x_1520 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1518 & x_1520);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1525 : vec4<bool> = (-(vec4<f32>(x_1522.z, x_1522.y, x_1522.z, x_1522.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1526 : vec3<bool> = vec3<bool>(x_1525.x, x_1525.y, x_1525.w);
        let x_1527 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1526.x, x_1526.y, x_1527.z, x_1526.z);
        let x_1530 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1530);
        let x_1535 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1535);
        let x_1541 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1541);
        let x_1545 : bool = u_xlatb10.z;
        if (x_1545) {
          let x_1551 : f32 = u_xlat10.y;
          x_1547 = x_1551;
        } else {
          let x_1553 : f32 = u_xlat52;
          x_1547 = x_1553;
        }
        let x_1554 : f32 = x_1547;
        u_xlat24 = x_1554;
        let x_1556 : bool = u_xlatb51;
        if (x_1556) {
          let x_1561 : f32 = u_xlat10.x;
          x_1557 = x_1561;
        } else {
          let x_1563 : f32 = u_xlat24;
          x_1557 = x_1563;
        }
        let x_1564 : f32 = x_1557;
        u_xlat51 = x_1564;
        let x_1565 : i32 = u_xlati5;
        let x_1567 : f32 = x_995.x_AdditionalShadowParams[x_1565].w;
        u_xlat10.x = trunc(x_1567);
        let x_1570 : f32 = u_xlat51;
        let x_1572 : f32 = u_xlat10.x;
        u_xlat51 = (x_1570 + x_1572);
        let x_1574 : f32 = u_xlat51;
        u_xlati50 = i32(x_1574);
      }
      let x_1576 : i32 = u_xlati50;
      u_xlati50 = (x_1576 << bitcast<u32>(2i));
      let x_1578 : vec3<f32> = vs_TEXCOORD7;
      let x_1580 : i32 = u_xlati50;
      let x_1583 : i32 = u_xlati50;
      let x_1587 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[((x_1580 + 1i) / 4i)][((x_1583 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1578.y, x_1578.y, x_1578.y, x_1578.y) * x_1587);
      let x_1589 : i32 = u_xlati50;
      let x_1591 : i32 = u_xlati50;
      let x_1594 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[(x_1589 / 4i)][(x_1591 % 4i)];
      let x_1595 : vec3<f32> = vs_TEXCOORD7;
      let x_1598 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1594 * vec4<f32>(x_1595.x, x_1595.x, x_1595.x, x_1595.x)) + x_1598);
      let x_1600 : i32 = u_xlati50;
      let x_1603 : i32 = u_xlati50;
      let x_1607 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[((x_1600 + 2i) / 4i)][((x_1603 + 2i) % 4i)];
      let x_1608 : vec3<f32> = vs_TEXCOORD7;
      let x_1611 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1607 * vec4<f32>(x_1608.z, x_1608.z, x_1608.z, x_1608.z)) + x_1611);
      let x_1613 : vec4<f32> = u_xlat10;
      let x_1614 : i32 = u_xlati50;
      let x_1617 : i32 = u_xlati50;
      let x_1621 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[((x_1614 + 3i) / 4i)][((x_1617 + 3i) % 4i)];
      u_xlat10 = (x_1613 + x_1621);
      let x_1623 : vec4<f32> = u_xlat10;
      let x_1625 : vec4<f32> = u_xlat10;
      let x_1627 : vec3<f32> = (vec3<f32>(x_1623.x, x_1623.y, x_1623.z) / vec3<f32>(x_1625.w, x_1625.w, x_1625.w));
      let x_1628 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
      let x_1631 : vec4<f32> = u_xlat10;
      let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
      let x_1634 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
      let x_1642 : vec3<f32> = txVec1;
      let x_1644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
      u_xlat50 = x_1644;
      let x_1645 : i32 = u_xlati5;
      let x_1647 : f32 = x_995.x_AdditionalShadowParams[x_1645].x;
      u_xlat51 = (1.0f + -(x_1647));
      let x_1650 : f32 = u_xlat50;
      let x_1651 : i32 = u_xlati5;
      let x_1653 : f32 = x_995.x_AdditionalShadowParams[x_1651].x;
      let x_1655 : f32 = u_xlat51;
      u_xlat50 = ((x_1650 * x_1653) + x_1655);
      let x_1658 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1658);
      let x_1661 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1661 >= 1.0f);
      let x_1664 : bool = u_xlatb51;
      let x_1666 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1664 | x_1666);
      let x_1668 : bool = u_xlatb51;
      let x_1669 : f32 = u_xlat50;
      u_xlat50 = select(x_1669, 1.0f, x_1668);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1672 : f32 = u_xlat50;
    u_xlat51 = (-(x_1672) + 1.0f);
    let x_1675 : f32 = u_xlat44;
    let x_1676 : f32 = u_xlat51;
    let x_1678 : f32 = u_xlat50;
    u_xlat50 = ((x_1675 * x_1676) + x_1678);
    let x_1680 : f32 = u_xlat48;
    let x_1681 : f32 = u_xlat50;
    u_xlat48 = (x_1680 * x_1681);
    let x_1683 : vec4<f32> = u_xlat1;
    let x_1685 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1683.x, x_1683.y, x_1683.z), vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
    let x_1688 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1688, 0.0f, 1.0f);
    let x_1690 : f32 = u_xlat48;
    let x_1691 : f32 = u_xlat50;
    u_xlat48 = (x_1690 * x_1691);
    let x_1693 : f32 = u_xlat48;
    let x_1695 : i32 = u_xlati5;
    let x_1697 : vec4<f32> = x_1408.x_AdditionalLightsColor[x_1695];
    let x_1699 : vec3<f32> = (vec3<f32>(x_1693, x_1693, x_1693) * vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
    let x_1700 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
    let x_1702 : vec4<f32> = u_xlat8;
    let x_1704 : f32 = u_xlat49;
    let x_1707 : vec4<f32> = u_xlat6;
    let x_1709 : vec3<f32> = ((vec3<f32>(x_1702.x, x_1702.y, x_1702.z) * vec3<f32>(x_1704, x_1704, x_1704)) + vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
    let x_1710 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
    let x_1712 : vec4<f32> = u_xlat8;
    let x_1714 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1712.x, x_1712.y, x_1712.z), vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
    let x_1719 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1719, 1.17549435e-38f);
    let x_1723 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1723);
    let x_1726 : vec4<f32> = u_xlat5;
    let x_1728 : vec4<f32> = u_xlat8;
    let x_1730 : vec3<f32> = (vec3<f32>(x_1726.x, x_1726.x, x_1726.x) * vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
    let x_1731 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
    let x_1733 : vec4<f32> = u_xlat1;
    let x_1735 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1733.x, x_1733.y, x_1733.z), vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
    let x_1740 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1740, 0.0f, 1.0f);
    let x_1743 : vec4<f32> = u_xlat9;
    let x_1745 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1743.x, x_1743.y, x_1743.z), vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
    let x_1748 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1748, 0.0f, 1.0f);
    let x_1751 : f32 = u_xlat5.x;
    let x_1753 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1751 * x_1753);
    let x_1757 : f32 = u_xlat5.x;
    let x_1759 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_1757 * x_1759) + 1.00001001358032226562f);
    let x_1763 : f32 = u_xlat48;
    let x_1764 : f32 = u_xlat48;
    u_xlat48 = (x_1763 * x_1764);
    let x_1767 : f32 = u_xlat5.x;
    let x_1769 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1767 * x_1769);
    let x_1772 : f32 = u_xlat48;
    u_xlat48 = max(x_1772, 0.10000000149011611938f);
    let x_1775 : f32 = u_xlat5.x;
    let x_1776 : f32 = u_xlat48;
    u_xlat5.x = (x_1775 * x_1776);
    let x_1779 : f32 = u_xlat45;
    let x_1781 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1779 * x_1781);
    let x_1784 : f32 = u_xlat43;
    let x_1786 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1784 / x_1786);
    let x_1789 : vec4<f32> = u_xlat4;
    let x_1791 : vec4<f32> = u_xlat5;
    let x_1794 : vec4<f32> = u_xlat3;
    let x_1796 : vec3<f32> = ((vec3<f32>(x_1789.x, x_1789.y, x_1789.z) * vec3<f32>(x_1791.x, x_1791.x, x_1791.x)) + vec3<f32>(x_1794.x, x_1794.y, x_1794.z));
    let x_1797 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1796.x, x_1796.y, x_1796.z, x_1797.w);
    let x_1799 : vec4<f32> = u_xlat8;
    let x_1801 : vec4<f32> = u_xlat10;
    let x_1804 : vec4<f32> = u_xlat7;
    let x_1806 : vec3<f32> = ((vec3<f32>(x_1799.x, x_1799.y, x_1799.z) * vec3<f32>(x_1801.x, x_1801.y, x_1801.z)) + vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
    let x_1807 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);

    continuing {
      let x_1809 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1809 + bitcast<u32>(1i));
    }
  }
  let x_1811 : vec3<f32> = u_xlat2;
  let x_1812 : f32 = u_xlat14;
  let x_1815 : vec3<f32> = u_xlat19;
  u_xlat0 = ((x_1811 * vec3<f32>(x_1812, x_1812, x_1812)) + x_1815);
  let x_1817 : vec4<f32> = u_xlat7;
  let x_1819 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1817.x, x_1817.y, x_1817.z) + x_1819);
  let x_1823 : f32 = u_xlat42;
  let x_1825 : vec3<f32> = u_xlat0;
  let x_1826 : vec3<f32> = (vec3<f32>(x_1823, x_1823, x_1823) * x_1825);
  let x_1827 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


