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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_979 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1133 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1399 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1538 : f32;
  var x_1548 : f32;
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
  let x_839 : vec4<f32> = vs_TEXCOORD0;
  let x_842 : f32 = x_112.x_GlobalMipBias.x;
  let x_843 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_839.z, x_839.w), x_842);
  u_xlat2 = x_843;
  let x_848 : vec4<f32> = vs_TEXCOORD0;
  let x_851 : f32 = x_112.x_GlobalMipBias.x;
  let x_852 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_848.z, x_848.w), x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat43;
  u_xlat43 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat43;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat43 = max(x_878, 0.00009999999747378752f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat43;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat28;
  let x_896 : f32 = u_xlat43;
  u_xlat44 = (x_895 + -(x_896));
  let x_899 : f32 = u_xlat43;
  let x_901 : vec4<f32> = u_xlat5;
  let x_903 : vec3<f32> = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat0;
  let x_915 : vec4<f32> = u_xlat4;
  let x_920 : vec3<f32> = ((vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.y, x_915.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : f32 = u_xlat28;
  u_xlat0.x = (-(x_923) + 1.0f);
  let x_928 : f32 = u_xlat0.x;
  let x_930 : f32 = u_xlat0.x;
  u_xlat28 = (x_928 * x_930);
  let x_932 : f32 = u_xlat28;
  u_xlat28 = max(x_932, 0.0078125f);
  let x_935 : f32 = u_xlat28;
  let x_936 : f32 = u_xlat28;
  u_xlat43 = (x_935 * x_936);
  let x_938 : f32 = u_xlat44;
  u_xlat44 = (x_938 + 1.0f);
  let x_940 : f32 = u_xlat44;
  u_xlat44 = clamp(x_940, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat28;
  u_xlat45 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat14;
  u_xlat14 = min(x_946, 1.0f);
  let x_951 : vec4<f32> = vs_TEXCOORD8;
  let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
  let x_955 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_952.x, x_952.y, x_955);
  let x_968 : vec3<f32> = txVec0;
  let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
  u_xlat46 = x_970;
  let x_981 : f32 = x_979.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_981) + 1.0f);
  let x_985 : f32 = u_xlat46;
  let x_987 : f32 = x_979.x_MainLightShadowParams.x;
  let x_990 : f32 = u_xlat5.x;
  u_xlat46 = ((x_985 * x_987) + x_990);
  let x_994 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_994);
  let x_998 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_998 >= 1.0f);
  let x_1000 : bool = u_xlatb19;
  let x_1001 : bool = u_xlatb5;
  u_xlatb5 = (x_1000 | x_1001);
  let x_1003 : bool = u_xlatb5;
  let x_1004 : f32 = u_xlat46;
  u_xlat46 = select(x_1004, 1.0f, x_1003);
  let x_1008 : vec3<f32> = vs_TEXCOORD7;
  let x_1011 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1013 : vec3<f32> = (x_1008 + -(x_1011));
  let x_1014 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat5;
  let x_1018 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1024 : f32 = u_xlat5.x;
  let x_1026 : f32 = x_979.x_MainLightShadowParams.z;
  let x_1029 : f32 = x_979.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1024 * x_1026) + x_1029);
  let x_1033 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1033, 0.0f, 1.0f);
  let x_1037 : f32 = u_xlat46;
  u_xlat33 = (-(x_1037) + 1.0f);
  let x_1041 : f32 = u_xlat19.x;
  let x_1042 : f32 = u_xlat33;
  let x_1044 : f32 = u_xlat46;
  u_xlat46 = ((x_1041 * x_1042) + x_1044);
  let x_1047 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1047;
  let x_1050 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1050;
  let x_1053 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1053;
  let x_1055 : vec4<f32> = u_xlat6;
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat19.x = dot(-(vec3<f32>(x_1055.x, x_1055.y, x_1055.z)), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1063 : f32 = u_xlat19.x;
  let x_1065 : f32 = u_xlat19.x;
  u_xlat19.x = (x_1063 + x_1065);
  let x_1068 : vec4<f32> = u_xlat1;
  let x_1070 : vec3<f32> = u_xlat19;
  let x_1074 : vec4<f32> = u_xlat6;
  u_xlat19 = ((vec3<f32>(x_1068.x, x_1068.y, x_1068.z) * -(vec3<f32>(x_1070.x, x_1070.x, x_1070.x))) + -(vec3<f32>(x_1074.x, x_1074.y, x_1074.z)));
  let x_1079 : vec4<f32> = u_xlat1;
  let x_1081 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1084, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat48;
  u_xlat48 = (-(x_1086) + 1.0f);
  let x_1089 : f32 = u_xlat48;
  let x_1090 : f32 = u_xlat48;
  u_xlat48 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat48;
  let x_1093 : f32 = u_xlat48;
  u_xlat48 = (x_1092 * x_1093);
  let x_1096 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_1096) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1104 : f32 = u_xlat0.x;
  let x_1106 : f32 = u_xlat7.x;
  u_xlat0.x = (x_1104 * x_1106);
  let x_1110 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1110 * 6.0f);
  let x_1122 : vec3<f32> = u_xlat19;
  let x_1124 : f32 = u_xlat0.x;
  let x_1125 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1122, x_1124);
  u_xlat7 = x_1125;
  let x_1127 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1127 + -1.0f);
  let x_1135 : f32 = x_1133.unity_SpecCube0_HDR.w;
  let x_1137 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1135 * x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1142, 0.0f);
  let x_1146 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1146);
  let x_1150 : f32 = u_xlat0.x;
  let x_1152 : f32 = x_1133.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1150 * x_1152);
  let x_1156 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1156);
  let x_1160 : f32 = u_xlat0.x;
  let x_1162 : f32 = x_1133.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1160 * x_1162);
  let x_1165 : vec4<f32> = u_xlat7;
  let x_1167 : vec3<f32> = u_xlat0;
  u_xlat19 = (vec3<f32>(x_1165.x, x_1165.y, x_1165.z) * vec3<f32>(x_1167.x, x_1167.x, x_1167.x));
  let x_1170 : f32 = u_xlat28;
  let x_1172 : f32 = u_xlat28;
  let x_1176 : vec2<f32> = ((vec2<f32>(x_1170, x_1170) * vec2<f32>(x_1172, x_1172)) + vec2<f32>(-1.0f, 1.0f));
  let x_1177 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1176.x, x_1177.y, x_1176.y);
  let x_1180 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1180);
  let x_1182 : vec4<f32> = u_xlat4;
  let x_1185 : f32 = u_xlat44;
  let x_1187 : vec3<f32> = (-(vec3<f32>(x_1182.x, x_1182.y, x_1182.z)) + vec3<f32>(x_1185, x_1185, x_1185));
  let x_1188 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : f32 = u_xlat48;
  let x_1192 : vec4<f32> = u_xlat7;
  let x_1195 : vec4<f32> = u_xlat4;
  let x_1197 : vec3<f32> = ((vec3<f32>(x_1190, x_1190, x_1190) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z)) + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
  let x_1200 : f32 = u_xlat28;
  let x_1202 : vec4<f32> = u_xlat7;
  let x_1204 : vec3<f32> = (vec3<f32>(x_1200, x_1200, x_1200) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec3<f32> = u_xlat19;
  let x_1208 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1207 * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat2;
  let x_1213 : vec4<f32> = u_xlat3;
  let x_1216 : vec3<f32> = u_xlat19;
  let x_1217 : vec3<f32> = ((vec3<f32>(x_1211.x, x_1211.y, x_1211.z) * vec3<f32>(x_1213.x, x_1213.y, x_1213.z)) + x_1216);
  let x_1218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : f32 = u_xlat46;
  let x_1222 : f32 = x_1133.unity_LightData.z;
  u_xlat28 = (x_1220 * x_1222);
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1227 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1230, 0.0f, 1.0f);
  let x_1232 : f32 = u_xlat28;
  let x_1233 : f32 = u_xlat44;
  u_xlat28 = (x_1232 * x_1233);
  let x_1235 : f32 = u_xlat28;
  let x_1238 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_1235, x_1235, x_1235) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat6;
  let x_1244 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1246 : vec3<f32> = (vec3<f32>(x_1241.x, x_1241.y, x_1241.z) + vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : vec4<f32> = u_xlat7;
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1249.x, x_1249.y, x_1249.z), vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : f32 = u_xlat28;
  u_xlat28 = max(x_1254, 1.17549435e-38f);
  let x_1257 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1257);
  let x_1259 : f32 = u_xlat28;
  let x_1261 : vec4<f32> = u_xlat7;
  let x_1263 : vec3<f32> = (vec3<f32>(x_1259, x_1259, x_1259) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat1;
  let x_1268 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1266.x, x_1266.y, x_1266.z), vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1271, 0.0f, 1.0f);
  let x_1274 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1276 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1274.x, x_1274.y, x_1274.z), vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1279, 0.0f, 1.0f);
  let x_1281 : f32 = u_xlat28;
  let x_1282 : f32 = u_xlat28;
  u_xlat28 = (x_1281 * x_1282);
  let x_1284 : f32 = u_xlat28;
  let x_1286 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1284 * x_1286) + 1.00001001358032226562f);
  let x_1290 : f32 = u_xlat44;
  let x_1291 : f32 = u_xlat44;
  u_xlat44 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat28;
  let x_1294 : f32 = u_xlat28;
  u_xlat28 = (x_1293 * x_1294);
  let x_1296 : f32 = u_xlat44;
  u_xlat44 = max(x_1296, 0.10000000149011611938f);
  let x_1299 : f32 = u_xlat28;
  let x_1300 : f32 = u_xlat44;
  u_xlat28 = (x_1299 * x_1300);
  let x_1302 : f32 = u_xlat45;
  let x_1303 : f32 = u_xlat28;
  u_xlat28 = (x_1302 * x_1303);
  let x_1305 : f32 = u_xlat43;
  let x_1306 : f32 = u_xlat28;
  u_xlat28 = (x_1305 / x_1306);
  let x_1308 : vec4<f32> = u_xlat4;
  let x_1310 : f32 = u_xlat28;
  let x_1313 : vec4<f32> = u_xlat3;
  let x_1315 : vec3<f32> = ((vec3<f32>(x_1308.x, x_1308.y, x_1308.z) * vec3<f32>(x_1310, x_1310, x_1310)) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec3<f32> = u_xlat19;
  let x_1319 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1318 * vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1323 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1325 : f32 = x_1133.unity_LightData.y;
  u_xlat28 = min(x_1323, x_1325);
  let x_1329 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1329));
  let x_1333 : f32 = u_xlat5.x;
  let x_1335 : f32 = x_979.x_AdditionalShadowFadeParams.x;
  let x_1338 : f32 = x_979.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1333 * x_1335) + x_1338);
  let x_1340 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1340, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1352 : u32 = u_xlatu_loop_1;
    let x_1353 : u32 = u_xlatu28;
    if ((x_1352 < x_1353)) {
    } else {
      break;
    }
    let x_1356 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1356 >> 2u);
    let x_1360 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1360 & 3u));
    let x_1363 : u32 = u_xlatu5;
    let x_1366 : vec4<f32> = x_1133.unity_LightIndices[bitcast<i32>(x_1363)];
    let x_1376 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1381 : vec4<u32> = indexable[x_1376];
    u_xlat5.x = dot(x_1366, bitcast<vec4<f32>>(x_1381));
    let x_1387 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1387);
    let x_1389 : vec3<f32> = vs_TEXCOORD7;
    let x_1400 : i32 = u_xlati5;
    let x_1402 : vec4<f32> = x_1399.x_AdditionalLightsPosition[x_1400];
    let x_1405 : i32 = u_xlati5;
    let x_1407 : vec4<f32> = x_1399.x_AdditionalLightsPosition[x_1405];
    let x_1409 : vec3<f32> = ((-(x_1389) * vec3<f32>(x_1402.w, x_1402.w, x_1402.w)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
    let x_1410 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
    let x_1412 : vec4<f32> = u_xlat8;
    let x_1414 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1412.x, x_1412.y, x_1412.z), vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : f32 = u_xlat48;
    u_xlat48 = max(x_1417, 0.00006103515625f);
    let x_1420 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1420);
    let x_1422 : f32 = u_xlat49;
    let x_1424 : vec4<f32> = u_xlat8;
    let x_1426 : vec3<f32> = (vec3<f32>(x_1422, x_1422, x_1422) * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
    let x_1430 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1430);
    let x_1432 : f32 = u_xlat48;
    let x_1433 : i32 = u_xlati5;
    let x_1435 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1433].x;
    u_xlat48 = (x_1432 * x_1435);
    let x_1437 : f32 = u_xlat48;
    let x_1439 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1437) * x_1439) + 1.0f);
    let x_1442 : f32 = u_xlat48;
    u_xlat48 = max(x_1442, 0.0f);
    let x_1444 : f32 = u_xlat48;
    let x_1445 : f32 = u_xlat48;
    u_xlat48 = (x_1444 * x_1445);
    let x_1447 : f32 = u_xlat48;
    let x_1448 : f32 = u_xlat50;
    u_xlat48 = (x_1447 * x_1448);
    let x_1450 : i32 = u_xlati5;
    let x_1452 : vec4<f32> = x_1399.x_AdditionalLightsSpotDir[x_1450];
    let x_1454 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1452.x, x_1452.y, x_1452.z), vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
    let x_1457 : f32 = u_xlat50;
    let x_1458 : i32 = u_xlati5;
    let x_1460 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1458].z;
    let x_1462 : i32 = u_xlati5;
    let x_1464 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1462].w;
    u_xlat50 = ((x_1457 * x_1460) + x_1464);
    let x_1466 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1466, 0.0f, 1.0f);
    let x_1468 : f32 = u_xlat50;
    let x_1469 : f32 = u_xlat50;
    u_xlat50 = (x_1468 * x_1469);
    let x_1471 : f32 = u_xlat48;
    let x_1472 : f32 = u_xlat50;
    u_xlat48 = (x_1471 * x_1472);
    let x_1475 : i32 = u_xlati5;
    let x_1477 : f32 = x_979.x_AdditionalShadowParams[x_1475].w;
    u_xlati50 = i32(x_1477);
    let x_1480 : i32 = u_xlati50;
    u_xlatb51 = (x_1480 >= 0i);
    let x_1482 : bool = u_xlatb51;
    if (x_1482) {
      let x_1486 : i32 = u_xlati5;
      let x_1488 : f32 = x_979.x_AdditionalShadowParams[x_1486].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1488, x_1488, x_1488, x_1488))));
      let x_1492 : bool = u_xlatb51;
      if (x_1492) {
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1500 : vec4<f32> = u_xlat9;
        let x_1503 : vec4<bool> = (abs(vec4<f32>(x_1497.z, x_1497.z, x_1497.y, x_1497.z)) >= abs(vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.x)));
        let x_1505 : vec3<bool> = vec3<bool>(x_1503.x, x_1503.y, x_1503.z);
        let x_1506 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
        let x_1509 : bool = u_xlatb10.y;
        let x_1511 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1509 & x_1511);
        let x_1513 : vec4<f32> = u_xlat9;
        let x_1516 : vec4<bool> = (-(vec4<f32>(x_1513.z, x_1513.y, x_1513.z, x_1513.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1517 : vec3<bool> = vec3<bool>(x_1516.x, x_1516.y, x_1516.w);
        let x_1518 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1517.x, x_1517.y, x_1518.z, x_1517.z);
        let x_1521 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1521);
        let x_1526 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1526);
        let x_1532 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1532);
        let x_1536 : bool = u_xlatb10.z;
        if (x_1536) {
          let x_1542 : f32 = u_xlat10.y;
          x_1538 = x_1542;
        } else {
          let x_1544 : f32 = u_xlat52;
          x_1538 = x_1544;
        }
        let x_1545 : f32 = x_1538;
        u_xlat24 = x_1545;
        let x_1547 : bool = u_xlatb51;
        if (x_1547) {
          let x_1552 : f32 = u_xlat10.x;
          x_1548 = x_1552;
        } else {
          let x_1554 : f32 = u_xlat24;
          x_1548 = x_1554;
        }
        let x_1555 : f32 = x_1548;
        u_xlat51 = x_1555;
        let x_1556 : i32 = u_xlati5;
        let x_1558 : f32 = x_979.x_AdditionalShadowParams[x_1556].w;
        u_xlat10.x = trunc(x_1558);
        let x_1561 : f32 = u_xlat51;
        let x_1563 : f32 = u_xlat10.x;
        u_xlat51 = (x_1561 + x_1563);
        let x_1565 : f32 = u_xlat51;
        u_xlati50 = i32(x_1565);
      }
      let x_1567 : i32 = u_xlati50;
      u_xlati50 = (x_1567 << bitcast<u32>(2i));
      let x_1569 : vec3<f32> = vs_TEXCOORD7;
      let x_1571 : i32 = u_xlati50;
      let x_1574 : i32 = u_xlati50;
      let x_1578 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[((x_1571 + 1i) / 4i)][((x_1574 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1569.y, x_1569.y, x_1569.y, x_1569.y) * x_1578);
      let x_1580 : i32 = u_xlati50;
      let x_1582 : i32 = u_xlati50;
      let x_1585 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[(x_1580 / 4i)][(x_1582 % 4i)];
      let x_1586 : vec3<f32> = vs_TEXCOORD7;
      let x_1589 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1585 * vec4<f32>(x_1586.x, x_1586.x, x_1586.x, x_1586.x)) + x_1589);
      let x_1591 : i32 = u_xlati50;
      let x_1594 : i32 = u_xlati50;
      let x_1598 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[((x_1591 + 2i) / 4i)][((x_1594 + 2i) % 4i)];
      let x_1599 : vec3<f32> = vs_TEXCOORD7;
      let x_1602 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1598 * vec4<f32>(x_1599.z, x_1599.z, x_1599.z, x_1599.z)) + x_1602);
      let x_1604 : vec4<f32> = u_xlat10;
      let x_1605 : i32 = u_xlati50;
      let x_1608 : i32 = u_xlati50;
      let x_1612 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[((x_1605 + 3i) / 4i)][((x_1608 + 3i) % 4i)];
      u_xlat10 = (x_1604 + x_1612);
      let x_1614 : vec4<f32> = u_xlat10;
      let x_1616 : vec4<f32> = u_xlat10;
      let x_1618 : vec3<f32> = (vec3<f32>(x_1614.x, x_1614.y, x_1614.z) / vec3<f32>(x_1616.w, x_1616.w, x_1616.w));
      let x_1619 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1619.w);
      let x_1622 : vec4<f32> = u_xlat10;
      let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
      let x_1625 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
      let x_1633 : vec3<f32> = txVec1;
      let x_1635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
      u_xlat50 = x_1635;
      let x_1636 : i32 = u_xlati5;
      let x_1638 : f32 = x_979.x_AdditionalShadowParams[x_1636].x;
      u_xlat51 = (1.0f + -(x_1638));
      let x_1641 : f32 = u_xlat50;
      let x_1642 : i32 = u_xlati5;
      let x_1644 : f32 = x_979.x_AdditionalShadowParams[x_1642].x;
      let x_1646 : f32 = u_xlat51;
      u_xlat50 = ((x_1641 * x_1644) + x_1646);
      let x_1649 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1649);
      let x_1652 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1652 >= 1.0f);
      let x_1655 : bool = u_xlatb51;
      let x_1657 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1655 | x_1657);
      let x_1659 : bool = u_xlatb51;
      let x_1660 : f32 = u_xlat50;
      u_xlat50 = select(x_1660, 1.0f, x_1659);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1663 : f32 = u_xlat50;
    u_xlat51 = (-(x_1663) + 1.0f);
    let x_1666 : f32 = u_xlat44;
    let x_1667 : f32 = u_xlat51;
    let x_1669 : f32 = u_xlat50;
    u_xlat50 = ((x_1666 * x_1667) + x_1669);
    let x_1671 : f32 = u_xlat48;
    let x_1672 : f32 = u_xlat50;
    u_xlat48 = (x_1671 * x_1672);
    let x_1674 : vec4<f32> = u_xlat1;
    let x_1676 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1679, 0.0f, 1.0f);
    let x_1681 : f32 = u_xlat48;
    let x_1682 : f32 = u_xlat50;
    u_xlat48 = (x_1681 * x_1682);
    let x_1684 : f32 = u_xlat48;
    let x_1686 : i32 = u_xlati5;
    let x_1688 : vec4<f32> = x_1399.x_AdditionalLightsColor[x_1686];
    let x_1690 : vec3<f32> = (vec3<f32>(x_1684, x_1684, x_1684) * vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
    let x_1691 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
    let x_1693 : vec4<f32> = u_xlat8;
    let x_1695 : f32 = u_xlat49;
    let x_1698 : vec4<f32> = u_xlat6;
    let x_1700 : vec3<f32> = ((vec3<f32>(x_1693.x, x_1693.y, x_1693.z) * vec3<f32>(x_1695, x_1695, x_1695)) + vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
    let x_1701 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
    let x_1703 : vec4<f32> = u_xlat8;
    let x_1705 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1703.x, x_1703.y, x_1703.z), vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
    let x_1710 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1710, 1.17549435e-38f);
    let x_1714 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1714);
    let x_1717 : vec4<f32> = u_xlat5;
    let x_1719 : vec4<f32> = u_xlat8;
    let x_1721 : vec3<f32> = (vec3<f32>(x_1717.x, x_1717.x, x_1717.x) * vec3<f32>(x_1719.x, x_1719.y, x_1719.z));
    let x_1722 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
    let x_1724 : vec4<f32> = u_xlat1;
    let x_1726 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1724.x, x_1724.y, x_1724.z), vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1731 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1731, 0.0f, 1.0f);
    let x_1734 : vec4<f32> = u_xlat9;
    let x_1736 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1734.x, x_1734.y, x_1734.z), vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
    let x_1739 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1739, 0.0f, 1.0f);
    let x_1742 : f32 = u_xlat5.x;
    let x_1744 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1742 * x_1744);
    let x_1748 : f32 = u_xlat5.x;
    let x_1750 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_1748 * x_1750) + 1.00001001358032226562f);
    let x_1754 : f32 = u_xlat48;
    let x_1755 : f32 = u_xlat48;
    u_xlat48 = (x_1754 * x_1755);
    let x_1758 : f32 = u_xlat5.x;
    let x_1760 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1758 * x_1760);
    let x_1763 : f32 = u_xlat48;
    u_xlat48 = max(x_1763, 0.10000000149011611938f);
    let x_1766 : f32 = u_xlat5.x;
    let x_1767 : f32 = u_xlat48;
    u_xlat5.x = (x_1766 * x_1767);
    let x_1770 : f32 = u_xlat45;
    let x_1772 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1770 * x_1772);
    let x_1775 : f32 = u_xlat43;
    let x_1777 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1775 / x_1777);
    let x_1780 : vec4<f32> = u_xlat4;
    let x_1782 : vec4<f32> = u_xlat5;
    let x_1785 : vec4<f32> = u_xlat3;
    let x_1787 : vec3<f32> = ((vec3<f32>(x_1780.x, x_1780.y, x_1780.z) * vec3<f32>(x_1782.x, x_1782.x, x_1782.x)) + vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
    let x_1788 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
    let x_1790 : vec4<f32> = u_xlat8;
    let x_1792 : vec4<f32> = u_xlat10;
    let x_1795 : vec4<f32> = u_xlat7;
    let x_1797 : vec3<f32> = ((vec3<f32>(x_1790.x, x_1790.y, x_1790.z) * vec3<f32>(x_1792.x, x_1792.y, x_1792.z)) + vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
    let x_1798 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1798.w);

    continuing {
      let x_1800 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1800 + bitcast<u32>(1i));
    }
  }
  let x_1802 : vec4<f32> = u_xlat2;
  let x_1804 : f32 = u_xlat14;
  let x_1807 : vec3<f32> = u_xlat19;
  u_xlat0 = ((vec3<f32>(x_1802.x, x_1802.y, x_1802.z) * vec3<f32>(x_1804, x_1804, x_1804)) + x_1807);
  let x_1809 : vec4<f32> = u_xlat7;
  let x_1811 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1809.x, x_1809.y, x_1809.z) + x_1811);
  let x_1815 : f32 = u_xlat42;
  let x_1817 : vec3<f32> = u_xlat0;
  let x_1818 : vec3<f32> = (vec3<f32>(x_1815, x_1815, x_1815) * x_1817);
  let x_1819 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
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


