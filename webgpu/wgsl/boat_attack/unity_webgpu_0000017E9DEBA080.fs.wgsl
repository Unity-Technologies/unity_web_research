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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

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

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1025 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1615 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1206 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1747 : f32;
  var x_1757 : f32;
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
  let x_118 : f32 = x_112.x_GlobalMipBias.x;
  let x_119 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_118);
  u_xlat4 = x_119;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = vs_TEXCOORD1;
  let x_136 : f32 = x_112.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_133.x, x_133.y), x_136);
  u_xlat5 = x_137;
  let x_143 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : f32 = x_112.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_143.z, x_143.w), x_146);
  u_xlat6 = x_147;
  let x_154 : vec4<f32> = vs_TEXCOORD2;
  let x_157 : f32 = x_112.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat7 = x_158;
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : f32 = x_112.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_164.z, x_164.w), x_167);
  u_xlat8 = x_168;
  let x_172 : f32 = u_xlat5.w;
  u_xlat9.x = x_172;
  let x_175 : f32 = u_xlat6.w;
  u_xlat9.y = x_175;
  let x_179 : f32 = u_xlat7.w;
  u_xlat9.z = x_179;
  let x_183 : f32 = u_xlat8.w;
  u_xlat9.w = x_183;
  let x_186 : vec4<f32> = u_xlat9;
  let x_189 : f32 = x_13.x_Smoothness0;
  let x_192 : f32 = x_13.x_Smoothness1;
  let x_195 : f32 = x_13.x_Smoothness2;
  let x_198 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_186 * vec4<f32>(x_189, x_192, x_195, x_198));
  let x_207 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_207);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_210) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_213 : vec4<f32> = u_xlat9;
  let x_214 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_213 + -(x_214));
  let x_217 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_217 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_221 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_221, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_226 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_233 + -(x_234));
  let x_239 : f32 = u_xlat12.x;
  let x_242 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat12.y;
  let x_249 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_246 * x_249);
  let x_253 : f32 = u_xlat12.z;
  let x_256 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.w;
  let x_263 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_260 * x_263);
  let x_266 : vec4<f32> = u_xlat11;
  let x_267 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_266 + x_267);
  let x_269 : bool = u_xlatb43;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_280 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_280);
  let x_282 : bool = u_xlatb44;
  if (((select(0i, 1i, x_282) * -1i) != 0i)) {
    discard;
  }
  let x_291 : f32 = u_xlat43;
  u_xlat43 = (x_291 + 0.00006103515625f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat43;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_112.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat43;
  u_xlat43 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_404);
  let x_406 : f32 = u_xlat43;
  u_xlat7.z = max(x_406, 0.0000000000000001f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_13.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_112.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat43;
  u_xlat43 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat43;
  u_xlat43 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_452);
  let x_454 : f32 = u_xlat43;
  u_xlat8.z = max(x_454, 0.0000000000000001f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_462 : f32 = x_13.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_112.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat43;
  u_xlat43 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat43;
  u_xlat43 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_521);
  let x_523 : f32 = u_xlat43;
  u_xlat8.z = max(x_523, 0.0000000000000001f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_532 : f32 = x_13.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_112.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat43;
  u_xlat43 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat43;
  u_xlat43 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_584);
  let x_586 : f32 = u_xlat43;
  u_xlat8.z = max(x_586, 0.0000000000000001f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_595 : f32 = x_13.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00000999999974737875f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat43;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_13.x_Smoothness0;
  let x_676 : f32 = x_13.x_Smoothness1;
  let x_678 : f32 = x_13.x_Smoothness2;
  let x_680 : f32 = x_13.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_13.x_LayerHasMask0;
  let x_690 : f32 = x_13.x_LayerHasMask1;
  let x_693 : f32 = x_13.x_LayerHasMask2;
  let x_696 : f32 = x_13.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_13.x_Metallic0;
  let x_724 : f32 = x_13.x_Metallic1;
  let x_727 : f32 = x_13.x_Metallic2;
  let x_730 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_13.x_LayerHasMask0;
  let x_737 : f32 = x_13.x_LayerHasMask1;
  let x_739 : f32 = x_13.x_LayerHasMask2;
  let x_741 : f32 = x_13.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_13.x_Metallic0;
  let x_748 : f32 = x_13.x_Metallic1;
  let x_750 : f32 = x_13.x_Metallic2;
  let x_752 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_13.x_LayerHasMask0;
  let x_775 : f32 = x_13.x_LayerHasMask1;
  let x_777 : f32 = x_13.x_LayerHasMask2;
  let x_779 : f32 = x_13.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat43;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_836 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_955 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_955) + 4.0f);
  let x_962 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_962);
  let x_966 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_966) << bitcast<u32>(2i));
  let x_970 : vec3<f32> = vs_TEXCOORD7;
  let x_972 : i32 = u_xlati2;
  let x_975 : i32 = u_xlati2;
  let x_979 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_972 + 1i) / 4i)][((x_975 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_970.y, x_970.y, x_970.y) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_987 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_982 / 4i)][(x_984 % 4i)];
  let x_989 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + x_992);
  let x_994 : i32 = u_xlati2;
  let x_997 : i32 = u_xlati2;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + x_1006);
  let x_1008 : vec3<f32> = u_xlat16;
  let x_1009 : i32 = u_xlati2;
  let x_1012 : i32 = u_xlati2;
  let x_1016 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1009 + 3i) / 4i)][((x_1012 + 3i) % 4i)];
  let x_1018 : vec3<f32> = (x_1008 + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  u_xlat1.w = 1.0f;
  let x_1027 : vec4<f32> = x_1025.unity_SHAr;
  let x_1028 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1027, x_1028);
  let x_1032 : vec4<f32> = x_1025.unity_SHAg;
  let x_1033 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1032, x_1033);
  let x_1037 : vec4<f32> = x_1025.unity_SHAb;
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1037, x_1038);
  let x_1041 : vec4<f32> = u_xlat1;
  let x_1043 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1041.y, x_1041.z, x_1041.z, x_1041.x) * vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1043.z));
  let x_1047 : vec4<f32> = x_1025.unity_SHBr;
  let x_1048 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1047, x_1048);
  let x_1052 : vec4<f32> = x_1025.unity_SHBg;
  let x_1053 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1025.unity_SHBb;
  let x_1058 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1057, x_1058);
  let x_1062 : f32 = u_xlat1.y;
  let x_1064 : f32 = u_xlat1.y;
  u_xlat43 = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat1.x;
  let x_1069 : f32 = u_xlat1.x;
  let x_1071 : f32 = u_xlat43;
  u_xlat43 = ((x_1067 * x_1069) + -(x_1071));
  let x_1076 : vec4<f32> = x_1025.unity_SHC;
  let x_1078 : f32 = u_xlat43;
  let x_1081 : vec4<f32> = u_xlat6;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078, x_1078, x_1078)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat3;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) + vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec4<f32> = u_xlat3;
  let x_1095 : vec3<f32> = max(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1096 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1099 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1099) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1105 : f32 = u_xlat43;
  u_xlat44 = (-(x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat43;
  let x_1110 : vec4<f32> = u_xlat5;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1108, x_1108, x_1108) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec3<f32> = u_xlat0;
  let x_1124 : vec4<f32> = u_xlat5;
  let x_1129 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.x, x_1122.x) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1130 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1132) + 1.0f);
  let x_1137 : f32 = u_xlat0.x;
  let x_1139 : f32 = u_xlat0.x;
  u_xlat43 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat43;
  u_xlat43 = max(x_1141, 0.0078125f);
  let x_1145 : f32 = u_xlat43;
  let x_1146 : f32 = u_xlat43;
  u_xlat45 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat28;
  let x_1149 : f32 = u_xlat44;
  u_xlat28 = (x_1148 + x_1149);
  let x_1151 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1151, 0.0f, 1.0f);
  let x_1153 : f32 = u_xlat43;
  u_xlat44 = ((x_1153 * 4.0f) + 2.0f);
  let x_1156 : f32 = u_xlat14;
  u_xlat14 = min(x_1156, 1.0f);
  let x_1160 : vec4<f32> = u_xlat2;
  let x_1161 : vec2<f32> = vec2<f32>(x_1160.x, x_1160.y);
  let x_1163 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
  let x_1175 : vec3<f32> = txVec0;
  let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
  u_xlat2.x = x_1177;
  let x_1180 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1180) + 1.0f);
  let x_1185 : f32 = u_xlat2.x;
  let x_1187 : f32 = x_845.x_MainLightShadowParams.x;
  let x_1190 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1185 * x_1187) + x_1190);
  let x_1195 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1195);
  let x_1199 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1199 >= 1.0f);
  let x_1201 : bool = u_xlatb30;
  let x_1202 : bool = u_xlatb16;
  u_xlatb16 = (x_1201 | x_1202);
  let x_1204 : bool = u_xlatb16;
  if (x_1204) {
    x_1206 = 1.0f;
  } else {
    let x_1211 : f32 = u_xlat2.x;
    x_1206 = x_1211;
  }
  let x_1212 : f32 = x_1206;
  u_xlat2.x = x_1212;
  let x_1214 : vec3<f32> = vs_TEXCOORD7;
  let x_1217 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1219 : vec3<f32> = (x_1214 + -(x_1217));
  let x_1220 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : vec4<f32> = u_xlat6;
  let x_1224 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_1222.x, x_1222.y, x_1222.z), vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1230 : f32 = u_xlat16.x;
  let x_1232 : f32 = x_845.x_MainLightShadowParams.z;
  let x_1235 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1230 * x_1232) + x_1235);
  let x_1237 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1237, 0.0f, 1.0f);
  let x_1241 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1241) + 1.0f);
  let x_1244 : f32 = u_xlat30;
  let x_1245 : f32 = u_xlat46;
  let x_1248 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1244 * x_1245) + x_1248);
  let x_1253 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1253;
  let x_1256 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1256;
  let x_1259 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1259;
  let x_1261 : vec4<f32> = u_xlat6;
  let x_1264 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1261.x, x_1261.y, x_1261.z)), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : f32 = u_xlat30;
  let x_1268 : f32 = u_xlat30;
  u_xlat30 = (x_1267 + x_1268);
  let x_1270 : vec4<f32> = u_xlat1;
  let x_1272 : f32 = u_xlat30;
  let x_1276 : vec4<f32> = u_xlat6;
  let x_1279 : vec3<f32> = ((vec3<f32>(x_1270.x, x_1270.y, x_1270.z) * -(vec3<f32>(x_1272, x_1272, x_1272))) + -(vec3<f32>(x_1276.x, x_1276.y, x_1276.z)));
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat1;
  let x_1284 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1287, 0.0f, 1.0f);
  let x_1289 : f32 = u_xlat30;
  u_xlat30 = (-(x_1289) + 1.0f);
  let x_1292 : f32 = u_xlat30;
  let x_1293 : f32 = u_xlat30;
  u_xlat30 = (x_1292 * x_1293);
  let x_1295 : f32 = u_xlat30;
  let x_1296 : f32 = u_xlat30;
  u_xlat30 = (x_1295 * x_1296);
  let x_1299 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1299) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1306 : f32 = u_xlat0.x;
  let x_1307 : f32 = u_xlat46;
  u_xlat0.x = (x_1306 * x_1307);
  let x_1311 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1311 * 6.0f);
  let x_1323 : vec4<f32> = u_xlat7;
  let x_1326 : f32 = u_xlat0.x;
  let x_1327 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1323.x, x_1323.y, x_1323.z), x_1326);
  u_xlat7 = x_1327;
  let x_1329 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1329 + -1.0f);
  let x_1333 : f32 = x_1025.unity_SpecCube0_HDR.w;
  let x_1335 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1333 * x_1335) + 1.0f);
  let x_1340 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1340, 0.0f);
  let x_1344 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1344);
  let x_1348 : f32 = u_xlat0.x;
  let x_1350 : f32 = x_1025.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1348 * x_1350);
  let x_1354 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1354);
  let x_1358 : f32 = u_xlat0.x;
  let x_1360 : f32 = x_1025.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1358 * x_1360);
  let x_1363 : vec4<f32> = u_xlat7;
  let x_1365 : vec3<f32> = u_xlat0;
  let x_1367 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) * vec3<f32>(x_1365.x, x_1365.x, x_1365.x));
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : f32 = u_xlat43;
  let x_1372 : f32 = u_xlat43;
  let x_1376 : vec2<f32> = ((vec2<f32>(x_1370, x_1370) * vec2<f32>(x_1372, x_1372)) + vec2<f32>(-1.0f, 1.0f));
  let x_1377 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1376.x, x_1376.y, x_1377.z, x_1377.w);
  let x_1380 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1380);
  let x_1384 : vec4<f32> = u_xlat5;
  let x_1387 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1384.x, x_1384.y, x_1384.z)) + vec3<f32>(x_1387, x_1387, x_1387));
  let x_1390 : f32 = u_xlat30;
  let x_1392 : vec3<f32> = u_xlat22;
  let x_1394 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1390, x_1390, x_1390) * x_1392) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1397 : vec3<f32> = u_xlat0;
  let x_1399 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1397.x, x_1397.x, x_1397.x) * x_1399);
  let x_1401 : vec4<f32> = u_xlat7;
  let x_1403 : vec3<f32> = u_xlat22;
  let x_1404 : vec3<f32> = (vec3<f32>(x_1401.x, x_1401.y, x_1401.z) * x_1403);
  let x_1405 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
  let x_1407 : vec4<f32> = u_xlat3;
  let x_1409 : vec4<f32> = u_xlat4;
  let x_1412 : vec4<f32> = u_xlat7;
  let x_1414 : vec3<f32> = ((vec3<f32>(x_1407.x, x_1407.y, x_1407.z) * vec3<f32>(x_1409.x, x_1409.y, x_1409.z)) + vec3<f32>(x_1412.x, x_1412.y, x_1412.z));
  let x_1415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1418 : f32 = u_xlat2.x;
  let x_1420 : f32 = x_1025.unity_LightData.z;
  u_xlat0.x = (x_1418 * x_1420);
  let x_1423 : vec4<f32> = u_xlat1;
  let x_1426 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1423.x, x_1423.y, x_1423.z), vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1429, 0.0f, 1.0f);
  let x_1431 : f32 = u_xlat28;
  let x_1433 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1431 * x_1433);
  let x_1436 : vec3<f32> = u_xlat0;
  let x_1439 : vec4<f32> = x_112.x_MainLightColor;
  let x_1441 : vec3<f32> = (vec3<f32>(x_1436.x, x_1436.x, x_1436.x) * vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
  let x_1442 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
  let x_1444 : vec4<f32> = u_xlat6;
  let x_1447 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat22 = (vec3<f32>(x_1444.x, x_1444.y, x_1444.z) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
  let x_1450 : vec3<f32> = u_xlat22;
  let x_1451 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1450, x_1451);
  let x_1455 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1455, 1.17549435e-38f);
  let x_1460 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1460);
  let x_1463 : vec3<f32> = u_xlat0;
  let x_1465 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1463.x, x_1463.x, x_1463.x) * x_1465);
  let x_1467 : vec4<f32> = u_xlat1;
  let x_1469 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), x_1469);
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1473, 0.0f, 1.0f);
  let x_1477 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1479 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1477.x, x_1477.y, x_1477.z), x_1479);
  let x_1483 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1483, 0.0f, 1.0f);
  let x_1486 : vec3<f32> = u_xlat0;
  let x_1488 : vec3<f32> = u_xlat0;
  let x_1490 : vec2<f32> = (vec2<f32>(x_1486.x, x_1486.z) * vec2<f32>(x_1488.x, x_1488.z));
  let x_1491 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1490.x, x_1491.y, x_1490.y);
  let x_1494 : f32 = u_xlat0.x;
  let x_1496 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1494 * x_1496) + 1.00001001358032226562f);
  let x_1502 : f32 = u_xlat0.x;
  let x_1504 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1502 * x_1504);
  let x_1508 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1508, 0.10000000149011611938f);
  let x_1511 : f32 = u_xlat28;
  let x_1513 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1511 * x_1513);
  let x_1516 : f32 = u_xlat44;
  let x_1518 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1516 * x_1518);
  let x_1521 : f32 = u_xlat45;
  let x_1523 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1521 / x_1523);
  let x_1526 : vec4<f32> = u_xlat5;
  let x_1528 : vec3<f32> = u_xlat0;
  let x_1531 : vec4<f32> = u_xlat4;
  u_xlat22 = ((vec3<f32>(x_1526.x, x_1526.y, x_1526.z) * vec3<f32>(x_1528.x, x_1528.x, x_1528.x)) + vec3<f32>(x_1531.x, x_1531.y, x_1531.z));
  let x_1534 : vec4<f32> = u_xlat7;
  let x_1536 : vec3<f32> = u_xlat22;
  let x_1537 : vec3<f32> = (vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * x_1536);
  let x_1538 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
  let x_1541 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1543 : f32 = x_1025.unity_LightData.y;
  u_xlat0.x = min(x_1541, x_1543);
  let x_1548 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1548));
  let x_1552 : f32 = u_xlat16.x;
  let x_1554 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_1557 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1552 * x_1554) + x_1557);
  let x_1559 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1559, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1571 : u32 = u_xlatu_loop_1;
    let x_1572 : u32 = u_xlatu0;
    if ((x_1571 < x_1572)) {
    } else {
      break;
    }
    let x_1575 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1575 >> 2u);
    let x_1578 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1578 & 3u));
    let x_1581 : u32 = u_xlatu46;
    let x_1584 : vec4<f32> = x_1025.unity_LightIndices[bitcast<i32>(x_1581)];
    let x_1594 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1599 : vec4<u32> = indexable[x_1594];
    u_xlat46 = dot(x_1584, bitcast<vec4<f32>>(x_1599));
    let x_1603 : f32 = u_xlat46;
    u_xlati46 = i32(x_1603);
    let x_1605 : vec3<f32> = vs_TEXCOORD7;
    let x_1616 : i32 = u_xlati46;
    let x_1618 : vec4<f32> = x_1615.x_AdditionalLightsPosition[x_1616];
    let x_1621 : i32 = u_xlati46;
    let x_1623 : vec4<f32> = x_1615.x_AdditionalLightsPosition[x_1621];
    u_xlat22 = ((-(x_1605) * vec3<f32>(x_1618.w, x_1618.w, x_1618.w)) + vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
    let x_1627 : vec3<f32> = u_xlat22;
    let x_1628 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1627, x_1628);
    let x_1630 : f32 = u_xlat47;
    u_xlat47 = max(x_1630, 0.00006103515625f);
    let x_1633 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1633);
    let x_1635 : f32 = u_xlat48;
    let x_1637 : vec3<f32> = u_xlat22;
    let x_1638 : vec3<f32> = (vec3<f32>(x_1635, x_1635, x_1635) * x_1637);
    let x_1639 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
    let x_1642 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1642);
    let x_1644 : f32 = u_xlat47;
    let x_1645 : i32 = u_xlati46;
    let x_1647 : f32 = x_1615.x_AdditionalLightsAttenuation[x_1645].x;
    u_xlat47 = (x_1644 * x_1647);
    let x_1649 : f32 = u_xlat47;
    let x_1651 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1649) * x_1651) + 1.0f);
    let x_1654 : f32 = u_xlat47;
    u_xlat47 = max(x_1654, 0.0f);
    let x_1656 : f32 = u_xlat47;
    let x_1657 : f32 = u_xlat47;
    u_xlat47 = (x_1656 * x_1657);
    let x_1659 : f32 = u_xlat47;
    let x_1660 : f32 = u_xlat49;
    u_xlat47 = (x_1659 * x_1660);
    let x_1662 : i32 = u_xlati46;
    let x_1664 : vec4<f32> = x_1615.x_AdditionalLightsSpotDir[x_1662];
    let x_1666 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1664.x, x_1664.y, x_1664.z), vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
    let x_1669 : f32 = u_xlat49;
    let x_1670 : i32 = u_xlati46;
    let x_1672 : f32 = x_1615.x_AdditionalLightsAttenuation[x_1670].z;
    let x_1674 : i32 = u_xlati46;
    let x_1676 : f32 = x_1615.x_AdditionalLightsAttenuation[x_1674].w;
    u_xlat49 = ((x_1669 * x_1672) + x_1676);
    let x_1678 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1678, 0.0f, 1.0f);
    let x_1680 : f32 = u_xlat49;
    let x_1681 : f32 = u_xlat49;
    u_xlat49 = (x_1680 * x_1681);
    let x_1683 : f32 = u_xlat47;
    let x_1684 : f32 = u_xlat49;
    u_xlat47 = (x_1683 * x_1684);
    let x_1687 : i32 = u_xlati46;
    let x_1689 : f32 = x_845.x_AdditionalShadowParams[x_1687].w;
    u_xlati49 = i32(x_1689);
    let x_1692 : i32 = u_xlati49;
    u_xlatb51 = (x_1692 >= 0i);
    let x_1694 : bool = u_xlatb51;
    if (x_1694) {
      let x_1698 : i32 = u_xlati46;
      let x_1700 : f32 = x_845.x_AdditionalShadowParams[x_1698].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1700, x_1700, x_1700, x_1700))));
      let x_1704 : bool = u_xlatb51;
      if (x_1704) {
        let x_1708 : vec4<f32> = u_xlat9;
        let x_1711 : vec4<f32> = u_xlat9;
        let x_1714 : vec4<bool> = (abs(vec4<f32>(x_1708.z, x_1708.z, x_1708.y, x_1708.z)) >= abs(vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.x)));
        let x_1716 : vec3<bool> = vec3<bool>(x_1714.x, x_1714.y, x_1714.z);
        let x_1717 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
        let x_1720 : bool = u_xlatb10.y;
        let x_1722 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1720 & x_1722);
        let x_1724 : vec4<f32> = u_xlat9;
        let x_1727 : vec4<bool> = (-(vec4<f32>(x_1724.z, x_1724.y, x_1724.z, x_1724.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1728 : vec3<bool> = vec3<bool>(x_1727.x, x_1727.y, x_1727.w);
        let x_1729 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1728.x, x_1728.y, x_1729.z, x_1728.z);
        let x_1732 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1732);
        let x_1737 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1737);
        let x_1742 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1742);
        let x_1746 : bool = u_xlatb10.z;
        if (x_1746) {
          let x_1751 : f32 = u_xlat10.y;
          x_1747 = x_1751;
        } else {
          let x_1753 : f32 = u_xlat52;
          x_1747 = x_1753;
        }
        let x_1754 : f32 = x_1747;
        u_xlat24 = x_1754;
        let x_1756 : bool = u_xlatb51;
        if (x_1756) {
          let x_1761 : f32 = u_xlat10.x;
          x_1757 = x_1761;
        } else {
          let x_1763 : f32 = u_xlat24;
          x_1757 = x_1763;
        }
        let x_1764 : f32 = x_1757;
        u_xlat51 = x_1764;
        let x_1765 : i32 = u_xlati46;
        let x_1767 : f32 = x_845.x_AdditionalShadowParams[x_1765].w;
        u_xlat10.x = trunc(x_1767);
        let x_1770 : f32 = u_xlat51;
        let x_1772 : f32 = u_xlat10.x;
        u_xlat51 = (x_1770 + x_1772);
        let x_1774 : f32 = u_xlat51;
        u_xlati49 = i32(x_1774);
      }
      let x_1776 : i32 = u_xlati49;
      u_xlati49 = (x_1776 << bitcast<u32>(2i));
      let x_1778 : vec3<f32> = vs_TEXCOORD7;
      let x_1780 : i32 = u_xlati49;
      let x_1783 : i32 = u_xlati49;
      let x_1787 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1780 + 1i) / 4i)][((x_1783 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1778.y, x_1778.y, x_1778.y, x_1778.y) * x_1787);
      let x_1789 : i32 = u_xlati49;
      let x_1791 : i32 = u_xlati49;
      let x_1794 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_1789 / 4i)][(x_1791 % 4i)];
      let x_1795 : vec3<f32> = vs_TEXCOORD7;
      let x_1798 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1794 * vec4<f32>(x_1795.x, x_1795.x, x_1795.x, x_1795.x)) + x_1798);
      let x_1800 : i32 = u_xlati49;
      let x_1803 : i32 = u_xlati49;
      let x_1807 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1800 + 2i) / 4i)][((x_1803 + 2i) % 4i)];
      let x_1808 : vec3<f32> = vs_TEXCOORD7;
      let x_1811 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1807 * vec4<f32>(x_1808.z, x_1808.z, x_1808.z, x_1808.z)) + x_1811);
      let x_1813 : vec4<f32> = u_xlat10;
      let x_1814 : i32 = u_xlati49;
      let x_1817 : i32 = u_xlati49;
      let x_1821 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1814 + 3i) / 4i)][((x_1817 + 3i) % 4i)];
      u_xlat10 = (x_1813 + x_1821);
      let x_1823 : vec4<f32> = u_xlat10;
      let x_1825 : vec4<f32> = u_xlat10;
      let x_1827 : vec3<f32> = (vec3<f32>(x_1823.x, x_1823.y, x_1823.z) / vec3<f32>(x_1825.w, x_1825.w, x_1825.w));
      let x_1828 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
      let x_1831 : vec4<f32> = u_xlat10;
      let x_1832 : vec2<f32> = vec2<f32>(x_1831.x, x_1831.y);
      let x_1834 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
      let x_1842 : vec3<f32> = txVec1;
      let x_1844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
      u_xlat49 = x_1844;
      let x_1845 : i32 = u_xlati46;
      let x_1847 : f32 = x_845.x_AdditionalShadowParams[x_1845].x;
      u_xlat51 = (1.0f + -(x_1847));
      let x_1850 : f32 = u_xlat49;
      let x_1851 : i32 = u_xlati46;
      let x_1853 : f32 = x_845.x_AdditionalShadowParams[x_1851].x;
      let x_1855 : f32 = u_xlat51;
      u_xlat49 = ((x_1850 * x_1853) + x_1855);
      let x_1858 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1858);
      let x_1861 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1861 >= 1.0f);
      let x_1864 : bool = u_xlatb51;
      let x_1866 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1864 | x_1866);
      let x_1868 : bool = u_xlatb51;
      let x_1869 : f32 = u_xlat49;
      u_xlat49 = select(x_1869, 1.0f, x_1868);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1872 : f32 = u_xlat49;
    u_xlat51 = (-(x_1872) + 1.0f);
    let x_1875 : f32 = u_xlat28;
    let x_1876 : f32 = u_xlat51;
    let x_1878 : f32 = u_xlat49;
    u_xlat49 = ((x_1875 * x_1876) + x_1878);
    let x_1880 : f32 = u_xlat47;
    let x_1881 : f32 = u_xlat49;
    u_xlat47 = (x_1880 * x_1881);
    let x_1883 : vec4<f32> = u_xlat1;
    let x_1885 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1883.x, x_1883.y, x_1883.z), vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1888, 0.0f, 1.0f);
    let x_1890 : f32 = u_xlat47;
    let x_1891 : f32 = u_xlat49;
    u_xlat47 = (x_1890 * x_1891);
    let x_1893 : f32 = u_xlat47;
    let x_1895 : i32 = u_xlati46;
    let x_1897 : vec4<f32> = x_1615.x_AdditionalLightsColor[x_1895];
    let x_1899 : vec3<f32> = (vec3<f32>(x_1893, x_1893, x_1893) * vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
    let x_1900 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
    let x_1902 : vec3<f32> = u_xlat22;
    let x_1903 : f32 = u_xlat48;
    let x_1906 : vec4<f32> = u_xlat6;
    u_xlat22 = ((x_1902 * vec3<f32>(x_1903, x_1903, x_1903)) + vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
    let x_1909 : vec3<f32> = u_xlat22;
    let x_1910 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(x_1909, x_1910);
    let x_1912 : f32 = u_xlat46;
    u_xlat46 = max(x_1912, 1.17549435e-38f);
    let x_1914 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1914);
    let x_1916 : f32 = u_xlat46;
    let x_1918 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1916, x_1916, x_1916) * x_1918);
    let x_1920 : vec4<f32> = u_xlat1;
    let x_1922 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), x_1922);
    let x_1924 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1924, 0.0f, 1.0f);
    let x_1926 : vec4<f32> = u_xlat9;
    let x_1928 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), x_1928);
    let x_1930 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1930, 0.0f, 1.0f);
    let x_1932 : f32 = u_xlat46;
    let x_1933 : f32 = u_xlat46;
    u_xlat46 = (x_1932 * x_1933);
    let x_1935 : f32 = u_xlat46;
    let x_1937 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1935 * x_1937) + 1.00001001358032226562f);
    let x_1940 : f32 = u_xlat47;
    let x_1941 : f32 = u_xlat47;
    u_xlat47 = (x_1940 * x_1941);
    let x_1943 : f32 = u_xlat46;
    let x_1944 : f32 = u_xlat46;
    u_xlat46 = (x_1943 * x_1944);
    let x_1946 : f32 = u_xlat47;
    u_xlat47 = max(x_1946, 0.10000000149011611938f);
    let x_1948 : f32 = u_xlat46;
    let x_1949 : f32 = u_xlat47;
    u_xlat46 = (x_1948 * x_1949);
    let x_1951 : f32 = u_xlat44;
    let x_1952 : f32 = u_xlat46;
    u_xlat46 = (x_1951 * x_1952);
    let x_1954 : f32 = u_xlat45;
    let x_1955 : f32 = u_xlat46;
    u_xlat46 = (x_1954 / x_1955);
    let x_1957 : vec4<f32> = u_xlat5;
    let x_1959 : f32 = u_xlat46;
    let x_1962 : vec4<f32> = u_xlat4;
    u_xlat22 = ((vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * vec3<f32>(x_1959, x_1959, x_1959)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec3<f32> = u_xlat22;
    let x_1966 : vec4<f32> = u_xlat10;
    let x_1969 : vec4<f32> = u_xlat2;
    let x_1971 : vec3<f32> = ((x_1965 * vec3<f32>(x_1966.x, x_1966.y, x_1966.z)) + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1972 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);

    continuing {
      let x_1974 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1974 + bitcast<u32>(1i));
    }
  }
  let x_1976 : vec4<f32> = u_xlat3;
  let x_1978 : f32 = u_xlat14;
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1976.x, x_1976.y, x_1976.z) * vec3<f32>(x_1978, x_1978, x_1978)) + vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : vec4<f32> = u_xlat2;
  let x_1986 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1984.x, x_1984.y, x_1984.z) + x_1986);
  let x_1990 : f32 = u_xlat42;
  let x_1992 : vec3<f32> = u_xlat0;
  let x_1993 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * x_1992);
  let x_1994 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


