diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat26 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb75 : bool;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat75 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb51 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat51 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu76 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2466 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_2094 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2598 : f32;
  var x_2608 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb25 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat25;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb25 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat50 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb25;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat50;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat25 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat26.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat26.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat50;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat50 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat50;
  u_xlatb75 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat50;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat50;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat26.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat50;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat50 = x_207;
  let x_208 : bool = u_xlatb75;
  if (x_208) {
    let x_213 : f32 = u_xlat26.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat50;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat50 = x_216;
  let x_217 : f32 = u_xlat50;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat25;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat75 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat75;
  u_xlat75 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat75;
  u_xlat75 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat75;
  u_xlat75 = sqrt(x_319);
  let x_321 : f32 = u_xlat75;
  u_xlat75 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb51.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb51.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb51.x;
  u_xlat51.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb51.y;
  u_xlat51.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat51.y;
  let x_367 : f32 = u_xlat51.x;
  u_xlat51.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat51;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat26 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat26;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat75;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat75 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat75;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb75 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat76;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb75;
  if (x_476) {
    let x_481 : vec4<f32> = u_xlat3;
    x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  } else {
    let x_484 : vec4<f32> = u_xlat4;
    x_478 = vec3<f32>(x_484.x, x_484.y, x_484.z);
  }
  let x_486 : vec3<f32> = x_478;
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = vs_INTERP7;
  let x_500 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres0;
  let x_503 : vec3<f32> = (x_489 + -(vec3<f32>(x_500.x, x_500.y, x_500.z)));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : vec3<f32> = vs_INTERP7;
  let x_509 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres1;
  let x_512 : vec3<f32> = (x_507 + -(vec3<f32>(x_509.x, x_509.y, x_509.z)));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec3<f32> = vs_INTERP7;
  let x_518 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_523 : vec3<f32> = vs_INTERP7;
  let x_525 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_528 : vec3<f32> = (x_523 + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_531.x, x_531.y, x_531.z), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_537 : vec4<f32> = u_xlat5;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_543, x_544);
  let x_547 : vec4<f32> = u_xlat7;
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_556 : vec4<f32> = u_xlat4;
  let x_559 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_556 < x_559);
  let x_562 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_562);
  let x_566 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_578);
  let x_583 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_583);
  let x_587 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_587);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat5;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(x_592.y, x_592.z, x_592.w));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat4;
  let x_600 : vec3<f32> = max(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_600.x, x_600.y, x_600.z);
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_603, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_608 : f32 = u_xlat75;
  u_xlat75 = (-(x_608) + 4.0f);
  let x_613 : f32 = u_xlat75;
  u_xlatu75 = u32(x_613);
  let x_617 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_617) << bitcast<u32>(2i));
  let x_620 : vec3<f32> = vs_INTERP7;
  let x_622 : i32 = u_xlati75;
  let x_625 : i32 = u_xlati75;
  let x_629 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_622 + 1i) / 4i)][((x_625 + 1i) % 4i)];
  let x_631 : vec3<f32> = (vec3<f32>(x_620.y, x_620.y, x_620.y) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : i32 = u_xlati75;
  let x_636 : i32 = u_xlati75;
  let x_639 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_634 / 4i)][(x_636 % 4i)];
  let x_641 : vec3<f32> = vs_INTERP7;
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : i32 = u_xlati75;
  let x_652 : i32 = u_xlati75;
  let x_656 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_649 + 2i) / 4i)][((x_652 + 2i) % 4i)];
  let x_658 : vec3<f32> = vs_INTERP7;
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658.z, x_658.z, x_658.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat4;
  let x_668 : i32 = u_xlati75;
  let x_671 : i32 = u_xlati75;
  let x_675 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_668 + 3i) / 4i)][((x_671 + 3i) % 4i)];
  let x_677 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_681 : f32 = vs_INTERP7.y;
  let x_683 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat75 = (x_681 * x_683);
  let x_686 : f32 = x_29.unity_MatrixV[0i].z;
  let x_688 : f32 = vs_INTERP7.x;
  let x_690 : f32 = u_xlat75;
  u_xlat75 = ((x_686 * x_688) + x_690);
  let x_693 : f32 = x_29.unity_MatrixV[2i].z;
  let x_695 : f32 = vs_INTERP7.z;
  let x_697 : f32 = u_xlat75;
  u_xlat75 = ((x_693 * x_695) + x_697);
  let x_699 : f32 = u_xlat75;
  let x_701 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat75 = (x_699 + x_701);
  let x_703 : f32 = u_xlat75;
  let x_706 : f32 = x_29.x_ProjectionParams.y;
  u_xlat75 = (-(x_703) + -(x_706));
  let x_709 : f32 = u_xlat75;
  u_xlat75 = max(x_709, 0.0f);
  let x_711 : f32 = u_xlat75;
  let x_714 : f32 = x_29.unity_FogParams.x;
  u_xlat75 = (x_711 * x_714);
  let x_723 : vec2<f32> = vs_INTERP0;
  let x_725 : f32 = x_29.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_723, x_725);
  u_xlat5 = x_726;
  let x_731 : vec2<f32> = vs_INTERP0;
  let x_733 : f32 = x_29.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  u_xlat6 = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat5;
  u_xlat76 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat76;
  u_xlat76 = (x_748 + 0.5f);
  let x_751 : f32 = u_xlat76;
  let x_753 : vec3<f32> = u_xlat6;
  let x_754 : vec3<f32> = (vec3<f32>(x_751, x_751, x_751) * x_753);
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_758 : f32 = u_xlat5.w;
  u_xlat76 = max(x_758, 0.00009999999747378752f);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : f32 = u_xlat76;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) / vec3<f32>(x_763, x_763, x_763));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat76 = ((-(x_780) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_786 : f32 = u_xlat76;
  let x_789 : f32 = u_xlat2.y;
  u_xlat77 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat76;
  u_xlat6 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat76 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat76;
  let x_818 : f32 = u_xlat76;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat27 = (x_828 * x_830);
  let x_832 : f32 = u_xlat77;
  u_xlat77 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat77;
  u_xlat77 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat78 = ((x_838 * 4.0f) + 2.0f);
  let x_843 : f32 = u_xlat2.z;
  u_xlat52 = min(x_843, 1.0f);
  let x_848 : f32 = x_497.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_848);
  let x_850 : bool = u_xlatb79;
  if (x_850) {
    let x_854 : f32 = x_497.x_MainLightShadowParams.y;
    u_xlatb79 = (x_854 == 1.0f);
    let x_856 : bool = u_xlatb79;
    if (x_856) {
      let x_859 : vec4<f32> = u_xlat4;
      let x_862 : vec4<f32> = x_497.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y) + x_862);
      let x_865 : vec4<f32> = u_xlat7;
      let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
      let x_868 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_866.x, x_866.y, x_868);
      let x_881 : vec3<f32> = txVec0;
      let x_883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_881.xy, x_881.z);
      u_xlat8.x = x_883;
      let x_886 : vec4<f32> = u_xlat7;
      let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
      let x_889 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_887.x, x_887.y, x_889);
      let x_896 : vec3<f32> = txVec1;
      let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_896.xy, x_896.z);
      u_xlat8.y = x_898;
      let x_900 : vec4<f32> = u_xlat4;
      let x_903 : vec4<f32> = x_497.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) + x_903);
      let x_906 : vec4<f32> = u_xlat7;
      let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
      let x_909 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_907.x, x_907.y, x_909);
      let x_916 : vec3<f32> = txVec2;
      let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_916.xy, x_916.z);
      u_xlat8.z = x_918;
      let x_921 : vec4<f32> = u_xlat7;
      let x_922 : vec2<f32> = vec2<f32>(x_921.z, x_921.w);
      let x_924 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_922.x, x_922.y, x_924);
      let x_931 : vec3<f32> = txVec3;
      let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
      u_xlat8.w = x_933;
      let x_936 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_936, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_943 : f32 = x_497.x_MainLightShadowParams.y;
      u_xlatb80 = (x_943 == 2.0f);
      let x_945 : bool = u_xlatb80;
      if (x_945) {
        let x_948 : vec4<f32> = u_xlat4;
        let x_951 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_955 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(x_951.z, x_951.w)) + vec2<f32>(0.5f, 0.5f));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat7;
        let x_960 : vec2<f32> = floor(vec2<f32>(x_958.x, x_958.y));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_964 : vec4<f32> = u_xlat4;
        let x_967 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.z, x_967.w)) + -(vec2<f32>(x_970.x, x_970.y)));
        let x_974 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_974.x, x_974.x, x_974.y, x_974.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_979 : vec4<f32> = u_xlat8;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_979.x, x_979.x, x_979.z, x_979.z) * vec4<f32>(x_981.x, x_981.x, x_981.z, x_981.z));
        let x_984 : vec4<f32> = u_xlat9;
        let x_988 : vec2<f32> = (vec2<f32>(x_984.y, x_984.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_989.w);
        let x_991 : vec4<f32> = u_xlat9;
        let x_994 : vec2<f32> = u_xlat57;
        let x_996 : vec2<f32> = ((vec2<f32>(x_991.x, x_991.z) * vec2<f32>(0.5f, 0.5f)) + -(x_994));
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1000) + vec2<f32>(1.0f, 1.0f));
        let x_1005 : vec2<f32> = u_xlat57;
        let x_1007 : vec2<f32> = min(x_1005, vec2<f32>(0.0f, 0.0f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat10;
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1016 : vec2<f32> = u_xlat59;
        let x_1017 : vec2<f32> = ((-(vec2<f32>(x_1010.x, x_1010.y)) * vec2<f32>(x_1013.x, x_1013.y)) + x_1016);
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1020, vec2<f32>(0.0f, 0.0f));
        let x_1022 : vec2<f32> = u_xlat57;
        let x_1024 : vec2<f32> = u_xlat57;
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1022) * x_1024) + vec2<f32>(x_1026.y, x_1026.w));
        let x_1029 : vec4<f32> = u_xlat10;
        let x_1031 : vec2<f32> = (vec2<f32>(x_1029.x, x_1029.y) + vec2<f32>(1.0f, 1.0f));
        let x_1032 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1034 + vec2<f32>(1.0f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1041 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1042 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec2<f32> = u_xlat59;
        let x_1045 : vec2<f32> = (x_1044 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat10;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1054 : vec2<f32> = u_xlat57;
        let x_1055 : vec2<f32> = (x_1054 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1056 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1058.y, x_1058.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1062 : f32 = u_xlat10.x;
        u_xlat11.z = x_1062;
        let x_1065 : f32 = u_xlat57.x;
        u_xlat11.w = x_1065;
        let x_1068 : f32 = u_xlat12.x;
        u_xlat9.z = x_1068;
        let x_1071 : f32 = u_xlat8.x;
        u_xlat9.w = x_1071;
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1074.z, x_1074.w, x_1074.x, x_1074.z) + vec4<f32>(x_1076.z, x_1076.w, x_1076.x, x_1076.z));
        let x_1080 : f32 = u_xlat11.y;
        u_xlat10.z = x_1080;
        let x_1083 : f32 = u_xlat57.y;
        u_xlat10.w = x_1083;
        let x_1086 : f32 = u_xlat9.y;
        u_xlat12.z = x_1086;
        let x_1089 : f32 = u_xlat8.z;
        u_xlat12.w = x_1089;
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1093 : vec4<f32> = u_xlat12;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1091.z, x_1091.y, x_1091.w) + vec3<f32>(x_1093.z, x_1093.y, x_1093.w));
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1100 : vec4<f32> = u_xlat13;
        let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.z, x_1098.w) / vec3<f32>(x_1100.z, x_1100.w, x_1100.y));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1110 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat12;
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1117 : vec3<f32> = (vec3<f32>(x_1113.z, x_1113.y, x_1113.w) / vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat10;
        let x_1122 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1128 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1130 : vec3<f32> = (vec3<f32>(x_1125.y, x_1125.x, x_1125.z) * vec3<f32>(x_1128.x, x_1128.x, x_1128.x));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1136 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1138 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.y, x_1133.z) * vec3<f32>(x_1136.y, x_1136.y, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
        let x_1142 : f32 = u_xlat10.x;
        u_xlat9.w = x_1142;
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1147 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.y, x_1150.w, x_1150.x, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.z, x_1159.w));
        let x_1163 : f32 = u_xlat9.y;
        u_xlat10.w = x_1163;
        let x_1165 : vec4<f32> = u_xlat10;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.y, x_1165.z);
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1167.x, x_1166.x, x_1167.z, x_1166.y);
        let x_1169 : vec4<f32> = u_xlat7;
        let x_1172 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) * vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y)) + vec4<f32>(x_1184.w, x_1184.y, x_1184.w, x_1184.z));
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1190 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y) * vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y)) + vec4<f32>(x_1193.x, x_1193.w, x_1193.z, x_1193.w));
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1199 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1197.x, x_1197.x, x_1197.x, x_1197.y) * vec4<f32>(x_1199.z, x_1199.w, x_1199.y, x_1199.z));
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1205 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1203.y, x_1203.y, x_1203.z, x_1203.z) * x_1205);
        let x_1209 : f32 = u_xlat8.z;
        let x_1211 : f32 = u_xlat13.y;
        u_xlat80 = (x_1209 * x_1211);
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1225 : vec3<f32> = txVec4;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat81 = x_1227;
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec5;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat7.x = x_1241;
        let x_1244 : f32 = u_xlat7.x;
        let x_1246 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1244 * x_1246);
        let x_1250 : f32 = u_xlat14.x;
        let x_1251 : f32 = u_xlat81;
        let x_1254 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1250 * x_1251) + x_1254);
        let x_1257 : vec2<f32> = u_xlat57;
        let x_1259 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
        let x_1266 : vec3<f32> = txVec6;
        let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
        u_xlat7.x = x_1268;
        let x_1271 : f32 = u_xlat14.z;
        let x_1273 : f32 = u_xlat7.x;
        let x_1275 : f32 = u_xlat81;
        u_xlat81 = ((x_1271 * x_1273) + x_1275);
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
        let x_1281 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec7;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat7.x = x_1290;
        let x_1293 : f32 = u_xlat14.w;
        let x_1295 : f32 = u_xlat7.x;
        let x_1297 : f32 = u_xlat81;
        u_xlat81 = ((x_1293 * x_1295) + x_1297);
        let x_1300 : vec4<f32> = u_xlat12;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec8;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat7.x = x_1312;
        let x_1315 : f32 = u_xlat15.x;
        let x_1317 : f32 = u_xlat7.x;
        let x_1319 : f32 = u_xlat81;
        u_xlat81 = ((x_1315 * x_1317) + x_1319);
        let x_1322 : vec4<f32> = u_xlat12;
        let x_1323 : vec2<f32> = vec2<f32>(x_1322.z, x_1322.w);
        let x_1325 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec9;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1332.xy, x_1332.z);
        u_xlat7.x = x_1334;
        let x_1337 : f32 = u_xlat15.y;
        let x_1339 : f32 = u_xlat7.x;
        let x_1341 : f32 = u_xlat81;
        u_xlat81 = ((x_1337 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat10;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec10;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat7.x = x_1356;
        let x_1359 : f32 = u_xlat15.z;
        let x_1361 : f32 = u_xlat7.x;
        let x_1363 : f32 = u_xlat81;
        u_xlat81 = ((x_1359 * x_1361) + x_1363);
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec11;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat7.x = x_1378;
        let x_1381 : f32 = u_xlat15.w;
        let x_1383 : f32 = u_xlat7.x;
        let x_1385 : f32 = u_xlat81;
        u_xlat81 = ((x_1381 * x_1383) + x_1385);
        let x_1388 : vec4<f32> = u_xlat9;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.z, x_1388.w);
        let x_1391 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec12;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat7.x = x_1400;
        let x_1402 : f32 = u_xlat80;
        let x_1404 : f32 = u_xlat7.x;
        let x_1406 : f32 = u_xlat81;
        u_xlat79 = ((x_1402 * x_1404) + x_1406);
      } else {
        let x_1409 : vec4<f32> = u_xlat4;
        let x_1412 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1415 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.y) * vec2<f32>(x_1412.z, x_1412.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1415.x, x_1415.y, x_1416.z, x_1416.w);
        let x_1418 : vec4<f32> = u_xlat7;
        let x_1420 : vec2<f32> = floor(vec2<f32>(x_1418.x, x_1418.y));
        let x_1421 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
        let x_1423 : vec4<f32> = u_xlat4;
        let x_1426 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.z, x_1426.w)) + -(vec2<f32>(x_1429.x, x_1429.y)));
        let x_1433 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1433.x, x_1433.x, x_1433.y, x_1433.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1436.x, x_1436.x, x_1436.z, x_1436.z) * vec4<f32>(x_1438.x, x_1438.x, x_1438.z, x_1438.z));
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1441.y, x_1441.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1446.x, x_1445.x, x_1446.z, x_1445.y);
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1451 : vec2<f32> = u_xlat57;
        let x_1453 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1451));
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1453.x, x_1454.y, x_1453.y, x_1454.w);
        let x_1456 : vec2<f32> = u_xlat57;
        let x_1458 : vec2<f32> = (-(x_1456) + vec2<f32>(1.0f, 1.0f));
        let x_1459 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
        let x_1461 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1461, vec2<f32>(0.0f, 0.0f));
        let x_1463 : vec2<f32> = u_xlat59;
        let x_1465 : vec2<f32> = u_xlat59;
        let x_1467 : vec4<f32> = u_xlat9;
        let x_1469 : vec2<f32> = ((-(x_1463) * x_1465) + vec2<f32>(x_1467.x, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1469.x, x_1469.y, x_1470.z, x_1470.w);
        let x_1472 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1472, vec2<f32>(0.0f, 0.0f));
        let x_1475 : vec2<f32> = u_xlat59;
        let x_1477 : vec2<f32> = u_xlat59;
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1481 : vec2<f32> = ((-(x_1475) * x_1477) + vec2<f32>(x_1479.y, x_1479.w));
        let x_1482 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1481.x, x_1482.y, x_1481.y);
        let x_1484 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = (vec2<f32>(x_1484.x, x_1484.y) + vec2<f32>(2.0f, 2.0f));
        let x_1487 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
        let x_1489 : vec3<f32> = u_xlat33;
        let x_1491 : vec2<f32> = (vec2<f32>(x_1489.x, x_1489.z) + vec2<f32>(2.0f, 2.0f));
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1492.x, x_1491.x, x_1492.z, x_1491.y);
        let x_1495 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1495 * 0.08163200318813323975f);
        let x_1499 : vec4<f32> = u_xlat8;
        let x_1502 : vec3<f32> = (vec3<f32>(x_1499.z, x_1499.x, x_1499.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
        let x_1505 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = (vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1512 : f32 = u_xlat12.y;
        u_xlat11.x = x_1512;
        let x_1514 : vec2<f32> = u_xlat57;
        let x_1521 : vec2<f32> = ((vec2<f32>(x_1514.x, x_1514.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1522 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1522.x, x_1521.x, x_1522.z, x_1521.y);
        let x_1524 : vec2<f32> = u_xlat57;
        let x_1528 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1529 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1528.x, x_1529.y, x_1528.y, x_1529.w);
        let x_1532 : f32 = u_xlat8.x;
        u_xlat9.y = x_1532;
        let x_1535 : f32 = u_xlat10.y;
        u_xlat9.w = x_1535;
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1538 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1537 + x_1538);
        let x_1540 : vec2<f32> = u_xlat57;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1544 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1546 : vec2<f32> = u_xlat57;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1546.y, x_1546.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1549.x, x_1550.y, x_1549.y, x_1550.w);
        let x_1553 : f32 = u_xlat8.y;
        u_xlat10.y = x_1553;
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1555 + x_1556);
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1559 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1558 / x_1559);
        let x_1561 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1561 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1567 : vec4<f32> = u_xlat10;
        let x_1568 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1567 / x_1568);
        let x_1570 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1570 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1575 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1572.w, x_1572.x, x_1572.y, x_1572.z) * vec4<f32>(x_1575.x, x_1575.x, x_1575.x, x_1575.x));
        let x_1578 : vec4<f32> = u_xlat10;
        let x_1581 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1578.x, x_1578.w, x_1578.y, x_1578.z) * vec4<f32>(x_1581.y, x_1581.y, x_1581.y, x_1581.y));
        let x_1584 : vec4<f32> = u_xlat9;
        let x_1585 : vec3<f32> = vec3<f32>(x_1584.y, x_1584.z, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1585.x, x_1586.y, x_1585.y, x_1585.z);
        let x_1589 : f32 = u_xlat10.x;
        u_xlat12.y = x_1589;
        let x_1591 : vec4<f32> = u_xlat7;
        let x_1594 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.y) * vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.y)) + vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1597.y));
        let x_1600 : vec4<f32> = u_xlat7;
        let x_1603 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1603.x, x_1603.y)) + vec2<f32>(x_1606.w, x_1606.y));
        let x_1610 : f32 = u_xlat12.y;
        u_xlat9.y = x_1610;
        let x_1613 : f32 = u_xlat10.z;
        u_xlat12.y = x_1613;
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1618 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1621 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1615.x, x_1615.y, x_1615.x, x_1615.y) * vec4<f32>(x_1618.x, x_1618.y, x_1618.x, x_1618.y)) + vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat12;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1627.x, x_1627.y)) + vec2<f32>(x_1630.w, x_1630.y));
        let x_1633 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat12.y;
        u_xlat9.z = x_1636;
        let x_1639 : vec4<f32> = u_xlat7;
        let x_1642 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.y) * vec4<f32>(x_1642.x, x_1642.y, x_1642.x, x_1642.y)) + vec4<f32>(x_1645.x, x_1645.y, x_1645.x, x_1645.z));
        let x_1649 : f32 = u_xlat10.w;
        u_xlat12.y = x_1649;
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1655 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1658 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1652.x, x_1652.y, x_1652.x, x_1652.y) * vec4<f32>(x_1655.x, x_1655.y, x_1655.x, x_1655.y)) + vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1658.y));
        let x_1662 : vec4<f32> = u_xlat7;
        let x_1665 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1668 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(x_1665.x, x_1665.y)) + vec2<f32>(x_1668.w, x_1668.y));
        let x_1672 : f32 = u_xlat12.y;
        u_xlat9.w = x_1672;
        let x_1675 : vec4<f32> = u_xlat7;
        let x_1678 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1681 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1678.x, x_1678.y)) + vec2<f32>(x_1681.x, x_1681.w));
        let x_1684 : vec4<f32> = u_xlat12;
        let x_1685 : vec3<f32> = vec3<f32>(x_1684.x, x_1684.z, x_1684.w);
        let x_1686 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1685.x, x_1686.y, x_1685.y, x_1685.z);
        let x_1688 : vec4<f32> = u_xlat7;
        let x_1691 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1694 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1688.x, x_1688.y, x_1688.x, x_1688.y) * vec4<f32>(x_1691.x, x_1691.y, x_1691.x, x_1691.y)) + vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1694.y));
        let x_1698 : vec4<f32> = u_xlat7;
        let x_1701 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1704 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1704.w, x_1704.y));
        let x_1708 : f32 = u_xlat9.x;
        u_xlat10.x = x_1708;
        let x_1710 : vec4<f32> = u_xlat7;
        let x_1713 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat10;
        let x_1718 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1713.x, x_1713.y)) + vec2<f32>(x_1716.x, x_1716.y));
        let x_1719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
        let x_1722 : vec4<f32> = u_xlat8;
        let x_1724 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1722.x, x_1722.x, x_1722.x, x_1722.x) * x_1724);
        let x_1727 : vec4<f32> = u_xlat8;
        let x_1729 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1727.y, x_1727.y, x_1727.y, x_1727.y) * x_1729);
        let x_1732 : vec4<f32> = u_xlat8;
        let x_1734 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1732.z, x_1732.z, x_1732.z, x_1732.z) * x_1734);
        let x_1736 : vec4<f32> = u_xlat8;
        let x_1738 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1736.w, x_1736.w, x_1736.w, x_1736.w) * x_1738);
        let x_1741 : vec4<f32> = u_xlat13;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.x, x_1741.y);
        let x_1744 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec13;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat80 = x_1753;
        let x_1755 : vec4<f32> = u_xlat13;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.z, x_1755.w);
        let x_1758 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec14;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat81 = x_1767;
        let x_1768 : f32 = u_xlat81;
        let x_1770 : f32 = u_xlat18.y;
        u_xlat81 = (x_1768 * x_1770);
        let x_1773 : f32 = u_xlat18.x;
        let x_1774 : f32 = u_xlat80;
        let x_1776 : f32 = u_xlat81;
        u_xlat80 = ((x_1773 * x_1774) + x_1776);
        let x_1779 : vec2<f32> = u_xlat57;
        let x_1781 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec15;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
        u_xlat81 = x_1790;
        let x_1792 : f32 = u_xlat18.z;
        let x_1793 : f32 = u_xlat81;
        let x_1795 : f32 = u_xlat80;
        u_xlat80 = ((x_1792 * x_1793) + x_1795);
        let x_1798 : vec4<f32> = u_xlat16;
        let x_1799 : vec2<f32> = vec2<f32>(x_1798.x, x_1798.y);
        let x_1801 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
        let x_1808 : vec3<f32> = txVec16;
        let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1808.xy, x_1808.z);
        u_xlat81 = x_1810;
        let x_1812 : f32 = u_xlat18.w;
        let x_1813 : f32 = u_xlat81;
        let x_1815 : f32 = u_xlat80;
        u_xlat80 = ((x_1812 * x_1813) + x_1815);
        let x_1818 : vec4<f32> = u_xlat14;
        let x_1819 : vec2<f32> = vec2<f32>(x_1818.x, x_1818.y);
        let x_1821 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
        let x_1828 : vec3<f32> = txVec17;
        let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1828.xy, x_1828.z);
        u_xlat81 = x_1830;
        let x_1832 : f32 = u_xlat19.x;
        let x_1833 : f32 = u_xlat81;
        let x_1835 : f32 = u_xlat80;
        u_xlat80 = ((x_1832 * x_1833) + x_1835);
        let x_1838 : vec4<f32> = u_xlat14;
        let x_1839 : vec2<f32> = vec2<f32>(x_1838.z, x_1838.w);
        let x_1841 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1839.x, x_1839.y, x_1841);
        let x_1848 : vec3<f32> = txVec18;
        let x_1850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1848.xy, x_1848.z);
        u_xlat81 = x_1850;
        let x_1852 : f32 = u_xlat19.y;
        let x_1853 : f32 = u_xlat81;
        let x_1855 : f32 = u_xlat80;
        u_xlat80 = ((x_1852 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat15;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec19;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat81 = x_1870;
        let x_1872 : f32 = u_xlat19.z;
        let x_1873 : f32 = u_xlat81;
        let x_1875 : f32 = u_xlat80;
        u_xlat80 = ((x_1872 * x_1873) + x_1875);
        let x_1878 : vec4<f32> = u_xlat16;
        let x_1879 : vec2<f32> = vec2<f32>(x_1878.z, x_1878.w);
        let x_1881 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec20;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1888.xy, x_1888.z);
        u_xlat81 = x_1890;
        let x_1892 : f32 = u_xlat19.w;
        let x_1893 : f32 = u_xlat81;
        let x_1895 : f32 = u_xlat80;
        u_xlat80 = ((x_1892 * x_1893) + x_1895);
        let x_1898 : vec4<f32> = u_xlat17;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.x, x_1898.y);
        let x_1901 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1908 : vec3<f32> = txVec21;
        let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
        u_xlat81 = x_1910;
        let x_1912 : f32 = u_xlat20.x;
        let x_1913 : f32 = u_xlat81;
        let x_1915 : f32 = u_xlat80;
        u_xlat80 = ((x_1912 * x_1913) + x_1915);
        let x_1918 : vec4<f32> = u_xlat17;
        let x_1919 : vec2<f32> = vec2<f32>(x_1918.z, x_1918.w);
        let x_1921 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec22;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat81 = x_1930;
        let x_1932 : f32 = u_xlat20.y;
        let x_1933 : f32 = u_xlat81;
        let x_1935 : f32 = u_xlat80;
        u_xlat80 = ((x_1932 * x_1933) + x_1935);
        let x_1938 : vec2<f32> = u_xlat34;
        let x_1940 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec23;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
        u_xlat81 = x_1949;
        let x_1951 : f32 = u_xlat20.z;
        let x_1952 : f32 = u_xlat81;
        let x_1954 : f32 = u_xlat80;
        u_xlat80 = ((x_1951 * x_1952) + x_1954);
        let x_1957 : vec2<f32> = u_xlat65;
        let x_1959 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec24;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1966.xy, x_1966.z);
        u_xlat81 = x_1968;
        let x_1970 : f32 = u_xlat20.w;
        let x_1971 : f32 = u_xlat81;
        let x_1973 : f32 = u_xlat80;
        u_xlat80 = ((x_1970 * x_1971) + x_1973);
        let x_1976 : vec4<f32> = u_xlat12;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.x, x_1976.y);
        let x_1979 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec25;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1986.xy, x_1986.z);
        u_xlat81 = x_1988;
        let x_1990 : f32 = u_xlat8.x;
        let x_1991 : f32 = u_xlat81;
        let x_1993 : f32 = u_xlat80;
        u_xlat80 = ((x_1990 * x_1991) + x_1993);
        let x_1996 : vec4<f32> = u_xlat12;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.z, x_1996.w);
        let x_1999 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec26;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat81 = x_2008;
        let x_2010 : f32 = u_xlat8.y;
        let x_2011 : f32 = u_xlat81;
        let x_2013 : f32 = u_xlat80;
        u_xlat80 = ((x_2010 * x_2011) + x_2013);
        let x_2016 : vec2<f32> = u_xlat60;
        let x_2018 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2016.x, x_2016.y, x_2018);
        let x_2025 : vec3<f32> = txVec27;
        let x_2027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2025.xy, x_2025.z);
        u_xlat81 = x_2027;
        let x_2029 : f32 = u_xlat8.z;
        let x_2030 : f32 = u_xlat81;
        let x_2032 : f32 = u_xlat80;
        u_xlat80 = ((x_2029 * x_2030) + x_2032);
        let x_2035 : vec4<f32> = u_xlat7;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.x, x_2035.y);
        let x_2038 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec28;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
        u_xlat81 = x_2047;
        let x_2049 : f32 = u_xlat8.w;
        let x_2050 : f32 = u_xlat81;
        let x_2052 : f32 = u_xlat80;
        u_xlat79 = ((x_2049 * x_2050) + x_2052);
      }
    }
  } else {
    let x_2056 : vec4<f32> = u_xlat4;
    let x_2057 : vec2<f32> = vec2<f32>(x_2056.x, x_2056.y);
    let x_2059 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
    let x_2066 : vec3<f32> = txVec29;
    let x_2068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
    u_xlat79 = x_2068;
  }
  let x_2070 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2070) + 1.0f);
  let x_2074 : f32 = u_xlat79;
  let x_2076 : f32 = x_497.x_MainLightShadowParams.x;
  let x_2079 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2074 * x_2076) + x_2079);
  let x_2084 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_2084);
  let x_2088 : f32 = u_xlat4.z;
  u_xlatb54 = (x_2088 >= 1.0f);
  let x_2090 : bool = u_xlatb54;
  let x_2091 : bool = u_xlatb29;
  u_xlatb29 = (x_2090 | x_2091);
  let x_2093 : bool = u_xlatb29;
  if (x_2093) {
    x_2094 = 1.0f;
  } else {
    let x_2099 : f32 = u_xlat4.x;
    x_2094 = x_2099;
  }
  let x_2100 : f32 = x_2094;
  u_xlat4.x = x_2100;
  let x_2103 : vec3<f32> = vs_INTERP7;
  let x_2105 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat29 = (x_2103 + -(x_2105));
  let x_2108 : vec3<f32> = u_xlat29;
  let x_2109 : vec3<f32> = u_xlat29;
  u_xlat29.x = dot(x_2108, x_2109);
  let x_2114 : f32 = u_xlat29.x;
  let x_2116 : f32 = x_497.x_MainLightShadowParams.z;
  let x_2119 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2114 * x_2116) + x_2119);
  let x_2121 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2121, 0.0f, 1.0f);
  let x_2124 : f32 = u_xlat4.x;
  u_xlat79 = (-(x_2124) + 1.0f);
  let x_2127 : f32 = u_xlat54;
  let x_2128 : f32 = u_xlat79;
  let x_2131 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2127 * x_2128) + x_2131);
  let x_2134 : vec4<f32> = u_xlat3;
  let x_2137 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2134.x, x_2134.y, x_2134.z)), vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
  let x_2140 : f32 = u_xlat54;
  let x_2141 : f32 = u_xlat54;
  u_xlat54 = (x_2140 + x_2141);
  let x_2143 : vec4<f32> = u_xlat1;
  let x_2145 : f32 = u_xlat54;
  let x_2149 : vec4<f32> = u_xlat3;
  let x_2152 : vec3<f32> = ((vec3<f32>(x_2143.x, x_2143.y, x_2143.z) * -(vec3<f32>(x_2145, x_2145, x_2145))) + -(vec3<f32>(x_2149.x, x_2149.y, x_2149.z)));
  let x_2153 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
  let x_2155 : vec4<f32> = u_xlat1;
  let x_2157 : vec4<f32> = u_xlat3;
  u_xlat54 = dot(vec3<f32>(x_2155.x, x_2155.y, x_2155.z), vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
  let x_2160 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2160, 0.0f, 1.0f);
  let x_2162 : f32 = u_xlat54;
  u_xlat54 = (-(x_2162) + 1.0f);
  let x_2165 : f32 = u_xlat54;
  let x_2166 : f32 = u_xlat54;
  u_xlat54 = (x_2165 * x_2166);
  let x_2168 : f32 = u_xlat54;
  let x_2169 : f32 = u_xlat54;
  u_xlat54 = (x_2168 * x_2169);
  let x_2171 : f32 = u_xlat76;
  u_xlat79 = ((-(x_2171) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2177 : f32 = u_xlat76;
  let x_2178 : f32 = u_xlat79;
  u_xlat76 = (x_2177 * x_2178);
  let x_2180 : f32 = u_xlat76;
  u_xlat76 = (x_2180 * 6.0f);
  let x_2190 : vec4<f32> = u_xlat7;
  let x_2192 : f32 = u_xlat76;
  let x_2193 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2190.x, x_2190.y, x_2190.z), x_2192);
  u_xlat7 = x_2193;
  let x_2195 : f32 = u_xlat7.w;
  u_xlat76 = (x_2195 + -1.0f);
  let x_2198 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2199 : f32 = u_xlat76;
  u_xlat76 = ((x_2198 * x_2199) + 1.0f);
  let x_2202 : f32 = u_xlat76;
  u_xlat76 = max(x_2202, 0.0f);
  let x_2204 : f32 = u_xlat76;
  u_xlat76 = log2(x_2204);
  let x_2206 : f32 = u_xlat76;
  let x_2208 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2206 * x_2208);
  let x_2210 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2210);
  let x_2212 : f32 = u_xlat76;
  let x_2214 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2212 * x_2214);
  let x_2216 : vec4<f32> = u_xlat7;
  let x_2218 : f32 = u_xlat76;
  let x_2220 : vec3<f32> = (vec3<f32>(x_2216.x, x_2216.y, x_2216.z) * vec3<f32>(x_2218, x_2218, x_2218));
  let x_2221 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
  let x_2223 : vec4<f32> = u_xlat2;
  let x_2225 : vec4<f32> = u_xlat2;
  let x_2229 : vec2<f32> = ((vec2<f32>(x_2223.x, x_2223.x) * vec2<f32>(x_2225.x, x_2225.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2230 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2229.x, x_2229.y, x_2230.z, x_2230.w);
  let x_2233 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2233);
  let x_2235 : vec4<f32> = u_xlat0;
  let x_2238 : f32 = u_xlat77;
  u_xlat33 = (-(vec3<f32>(x_2235.x, x_2235.y, x_2235.z)) + vec3<f32>(x_2238, x_2238, x_2238));
  let x_2241 : f32 = u_xlat54;
  let x_2243 : vec3<f32> = u_xlat33;
  let x_2245 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_2241, x_2241, x_2241) * x_2243) + vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2248 : f32 = u_xlat76;
  let x_2250 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2248, x_2248, x_2248) * x_2250);
  let x_2252 : vec4<f32> = u_xlat7;
  let x_2254 : vec3<f32> = u_xlat33;
  let x_2255 : vec3<f32> = (vec3<f32>(x_2252.x, x_2252.y, x_2252.z) * x_2254);
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : vec4<f32> = u_xlat5;
  let x_2260 : vec3<f32> = u_xlat6;
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec3<f32> = ((vec3<f32>(x_2258.x, x_2258.y, x_2258.z) * x_2260) + vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2265 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
  let x_2268 : f32 = u_xlat4.x;
  let x_2270 : f32 = x_349.unity_LightData.z;
  u_xlat76 = (x_2268 * x_2270);
  let x_2272 : vec4<f32> = u_xlat1;
  let x_2275 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2280 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2280, 0.0f, 1.0f);
  let x_2283 : f32 = u_xlat76;
  let x_2285 : f32 = u_xlat2.x;
  u_xlat76 = (x_2283 * x_2285);
  let x_2287 : f32 = u_xlat76;
  let x_2290 : vec4<f32> = x_29.x_MainLightColor;
  let x_2292 : vec3<f32> = (vec3<f32>(x_2287, x_2287, x_2287) * vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
  let x_2293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2292.x, x_2293.y, x_2292.y, x_2292.z);
  let x_2295 : vec4<f32> = u_xlat3;
  let x_2298 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2300 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec4<f32> = u_xlat7;
  let x_2305 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2303.x, x_2303.y, x_2303.z), vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : f32 = u_xlat76;
  u_xlat76 = max(x_2308, 1.17549435e-38f);
  let x_2311 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_2311);
  let x_2313 : f32 = u_xlat76;
  let x_2315 : vec4<f32> = u_xlat7;
  let x_2317 : vec3<f32> = (vec3<f32>(x_2313, x_2313, x_2313) * vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : vec4<f32> = u_xlat1;
  let x_2322 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2325, 0.0f, 1.0f);
  let x_2328 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2330 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2328.x, x_2328.y, x_2328.z), vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
  let x_2335 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2335, 0.0f, 1.0f);
  let x_2338 : f32 = u_xlat76;
  let x_2339 : f32 = u_xlat76;
  u_xlat76 = (x_2338 * x_2339);
  let x_2341 : f32 = u_xlat76;
  let x_2343 : f32 = u_xlat8.x;
  u_xlat76 = ((x_2341 * x_2343) + 1.00001001358032226562f);
  let x_2348 : f32 = u_xlat2.x;
  let x_2350 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2348 * x_2350);
  let x_2353 : f32 = u_xlat76;
  let x_2354 : f32 = u_xlat76;
  u_xlat76 = (x_2353 * x_2354);
  let x_2357 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2357, 0.10000000149011611938f);
  let x_2361 : f32 = u_xlat76;
  let x_2363 : f32 = u_xlat2.x;
  u_xlat76 = (x_2361 * x_2363);
  let x_2365 : f32 = u_xlat78;
  let x_2366 : f32 = u_xlat76;
  u_xlat76 = (x_2365 * x_2366);
  let x_2368 : f32 = u_xlat27;
  let x_2369 : f32 = u_xlat76;
  u_xlat76 = (x_2368 / x_2369);
  let x_2371 : vec4<f32> = u_xlat0;
  let x_2373 : f32 = u_xlat76;
  let x_2376 : vec3<f32> = u_xlat6;
  let x_2377 : vec3<f32> = ((vec3<f32>(x_2371.x, x_2371.y, x_2371.z) * vec3<f32>(x_2373, x_2373, x_2373)) + x_2376);
  let x_2378 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2380 : vec4<f32> = u_xlat4;
  let x_2382 : vec4<f32> = u_xlat7;
  let x_2384 : vec3<f32> = (vec3<f32>(x_2380.x, x_2380.z, x_2380.w) * vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2384.x, x_2385.y, x_2384.y, x_2384.z);
  let x_2388 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2390 : f32 = x_349.unity_LightData.y;
  u_xlat76 = min(x_2388, x_2390);
  let x_2393 : f32 = u_xlat76;
  u_xlatu76 = bitcast<u32>(i32(x_2393));
  let x_2397 : f32 = u_xlat29.x;
  let x_2400 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_2403 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2397 * x_2400) + x_2403);
  let x_2407 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2407, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2420 : u32 = u_xlatu_loop_1;
    let x_2421 : u32 = u_xlatu76;
    if ((x_2420 < x_2421)) {
    } else {
      break;
    }
    let x_2424 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_2424 >> 2u);
    let x_2427 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2427 & 3u));
    let x_2430 : u32 = u_xlatu29;
    let x_2433 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2430)];
    let x_2443 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2448 : vec4<u32> = indexable[x_2443];
    u_xlat29.x = dot(x_2433, bitcast<vec4<f32>>(x_2448));
    let x_2454 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_2454);
    let x_2456 : vec3<f32> = vs_INTERP7;
    let x_2467 : i32 = u_xlati29;
    let x_2469 : vec4<f32> = x_2466.x_AdditionalLightsPosition[x_2467];
    let x_2472 : i32 = u_xlati29;
    let x_2474 : vec4<f32> = x_2466.x_AdditionalLightsPosition[x_2472];
    u_xlat33 = ((-(x_2456) * vec3<f32>(x_2469.w, x_2469.w, x_2469.w)) + vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
    let x_2477 : vec3<f32> = u_xlat33;
    let x_2478 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2477, x_2478);
    let x_2480 : f32 = u_xlat80;
    u_xlat80 = max(x_2480, 0.00006103515625f);
    let x_2483 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2483);
    let x_2485 : f32 = u_xlat81;
    let x_2487 : vec3<f32> = u_xlat33;
    let x_2488 : vec3<f32> = (vec3<f32>(x_2485, x_2485, x_2485) * x_2487);
    let x_2489 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
    let x_2492 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2492);
    let x_2494 : f32 = u_xlat80;
    let x_2495 : i32 = u_xlati29;
    let x_2497 : f32 = x_2466.x_AdditionalLightsAttenuation[x_2495].x;
    u_xlat80 = (x_2494 * x_2497);
    let x_2499 : f32 = u_xlat80;
    let x_2501 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2499) * x_2501) + 1.0f);
    let x_2504 : f32 = u_xlat80;
    u_xlat80 = max(x_2504, 0.0f);
    let x_2506 : f32 = u_xlat80;
    let x_2507 : f32 = u_xlat80;
    u_xlat80 = (x_2506 * x_2507);
    let x_2509 : f32 = u_xlat80;
    let x_2510 : f32 = u_xlat82;
    u_xlat80 = (x_2509 * x_2510);
    let x_2512 : i32 = u_xlati29;
    let x_2514 : vec4<f32> = x_2466.x_AdditionalLightsSpotDir[x_2512];
    let x_2516 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2514.x, x_2514.y, x_2514.z), vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
    let x_2519 : f32 = u_xlat82;
    let x_2520 : i32 = u_xlati29;
    let x_2522 : f32 = x_2466.x_AdditionalLightsAttenuation[x_2520].z;
    let x_2524 : i32 = u_xlati29;
    let x_2526 : f32 = x_2466.x_AdditionalLightsAttenuation[x_2524].w;
    u_xlat82 = ((x_2519 * x_2522) + x_2526);
    let x_2528 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2528, 0.0f, 1.0f);
    let x_2530 : f32 = u_xlat82;
    let x_2531 : f32 = u_xlat82;
    u_xlat82 = (x_2530 * x_2531);
    let x_2533 : f32 = u_xlat80;
    let x_2534 : f32 = u_xlat82;
    u_xlat80 = (x_2533 * x_2534);
    let x_2538 : i32 = u_xlati29;
    let x_2540 : f32 = x_497.x_AdditionalShadowParams[x_2538].w;
    u_xlati82 = i32(x_2540);
    let x_2543 : i32 = u_xlati82;
    u_xlatb84 = (x_2543 >= 0i);
    let x_2545 : bool = u_xlatb84;
    if (x_2545) {
      let x_2549 : i32 = u_xlati29;
      let x_2551 : f32 = x_497.x_AdditionalShadowParams[x_2549].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2551, x_2551, x_2551, x_2551))));
      let x_2555 : bool = u_xlatb84;
      if (x_2555) {
        let x_2559 : vec4<f32> = u_xlat9;
        let x_2562 : vec4<f32> = u_xlat9;
        let x_2565 : vec4<bool> = (abs(vec4<f32>(x_2559.z, x_2559.z, x_2559.y, x_2559.z)) >= abs(vec4<f32>(x_2562.x, x_2562.y, x_2562.x, x_2562.x)));
        let x_2567 : vec3<bool> = vec3<bool>(x_2565.x, x_2565.y, x_2565.z);
        let x_2568 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
        let x_2571 : bool = u_xlatb10.y;
        let x_2573 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2571 & x_2573);
        let x_2575 : vec4<f32> = u_xlat9;
        let x_2578 : vec4<bool> = (-(vec4<f32>(x_2575.z, x_2575.y, x_2575.z, x_2575.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2579 : vec3<bool> = vec3<bool>(x_2578.x, x_2578.y, x_2578.w);
        let x_2580 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2579.x, x_2579.y, x_2580.z, x_2579.z);
        let x_2583 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2583);
        let x_2588 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2588);
        let x_2593 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2593);
        let x_2597 : bool = u_xlatb10.z;
        if (x_2597) {
          let x_2602 : f32 = u_xlat10.y;
          x_2598 = x_2602;
        } else {
          let x_2604 : f32 = u_xlat85;
          x_2598 = x_2604;
        }
        let x_2605 : f32 = x_2598;
        u_xlat35 = x_2605;
        let x_2607 : bool = u_xlatb84;
        if (x_2607) {
          let x_2612 : f32 = u_xlat10.x;
          x_2608 = x_2612;
        } else {
          let x_2614 : f32 = u_xlat35;
          x_2608 = x_2614;
        }
        let x_2615 : f32 = x_2608;
        u_xlat84 = x_2615;
        let x_2616 : i32 = u_xlati29;
        let x_2618 : f32 = x_497.x_AdditionalShadowParams[x_2616].w;
        u_xlat10.x = trunc(x_2618);
        let x_2621 : f32 = u_xlat84;
        let x_2623 : f32 = u_xlat10.x;
        u_xlat84 = (x_2621 + x_2623);
        let x_2625 : f32 = u_xlat84;
        u_xlati82 = i32(x_2625);
      }
      let x_2627 : i32 = u_xlati82;
      u_xlati82 = (x_2627 << bitcast<u32>(2i));
      let x_2629 : vec3<f32> = vs_INTERP7;
      let x_2632 : i32 = u_xlati82;
      let x_2635 : i32 = u_xlati82;
      let x_2639 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2632 + 1i) / 4i)][((x_2635 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2629.y, x_2629.y, x_2629.y, x_2629.y) * x_2639);
      let x_2641 : i32 = u_xlati82;
      let x_2643 : i32 = u_xlati82;
      let x_2646 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_2641 / 4i)][(x_2643 % 4i)];
      let x_2647 : vec3<f32> = vs_INTERP7;
      let x_2650 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2646 * vec4<f32>(x_2647.x, x_2647.x, x_2647.x, x_2647.x)) + x_2650);
      let x_2652 : i32 = u_xlati82;
      let x_2655 : i32 = u_xlati82;
      let x_2659 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2652 + 2i) / 4i)][((x_2655 + 2i) % 4i)];
      let x_2660 : vec3<f32> = vs_INTERP7;
      let x_2663 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2659 * vec4<f32>(x_2660.z, x_2660.z, x_2660.z, x_2660.z)) + x_2663);
      let x_2665 : vec4<f32> = u_xlat10;
      let x_2666 : i32 = u_xlati82;
      let x_2669 : i32 = u_xlati82;
      let x_2673 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2666 + 3i) / 4i)][((x_2669 + 3i) % 4i)];
      u_xlat10 = (x_2665 + x_2673);
      let x_2675 : vec4<f32> = u_xlat10;
      let x_2677 : vec4<f32> = u_xlat10;
      let x_2679 : vec3<f32> = (vec3<f32>(x_2675.x, x_2675.y, x_2675.z) / vec3<f32>(x_2677.w, x_2677.w, x_2677.w));
      let x_2680 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2679.x, x_2679.y, x_2679.z, x_2680.w);
      let x_2683 : i32 = u_xlati29;
      let x_2685 : f32 = x_497.x_AdditionalShadowParams[x_2683].y;
      u_xlatb82 = (0.0f < x_2685);
      let x_2687 : bool = u_xlatb82;
      if (x_2687) {
        let x_2690 : i32 = u_xlati29;
        let x_2692 : f32 = x_497.x_AdditionalShadowParams[x_2690].y;
        u_xlatb82 = (1.0f == x_2692);
        let x_2694 : bool = u_xlatb82;
        if (x_2694) {
          let x_2697 : vec4<f32> = u_xlat10;
          let x_2701 : vec4<f32> = x_497.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2697.x, x_2697.y, x_2697.x, x_2697.y) + x_2701);
          let x_2704 : vec4<f32> = u_xlat11;
          let x_2705 : vec2<f32> = vec2<f32>(x_2704.x, x_2704.y);
          let x_2707 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
          let x_2715 : vec3<f32> = txVec30;
          let x_2717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
          u_xlat12.x = x_2717;
          let x_2720 : vec4<f32> = u_xlat11;
          let x_2721 : vec2<f32> = vec2<f32>(x_2720.z, x_2720.w);
          let x_2723 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
          let x_2730 : vec3<f32> = txVec31;
          let x_2732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
          u_xlat12.y = x_2732;
          let x_2734 : vec4<f32> = u_xlat10;
          let x_2738 : vec4<f32> = x_497.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y) + x_2738);
          let x_2741 : vec4<f32> = u_xlat11;
          let x_2742 : vec2<f32> = vec2<f32>(x_2741.x, x_2741.y);
          let x_2744 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2742.x, x_2742.y, x_2744);
          let x_2751 : vec3<f32> = txVec32;
          let x_2753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2751.xy, x_2751.z);
          u_xlat12.z = x_2753;
          let x_2756 : vec4<f32> = u_xlat11;
          let x_2757 : vec2<f32> = vec2<f32>(x_2756.z, x_2756.w);
          let x_2759 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
          let x_2766 : vec3<f32> = txVec33;
          let x_2768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
          u_xlat12.w = x_2768;
          let x_2770 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2770, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2773 : i32 = u_xlati29;
          let x_2775 : f32 = x_497.x_AdditionalShadowParams[x_2773].y;
          u_xlatb84 = (2.0f == x_2775);
          let x_2777 : bool = u_xlatb84;
          if (x_2777) {
            let x_2780 : vec4<f32> = u_xlat10;
            let x_2784 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2787 : vec2<f32> = ((vec2<f32>(x_2780.x, x_2780.y) * vec2<f32>(x_2784.z, x_2784.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2788 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2790 : vec4<f32> = u_xlat11;
            let x_2792 : vec2<f32> = floor(vec2<f32>(x_2790.x, x_2790.y));
            let x_2793 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2792.x, x_2792.y, x_2793.z, x_2793.w);
            let x_2796 : vec4<f32> = u_xlat10;
            let x_2799 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2802 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2796.x, x_2796.y) * vec2<f32>(x_2799.z, x_2799.w)) + -(vec2<f32>(x_2802.x, x_2802.y)));
            let x_2806 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2806.x, x_2806.x, x_2806.y, x_2806.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2809 : vec4<f32> = u_xlat12;
            let x_2811 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2809.x, x_2809.x, x_2809.z, x_2809.z) * vec4<f32>(x_2811.x, x_2811.x, x_2811.z, x_2811.z));
            let x_2814 : vec4<f32> = u_xlat13;
            let x_2816 : vec2<f32> = (vec2<f32>(x_2814.y, x_2814.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2817 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2816.x, x_2817.y, x_2816.y, x_2817.w);
            let x_2819 : vec4<f32> = u_xlat13;
            let x_2822 : vec2<f32> = u_xlat61;
            let x_2824 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2822));
            let x_2825 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2824.x, x_2824.y, x_2825.z, x_2825.w);
            let x_2828 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2828) + vec2<f32>(1.0f, 1.0f));
            let x_2831 : vec2<f32> = u_xlat61;
            let x_2832 : vec2<f32> = min(x_2831, vec2<f32>(0.0f, 0.0f));
            let x_2833 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2832.x, x_2832.y, x_2833.z, x_2833.w);
            let x_2835 : vec4<f32> = u_xlat14;
            let x_2838 : vec4<f32> = u_xlat14;
            let x_2841 : vec2<f32> = u_xlat63;
            let x_2842 : vec2<f32> = ((-(vec2<f32>(x_2835.x, x_2835.y)) * vec2<f32>(x_2838.x, x_2838.y)) + x_2841);
            let x_2843 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
            let x_2845 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2845, vec2<f32>(0.0f, 0.0f));
            let x_2847 : vec2<f32> = u_xlat61;
            let x_2849 : vec2<f32> = u_xlat61;
            let x_2851 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2847) * x_2849) + vec2<f32>(x_2851.y, x_2851.w));
            let x_2854 : vec4<f32> = u_xlat14;
            let x_2856 : vec2<f32> = (vec2<f32>(x_2854.x, x_2854.y) + vec2<f32>(1.0f, 1.0f));
            let x_2857 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2856.x, x_2856.y, x_2857.z, x_2857.w);
            let x_2859 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2859 + vec2<f32>(1.0f, 1.0f));
            let x_2861 : vec4<f32> = u_xlat13;
            let x_2863 : vec2<f32> = (vec2<f32>(x_2861.x, x_2861.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2864 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2863.x, x_2863.y, x_2864.z, x_2864.w);
            let x_2866 : vec2<f32> = u_xlat63;
            let x_2867 : vec2<f32> = (x_2866 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2868 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2867.x, x_2867.y, x_2868.z, x_2868.w);
            let x_2870 : vec4<f32> = u_xlat14;
            let x_2872 : vec2<f32> = (vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2873 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2872.x, x_2872.y, x_2873.z, x_2873.w);
            let x_2875 : vec2<f32> = u_xlat61;
            let x_2876 : vec2<f32> = (x_2875 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2877 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2876.x, x_2876.y, x_2877.z, x_2877.w);
            let x_2879 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2879.y, x_2879.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2883 : f32 = u_xlat14.x;
            u_xlat15.z = x_2883;
            let x_2886 : f32 = u_xlat61.x;
            u_xlat15.w = x_2886;
            let x_2889 : f32 = u_xlat16.x;
            u_xlat13.z = x_2889;
            let x_2892 : f32 = u_xlat12.x;
            u_xlat13.w = x_2892;
            let x_2894 : vec4<f32> = u_xlat13;
            let x_2896 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2894.z, x_2894.w, x_2894.x, x_2894.z) + vec4<f32>(x_2896.z, x_2896.w, x_2896.x, x_2896.z));
            let x_2900 : f32 = u_xlat15.y;
            u_xlat14.z = x_2900;
            let x_2903 : f32 = u_xlat61.y;
            u_xlat14.w = x_2903;
            let x_2906 : f32 = u_xlat13.y;
            u_xlat16.z = x_2906;
            let x_2909 : f32 = u_xlat12.z;
            u_xlat16.w = x_2909;
            let x_2911 : vec4<f32> = u_xlat14;
            let x_2913 : vec4<f32> = u_xlat16;
            let x_2915 : vec3<f32> = (vec3<f32>(x_2911.z, x_2911.y, x_2911.w) + vec3<f32>(x_2913.z, x_2913.y, x_2913.w));
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
            let x_2918 : vec4<f32> = u_xlat13;
            let x_2920 : vec4<f32> = u_xlat17;
            let x_2922 : vec3<f32> = (vec3<f32>(x_2918.x, x_2918.z, x_2918.w) / vec3<f32>(x_2920.z, x_2920.w, x_2920.y));
            let x_2923 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2927 : vec3<f32> = (vec3<f32>(x_2925.x, x_2925.y, x_2925.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2928 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2928.w);
            let x_2930 : vec4<f32> = u_xlat16;
            let x_2932 : vec4<f32> = u_xlat12;
            let x_2934 : vec3<f32> = (vec3<f32>(x_2930.z, x_2930.y, x_2930.w) / vec3<f32>(x_2932.x, x_2932.y, x_2932.z));
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
            let x_2937 : vec4<f32> = u_xlat14;
            let x_2939 : vec3<f32> = (vec3<f32>(x_2937.x, x_2937.y, x_2937.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2940 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2940.w);
            let x_2942 : vec4<f32> = u_xlat13;
            let x_2945 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2947 : vec3<f32> = (vec3<f32>(x_2942.y, x_2942.x, x_2942.z) * vec3<f32>(x_2945.x, x_2945.x, x_2945.x));
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2948.w);
            let x_2950 : vec4<f32> = u_xlat14;
            let x_2953 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2955 : vec3<f32> = (vec3<f32>(x_2950.x, x_2950.y, x_2950.z) * vec3<f32>(x_2953.y, x_2953.y, x_2953.y));
            let x_2956 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2956.w);
            let x_2959 : f32 = u_xlat14.x;
            u_xlat13.w = x_2959;
            let x_2961 : vec4<f32> = u_xlat11;
            let x_2964 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2967 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y) * vec4<f32>(x_2964.x, x_2964.y, x_2964.x, x_2964.y)) + vec4<f32>(x_2967.y, x_2967.w, x_2967.x, x_2967.w));
            let x_2970 : vec4<f32> = u_xlat11;
            let x_2973 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2973.x, x_2973.y)) + vec2<f32>(x_2976.z, x_2976.w));
            let x_2980 : f32 = u_xlat13.y;
            u_xlat14.w = x_2980;
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2983 : vec2<f32> = vec2<f32>(x_2982.y, x_2982.z);
            let x_2984 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2984.x, x_2983.x, x_2984.z, x_2983.y);
            let x_2986 : vec4<f32> = u_xlat11;
            let x_2989 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2992 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.y) * vec4<f32>(x_2989.x, x_2989.y, x_2989.x, x_2989.y)) + vec4<f32>(x_2992.x, x_2992.y, x_2992.z, x_2992.y));
            let x_2995 : vec4<f32> = u_xlat11;
            let x_2998 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2995.x, x_2995.y, x_2995.x, x_2995.y) * vec4<f32>(x_2998.x, x_2998.y, x_2998.x, x_2998.y)) + vec4<f32>(x_3001.w, x_3001.y, x_3001.w, x_3001.z));
            let x_3004 : vec4<f32> = u_xlat11;
            let x_3007 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3010 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3004.x, x_3004.y, x_3004.x, x_3004.y) * vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y)) + vec4<f32>(x_3010.x, x_3010.w, x_3010.z, x_3010.w));
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3015 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3013.x, x_3013.x, x_3013.x, x_3013.y) * vec4<f32>(x_3015.z, x_3015.w, x_3015.y, x_3015.z));
            let x_3018 : vec4<f32> = u_xlat12;
            let x_3020 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3018.y, x_3018.y, x_3018.z, x_3018.z) * x_3020);
            let x_3023 : f32 = u_xlat12.z;
            let x_3025 : f32 = u_xlat17.y;
            u_xlat84 = (x_3023 * x_3025);
            let x_3028 : vec4<f32> = u_xlat15;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.x, x_3028.y);
            let x_3031 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3038 : vec3<f32> = txVec34;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat85 = x_3040;
            let x_3042 : vec4<f32> = u_xlat15;
            let x_3043 : vec2<f32> = vec2<f32>(x_3042.z, x_3042.w);
            let x_3045 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec35;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat11.x = x_3054;
            let x_3057 : f32 = u_xlat11.x;
            let x_3059 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3057 * x_3059);
            let x_3063 : f32 = u_xlat18.x;
            let x_3064 : f32 = u_xlat85;
            let x_3067 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3063 * x_3064) + x_3067);
            let x_3070 : vec2<f32> = u_xlat61;
            let x_3072 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3070.x, x_3070.y, x_3072);
            let x_3079 : vec3<f32> = txVec36;
            let x_3081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3079.xy, x_3079.z);
            u_xlat11.x = x_3081;
            let x_3084 : f32 = u_xlat18.z;
            let x_3086 : f32 = u_xlat11.x;
            let x_3088 : f32 = u_xlat85;
            u_xlat85 = ((x_3084 * x_3086) + x_3088);
            let x_3091 : vec4<f32> = u_xlat14;
            let x_3092 : vec2<f32> = vec2<f32>(x_3091.x, x_3091.y);
            let x_3094 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3092.x, x_3092.y, x_3094);
            let x_3101 : vec3<f32> = txVec37;
            let x_3103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3101.xy, x_3101.z);
            u_xlat11.x = x_3103;
            let x_3106 : f32 = u_xlat18.w;
            let x_3108 : f32 = u_xlat11.x;
            let x_3110 : f32 = u_xlat85;
            u_xlat85 = ((x_3106 * x_3108) + x_3110);
            let x_3113 : vec4<f32> = u_xlat16;
            let x_3114 : vec2<f32> = vec2<f32>(x_3113.x, x_3113.y);
            let x_3116 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3123 : vec3<f32> = txVec38;
            let x_3125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
            u_xlat11.x = x_3125;
            let x_3128 : f32 = u_xlat19.x;
            let x_3130 : f32 = u_xlat11.x;
            let x_3132 : f32 = u_xlat85;
            u_xlat85 = ((x_3128 * x_3130) + x_3132);
            let x_3135 : vec4<f32> = u_xlat16;
            let x_3136 : vec2<f32> = vec2<f32>(x_3135.z, x_3135.w);
            let x_3138 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3136.x, x_3136.y, x_3138);
            let x_3145 : vec3<f32> = txVec39;
            let x_3147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3145.xy, x_3145.z);
            u_xlat11.x = x_3147;
            let x_3150 : f32 = u_xlat19.y;
            let x_3152 : f32 = u_xlat11.x;
            let x_3154 : f32 = u_xlat85;
            u_xlat85 = ((x_3150 * x_3152) + x_3154);
            let x_3157 : vec4<f32> = u_xlat14;
            let x_3158 : vec2<f32> = vec2<f32>(x_3157.z, x_3157.w);
            let x_3160 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec40;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat11.x = x_3169;
            let x_3172 : f32 = u_xlat19.z;
            let x_3174 : f32 = u_xlat11.x;
            let x_3176 : f32 = u_xlat85;
            u_xlat85 = ((x_3172 * x_3174) + x_3176);
            let x_3179 : vec4<f32> = u_xlat13;
            let x_3180 : vec2<f32> = vec2<f32>(x_3179.x, x_3179.y);
            let x_3182 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
            let x_3189 : vec3<f32> = txVec41;
            let x_3191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
            u_xlat11.x = x_3191;
            let x_3194 : f32 = u_xlat19.w;
            let x_3196 : f32 = u_xlat11.x;
            let x_3198 : f32 = u_xlat85;
            u_xlat85 = ((x_3194 * x_3196) + x_3198);
            let x_3201 : vec4<f32> = u_xlat13;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.z, x_3201.w);
            let x_3204 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec42;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat11.x = x_3213;
            let x_3215 : f32 = u_xlat84;
            let x_3217 : f32 = u_xlat11.x;
            let x_3219 : f32 = u_xlat85;
            u_xlat82 = ((x_3215 * x_3217) + x_3219);
          } else {
            let x_3222 : vec4<f32> = u_xlat10;
            let x_3225 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3228 : vec2<f32> = ((vec2<f32>(x_3222.x, x_3222.y) * vec2<f32>(x_3225.z, x_3225.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3229 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3231 : vec4<f32> = u_xlat11;
            let x_3233 : vec2<f32> = floor(vec2<f32>(x_3231.x, x_3231.y));
            let x_3234 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3233.x, x_3233.y, x_3234.z, x_3234.w);
            let x_3236 : vec4<f32> = u_xlat10;
            let x_3239 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3242 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3236.x, x_3236.y) * vec2<f32>(x_3239.z, x_3239.w)) + -(vec2<f32>(x_3242.x, x_3242.y)));
            let x_3246 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3246.x, x_3246.x, x_3246.y, x_3246.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3249 : vec4<f32> = u_xlat12;
            let x_3251 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3249.x, x_3249.x, x_3249.z, x_3249.z) * vec4<f32>(x_3251.x, x_3251.x, x_3251.z, x_3251.z));
            let x_3254 : vec4<f32> = u_xlat13;
            let x_3256 : vec2<f32> = (vec2<f32>(x_3254.y, x_3254.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3257 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3257.x, x_3256.x, x_3257.z, x_3256.y);
            let x_3259 : vec4<f32> = u_xlat13;
            let x_3262 : vec2<f32> = u_xlat61;
            let x_3264 : vec2<f32> = ((vec2<f32>(x_3259.x, x_3259.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3262));
            let x_3265 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3264.x, x_3265.y, x_3264.y, x_3265.w);
            let x_3267 : vec2<f32> = u_xlat61;
            let x_3269 : vec2<f32> = (-(x_3267) + vec2<f32>(1.0f, 1.0f));
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3269.x, x_3269.y, x_3270.z, x_3270.w);
            let x_3272 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3272, vec2<f32>(0.0f, 0.0f));
            let x_3274 : vec2<f32> = u_xlat63;
            let x_3276 : vec2<f32> = u_xlat63;
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3280 : vec2<f32> = ((-(x_3274) * x_3276) + vec2<f32>(x_3278.x, x_3278.y));
            let x_3281 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3280.x, x_3280.y, x_3281.z, x_3281.w);
            let x_3283 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3283, vec2<f32>(0.0f, 0.0f));
            let x_3286 : vec2<f32> = u_xlat63;
            let x_3288 : vec2<f32> = u_xlat63;
            let x_3290 : vec4<f32> = u_xlat12;
            let x_3292 : vec2<f32> = ((-(x_3286) * x_3288) + vec2<f32>(x_3290.y, x_3290.w));
            let x_3293 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3292.x, x_3293.y, x_3292.y);
            let x_3295 : vec4<f32> = u_xlat13;
            let x_3297 : vec2<f32> = (vec2<f32>(x_3295.x, x_3295.y) + vec2<f32>(2.0f, 2.0f));
            let x_3298 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3297.x, x_3297.y, x_3298.z, x_3298.w);
            let x_3300 : vec3<f32> = u_xlat37;
            let x_3302 : vec2<f32> = (vec2<f32>(x_3300.x, x_3300.z) + vec2<f32>(2.0f, 2.0f));
            let x_3303 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3303.x, x_3302.x, x_3303.z, x_3302.y);
            let x_3306 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3306 * 0.08163200318813323975f);
            let x_3309 : vec4<f32> = u_xlat12;
            let x_3311 : vec3<f32> = (vec3<f32>(x_3309.z, x_3309.x, x_3309.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3312 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
            let x_3314 : vec4<f32> = u_xlat13;
            let x_3316 : vec2<f32> = (vec2<f32>(x_3314.x, x_3314.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3317 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3316.x, x_3316.y, x_3317.z, x_3317.w);
            let x_3320 : f32 = u_xlat16.y;
            u_xlat15.x = x_3320;
            let x_3322 : vec2<f32> = u_xlat61;
            let x_3325 : vec2<f32> = ((vec2<f32>(x_3322.x, x_3322.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3326 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3326.x, x_3325.x, x_3326.z, x_3325.y);
            let x_3328 : vec2<f32> = u_xlat61;
            let x_3331 : vec2<f32> = ((vec2<f32>(x_3328.x, x_3328.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3332 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3331.x, x_3332.y, x_3331.y, x_3332.w);
            let x_3335 : f32 = u_xlat12.x;
            u_xlat13.y = x_3335;
            let x_3338 : f32 = u_xlat14.y;
            u_xlat13.w = x_3338;
            let x_3340 : vec4<f32> = u_xlat13;
            let x_3341 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3340 + x_3341);
            let x_3343 : vec2<f32> = u_xlat61;
            let x_3346 : vec2<f32> = ((vec2<f32>(x_3343.y, x_3343.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3347 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3347.x, x_3346.x, x_3347.z, x_3346.y);
            let x_3349 : vec2<f32> = u_xlat61;
            let x_3352 : vec2<f32> = ((vec2<f32>(x_3349.y, x_3349.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3353 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3352.x, x_3353.y, x_3352.y, x_3353.w);
            let x_3356 : f32 = u_xlat12.y;
            u_xlat14.y = x_3356;
            let x_3358 : vec4<f32> = u_xlat14;
            let x_3359 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3358 + x_3359);
            let x_3361 : vec4<f32> = u_xlat13;
            let x_3362 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3361 / x_3362);
            let x_3364 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3364 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3366 : vec4<f32> = u_xlat14;
            let x_3367 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3366 / x_3367);
            let x_3369 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3369 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3371 : vec4<f32> = u_xlat13;
            let x_3374 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3371.w, x_3371.x, x_3371.y, x_3371.z) * vec4<f32>(x_3374.x, x_3374.x, x_3374.x, x_3374.x));
            let x_3377 : vec4<f32> = u_xlat14;
            let x_3380 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3377.x, x_3377.w, x_3377.y, x_3377.z) * vec4<f32>(x_3380.y, x_3380.y, x_3380.y, x_3380.y));
            let x_3383 : vec4<f32> = u_xlat13;
            let x_3384 : vec3<f32> = vec3<f32>(x_3383.y, x_3383.z, x_3383.w);
            let x_3385 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3384.x, x_3385.y, x_3384.y, x_3384.z);
            let x_3388 : f32 = u_xlat14.x;
            u_xlat16.y = x_3388;
            let x_3390 : vec4<f32> = u_xlat11;
            let x_3393 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3396 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3390.x, x_3390.y, x_3390.x, x_3390.y) * vec4<f32>(x_3393.x, x_3393.y, x_3393.x, x_3393.y)) + vec4<f32>(x_3396.x, x_3396.y, x_3396.z, x_3396.y));
            let x_3399 : vec4<f32> = u_xlat11;
            let x_3402 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3405 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3399.x, x_3399.y) * vec2<f32>(x_3402.x, x_3402.y)) + vec2<f32>(x_3405.w, x_3405.y));
            let x_3409 : f32 = u_xlat16.y;
            u_xlat13.y = x_3409;
            let x_3412 : f32 = u_xlat14.z;
            u_xlat16.y = x_3412;
            let x_3414 : vec4<f32> = u_xlat11;
            let x_3417 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3420 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3414.x, x_3414.y, x_3414.x, x_3414.y) * vec4<f32>(x_3417.x, x_3417.y, x_3417.x, x_3417.y)) + vec4<f32>(x_3420.x, x_3420.y, x_3420.z, x_3420.y));
            let x_3423 : vec4<f32> = u_xlat11;
            let x_3426 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3429 : vec4<f32> = u_xlat16;
            let x_3431 : vec2<f32> = ((vec2<f32>(x_3423.x, x_3423.y) * vec2<f32>(x_3426.x, x_3426.y)) + vec2<f32>(x_3429.w, x_3429.y));
            let x_3432 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3431.x, x_3431.y, x_3432.z, x_3432.w);
            let x_3435 : f32 = u_xlat16.y;
            u_xlat13.z = x_3435;
            let x_3437 : vec4<f32> = u_xlat11;
            let x_3440 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3443 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3437.x, x_3437.y, x_3437.x, x_3437.y) * vec4<f32>(x_3440.x, x_3440.y, x_3440.x, x_3440.y)) + vec4<f32>(x_3443.x, x_3443.y, x_3443.x, x_3443.z));
            let x_3447 : f32 = u_xlat14.w;
            u_xlat16.y = x_3447;
            let x_3450 : vec4<f32> = u_xlat11;
            let x_3453 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3456 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3450.x, x_3450.y, x_3450.x, x_3450.y) * vec4<f32>(x_3453.x, x_3453.y, x_3453.x, x_3453.y)) + vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3456.y));
            let x_3460 : vec4<f32> = u_xlat11;
            let x_3463 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3466 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3460.x, x_3460.y) * vec2<f32>(x_3463.x, x_3463.y)) + vec2<f32>(x_3466.w, x_3466.y));
            let x_3470 : f32 = u_xlat16.y;
            u_xlat13.w = x_3470;
            let x_3473 : vec4<f32> = u_xlat11;
            let x_3476 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3479 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3473.x, x_3473.y) * vec2<f32>(x_3476.x, x_3476.y)) + vec2<f32>(x_3479.x, x_3479.w));
            let x_3482 : vec4<f32> = u_xlat16;
            let x_3483 : vec3<f32> = vec3<f32>(x_3482.x, x_3482.z, x_3482.w);
            let x_3484 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3483.x, x_3484.y, x_3483.y, x_3483.z);
            let x_3486 : vec4<f32> = u_xlat11;
            let x_3489 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3492 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3486.x, x_3486.y, x_3486.x, x_3486.y) * vec4<f32>(x_3489.x, x_3489.y, x_3489.x, x_3489.y)) + vec4<f32>(x_3492.x, x_3492.y, x_3492.z, x_3492.y));
            let x_3496 : vec4<f32> = u_xlat11;
            let x_3499 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3502 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3496.x, x_3496.y) * vec2<f32>(x_3499.x, x_3499.y)) + vec2<f32>(x_3502.w, x_3502.y));
            let x_3506 : f32 = u_xlat13.x;
            u_xlat14.x = x_3506;
            let x_3508 : vec4<f32> = u_xlat11;
            let x_3511 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3514 : vec4<f32> = u_xlat14;
            let x_3516 : vec2<f32> = ((vec2<f32>(x_3508.x, x_3508.y) * vec2<f32>(x_3511.x, x_3511.y)) + vec2<f32>(x_3514.x, x_3514.y));
            let x_3517 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3516.x, x_3516.y, x_3517.z, x_3517.w);
            let x_3520 : vec4<f32> = u_xlat12;
            let x_3522 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3520.x, x_3520.x, x_3520.x, x_3520.x) * x_3522);
            let x_3525 : vec4<f32> = u_xlat12;
            let x_3527 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3525.y, x_3525.y, x_3525.y, x_3525.y) * x_3527);
            let x_3530 : vec4<f32> = u_xlat12;
            let x_3532 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3530.z, x_3530.z, x_3530.z, x_3530.z) * x_3532);
            let x_3534 : vec4<f32> = u_xlat12;
            let x_3536 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3534.w, x_3534.w, x_3534.w, x_3534.w) * x_3536);
            let x_3539 : vec4<f32> = u_xlat17;
            let x_3540 : vec2<f32> = vec2<f32>(x_3539.x, x_3539.y);
            let x_3542 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3540.x, x_3540.y, x_3542);
            let x_3549 : vec3<f32> = txVec43;
            let x_3551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3549.xy, x_3549.z);
            u_xlat84 = x_3551;
            let x_3553 : vec4<f32> = u_xlat17;
            let x_3554 : vec2<f32> = vec2<f32>(x_3553.z, x_3553.w);
            let x_3556 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3554.x, x_3554.y, x_3556);
            let x_3563 : vec3<f32> = txVec44;
            let x_3565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3563.xy, x_3563.z);
            u_xlat85 = x_3565;
            let x_3566 : f32 = u_xlat85;
            let x_3568 : f32 = u_xlat22.y;
            u_xlat85 = (x_3566 * x_3568);
            let x_3571 : f32 = u_xlat22.x;
            let x_3572 : f32 = u_xlat84;
            let x_3574 : f32 = u_xlat85;
            u_xlat84 = ((x_3571 * x_3572) + x_3574);
            let x_3577 : vec2<f32> = u_xlat61;
            let x_3579 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3577.x, x_3577.y, x_3579);
            let x_3586 : vec3<f32> = txVec45;
            let x_3588 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3586.xy, x_3586.z);
            u_xlat85 = x_3588;
            let x_3590 : f32 = u_xlat22.z;
            let x_3591 : f32 = u_xlat85;
            let x_3593 : f32 = u_xlat84;
            u_xlat84 = ((x_3590 * x_3591) + x_3593);
            let x_3596 : vec4<f32> = u_xlat20;
            let x_3597 : vec2<f32> = vec2<f32>(x_3596.x, x_3596.y);
            let x_3599 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3597.x, x_3597.y, x_3599);
            let x_3606 : vec3<f32> = txVec46;
            let x_3608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3606.xy, x_3606.z);
            u_xlat85 = x_3608;
            let x_3610 : f32 = u_xlat22.w;
            let x_3611 : f32 = u_xlat85;
            let x_3613 : f32 = u_xlat84;
            u_xlat84 = ((x_3610 * x_3611) + x_3613);
            let x_3616 : vec4<f32> = u_xlat18;
            let x_3617 : vec2<f32> = vec2<f32>(x_3616.x, x_3616.y);
            let x_3619 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3617.x, x_3617.y, x_3619);
            let x_3626 : vec3<f32> = txVec47;
            let x_3628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3626.xy, x_3626.z);
            u_xlat85 = x_3628;
            let x_3630 : f32 = u_xlat23.x;
            let x_3631 : f32 = u_xlat85;
            let x_3633 : f32 = u_xlat84;
            u_xlat84 = ((x_3630 * x_3631) + x_3633);
            let x_3636 : vec4<f32> = u_xlat18;
            let x_3637 : vec2<f32> = vec2<f32>(x_3636.z, x_3636.w);
            let x_3639 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3637.x, x_3637.y, x_3639);
            let x_3646 : vec3<f32> = txVec48;
            let x_3648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3646.xy, x_3646.z);
            u_xlat85 = x_3648;
            let x_3650 : f32 = u_xlat23.y;
            let x_3651 : f32 = u_xlat85;
            let x_3653 : f32 = u_xlat84;
            u_xlat84 = ((x_3650 * x_3651) + x_3653);
            let x_3656 : vec4<f32> = u_xlat19;
            let x_3657 : vec2<f32> = vec2<f32>(x_3656.x, x_3656.y);
            let x_3659 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3657.x, x_3657.y, x_3659);
            let x_3666 : vec3<f32> = txVec49;
            let x_3668 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3666.xy, x_3666.z);
            u_xlat85 = x_3668;
            let x_3670 : f32 = u_xlat23.z;
            let x_3671 : f32 = u_xlat85;
            let x_3673 : f32 = u_xlat84;
            u_xlat84 = ((x_3670 * x_3671) + x_3673);
            let x_3676 : vec4<f32> = u_xlat20;
            let x_3677 : vec2<f32> = vec2<f32>(x_3676.z, x_3676.w);
            let x_3679 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3677.x, x_3677.y, x_3679);
            let x_3686 : vec3<f32> = txVec50;
            let x_3688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3686.xy, x_3686.z);
            u_xlat85 = x_3688;
            let x_3690 : f32 = u_xlat23.w;
            let x_3691 : f32 = u_xlat85;
            let x_3693 : f32 = u_xlat84;
            u_xlat84 = ((x_3690 * x_3691) + x_3693);
            let x_3696 : vec4<f32> = u_xlat21;
            let x_3697 : vec2<f32> = vec2<f32>(x_3696.x, x_3696.y);
            let x_3699 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3697.x, x_3697.y, x_3699);
            let x_3706 : vec3<f32> = txVec51;
            let x_3708 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3706.xy, x_3706.z);
            u_xlat85 = x_3708;
            let x_3710 : f32 = u_xlat24.x;
            let x_3711 : f32 = u_xlat85;
            let x_3713 : f32 = u_xlat84;
            u_xlat84 = ((x_3710 * x_3711) + x_3713);
            let x_3716 : vec4<f32> = u_xlat21;
            let x_3717 : vec2<f32> = vec2<f32>(x_3716.z, x_3716.w);
            let x_3719 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3717.x, x_3717.y, x_3719);
            let x_3726 : vec3<f32> = txVec52;
            let x_3728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3726.xy, x_3726.z);
            u_xlat85 = x_3728;
            let x_3730 : f32 = u_xlat24.y;
            let x_3731 : f32 = u_xlat85;
            let x_3733 : f32 = u_xlat84;
            u_xlat84 = ((x_3730 * x_3731) + x_3733);
            let x_3736 : vec2<f32> = u_xlat38;
            let x_3738 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3736.x, x_3736.y, x_3738);
            let x_3745 : vec3<f32> = txVec53;
            let x_3747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3745.xy, x_3745.z);
            u_xlat85 = x_3747;
            let x_3749 : f32 = u_xlat24.z;
            let x_3750 : f32 = u_xlat85;
            let x_3752 : f32 = u_xlat84;
            u_xlat84 = ((x_3749 * x_3750) + x_3752);
            let x_3755 : vec2<f32> = u_xlat69;
            let x_3757 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3755.x, x_3755.y, x_3757);
            let x_3764 : vec3<f32> = txVec54;
            let x_3766 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3764.xy, x_3764.z);
            u_xlat85 = x_3766;
            let x_3768 : f32 = u_xlat24.w;
            let x_3769 : f32 = u_xlat85;
            let x_3771 : f32 = u_xlat84;
            u_xlat84 = ((x_3768 * x_3769) + x_3771);
            let x_3774 : vec4<f32> = u_xlat16;
            let x_3775 : vec2<f32> = vec2<f32>(x_3774.x, x_3774.y);
            let x_3777 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3775.x, x_3775.y, x_3777);
            let x_3784 : vec3<f32> = txVec55;
            let x_3786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3784.xy, x_3784.z);
            u_xlat85 = x_3786;
            let x_3788 : f32 = u_xlat12.x;
            let x_3789 : f32 = u_xlat85;
            let x_3791 : f32 = u_xlat84;
            u_xlat84 = ((x_3788 * x_3789) + x_3791);
            let x_3794 : vec4<f32> = u_xlat16;
            let x_3795 : vec2<f32> = vec2<f32>(x_3794.z, x_3794.w);
            let x_3797 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3795.x, x_3795.y, x_3797);
            let x_3804 : vec3<f32> = txVec56;
            let x_3806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3804.xy, x_3804.z);
            u_xlat85 = x_3806;
            let x_3808 : f32 = u_xlat12.y;
            let x_3809 : f32 = u_xlat85;
            let x_3811 : f32 = u_xlat84;
            u_xlat84 = ((x_3808 * x_3809) + x_3811);
            let x_3814 : vec2<f32> = u_xlat64;
            let x_3816 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3814.x, x_3814.y, x_3816);
            let x_3823 : vec3<f32> = txVec57;
            let x_3825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3823.xy, x_3823.z);
            u_xlat85 = x_3825;
            let x_3827 : f32 = u_xlat12.z;
            let x_3828 : f32 = u_xlat85;
            let x_3830 : f32 = u_xlat84;
            u_xlat84 = ((x_3827 * x_3828) + x_3830);
            let x_3833 : vec4<f32> = u_xlat11;
            let x_3834 : vec2<f32> = vec2<f32>(x_3833.x, x_3833.y);
            let x_3836 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3834.x, x_3834.y, x_3836);
            let x_3843 : vec3<f32> = txVec58;
            let x_3845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3843.xy, x_3843.z);
            u_xlat85 = x_3845;
            let x_3847 : f32 = u_xlat12.w;
            let x_3848 : f32 = u_xlat85;
            let x_3850 : f32 = u_xlat84;
            u_xlat82 = ((x_3847 * x_3848) + x_3850);
          }
        }
      } else {
        let x_3854 : vec4<f32> = u_xlat10;
        let x_3855 : vec2<f32> = vec2<f32>(x_3854.x, x_3854.y);
        let x_3857 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3855.x, x_3855.y, x_3857);
        let x_3864 : vec3<f32> = txVec59;
        let x_3866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3864.xy, x_3864.z);
        u_xlat82 = x_3866;
      }
      let x_3867 : i32 = u_xlati29;
      let x_3869 : f32 = x_497.x_AdditionalShadowParams[x_3867].x;
      u_xlat84 = (1.0f + -(x_3869));
      let x_3872 : f32 = u_xlat82;
      let x_3873 : i32 = u_xlati29;
      let x_3875 : f32 = x_497.x_AdditionalShadowParams[x_3873].x;
      let x_3877 : f32 = u_xlat84;
      u_xlat82 = ((x_3872 * x_3875) + x_3877);
      let x_3880 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3880);
      let x_3883 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3883 >= 1.0f);
      let x_3886 : bool = u_xlatb84;
      let x_3888 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3886 | x_3888);
      let x_3890 : bool = u_xlatb84;
      let x_3891 : f32 = u_xlat82;
      u_xlat82 = select(x_3891, 1.0f, x_3890);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3894 : f32 = u_xlat82;
    u_xlat84 = (-(x_3894) + 1.0f);
    let x_3898 : f32 = u_xlat2.x;
    let x_3899 : f32 = u_xlat84;
    let x_3901 : f32 = u_xlat82;
    u_xlat82 = ((x_3898 * x_3899) + x_3901);
    let x_3903 : f32 = u_xlat80;
    let x_3904 : f32 = u_xlat82;
    u_xlat80 = (x_3903 * x_3904);
    let x_3906 : vec4<f32> = u_xlat1;
    let x_3908 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3906.x, x_3906.y, x_3906.z), vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3911, 0.0f, 1.0f);
    let x_3913 : f32 = u_xlat80;
    let x_3914 : f32 = u_xlat82;
    u_xlat80 = (x_3913 * x_3914);
    let x_3916 : f32 = u_xlat80;
    let x_3918 : i32 = u_xlati29;
    let x_3920 : vec4<f32> = x_2466.x_AdditionalLightsColor[x_3918];
    let x_3922 : vec3<f32> = (vec3<f32>(x_3916, x_3916, x_3916) * vec3<f32>(x_3920.x, x_3920.y, x_3920.z));
    let x_3923 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3922.x, x_3922.y, x_3922.z, x_3923.w);
    let x_3925 : vec3<f32> = u_xlat33;
    let x_3926 : f32 = u_xlat81;
    let x_3929 : vec4<f32> = u_xlat3;
    u_xlat33 = ((x_3925 * vec3<f32>(x_3926, x_3926, x_3926)) + vec3<f32>(x_3929.x, x_3929.y, x_3929.z));
    let x_3932 : vec3<f32> = u_xlat33;
    let x_3933 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(x_3932, x_3933);
    let x_3937 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_3937, 1.17549435e-38f);
    let x_3941 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_3941);
    let x_3944 : vec3<f32> = u_xlat29;
    let x_3946 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3944.x, x_3944.x, x_3944.x) * x_3946);
    let x_3948 : vec4<f32> = u_xlat1;
    let x_3950 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(vec3<f32>(x_3948.x, x_3948.y, x_3948.z), x_3950);
    let x_3954 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_3954, 0.0f, 1.0f);
    let x_3957 : vec4<f32> = u_xlat9;
    let x_3959 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_3957.x, x_3957.y, x_3957.z), x_3959);
    let x_3961 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3961, 0.0f, 1.0f);
    let x_3964 : f32 = u_xlat29.x;
    let x_3966 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3964 * x_3966);
    let x_3970 : f32 = u_xlat29.x;
    let x_3972 : f32 = u_xlat8.x;
    u_xlat29.x = ((x_3970 * x_3972) + 1.00001001358032226562f);
    let x_3976 : f32 = u_xlat80;
    let x_3977 : f32 = u_xlat80;
    u_xlat80 = (x_3976 * x_3977);
    let x_3980 : f32 = u_xlat29.x;
    let x_3982 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3980 * x_3982);
    let x_3985 : f32 = u_xlat80;
    u_xlat80 = max(x_3985, 0.10000000149011611938f);
    let x_3988 : f32 = u_xlat29.x;
    let x_3989 : f32 = u_xlat80;
    u_xlat29.x = (x_3988 * x_3989);
    let x_3992 : f32 = u_xlat78;
    let x_3994 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3992 * x_3994);
    let x_3997 : f32 = u_xlat27;
    let x_3999 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3997 / x_3999);
    let x_4002 : vec4<f32> = u_xlat0;
    let x_4004 : vec3<f32> = u_xlat29;
    let x_4007 : vec3<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_4002.x, x_4002.y, x_4002.z) * vec3<f32>(x_4004.x, x_4004.x, x_4004.x)) + x_4007);
    let x_4009 : vec3<f32> = u_xlat33;
    let x_4010 : vec4<f32> = u_xlat10;
    let x_4013 : vec4<f32> = u_xlat7;
    let x_4015 : vec3<f32> = ((x_4009 * vec3<f32>(x_4010.x, x_4010.y, x_4010.z)) + vec3<f32>(x_4013.x, x_4013.y, x_4013.z));
    let x_4016 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4015.x, x_4015.y, x_4015.z, x_4016.w);

    continuing {
      let x_4018 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4018 + bitcast<u32>(1i));
    }
  }
  let x_4020 : vec4<f32> = u_xlat5;
  let x_4022 : f32 = u_xlat52;
  let x_4025 : vec4<f32> = u_xlat4;
  let x_4027 : vec3<f32> = ((vec3<f32>(x_4020.x, x_4020.y, x_4020.z) * vec3<f32>(x_4022, x_4022, x_4022)) + vec3<f32>(x_4025.x, x_4025.z, x_4025.w));
  let x_4028 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4027.x, x_4027.y, x_4027.z, x_4028.w);
  let x_4030 : vec4<f32> = u_xlat7;
  let x_4032 : vec4<f32> = u_xlat0;
  let x_4034 : vec3<f32> = (vec3<f32>(x_4030.x, x_4030.y, x_4030.z) + vec3<f32>(x_4032.x, x_4032.y, x_4032.z));
  let x_4035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4034.x, x_4034.y, x_4034.z, x_4035.w);
  let x_4037 : f32 = u_xlat75;
  let x_4038 : f32 = u_xlat75;
  u_xlat75 = (x_4037 * -(x_4038));
  let x_4041 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4041);
  let x_4043 : vec4<f32> = u_xlat0;
  let x_4046 : vec4<f32> = x_29.unity_FogColor;
  let x_4049 : vec3<f32> = (vec3<f32>(x_4043.x, x_4043.y, x_4043.z) + -(vec3<f32>(x_4046.x, x_4046.y, x_4046.z)));
  let x_4050 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4049.x, x_4049.y, x_4049.z, x_4050.w);
  let x_4054 : f32 = u_xlat75;
  let x_4056 : vec4<f32> = u_xlat0;
  let x_4060 : vec4<f32> = x_29.unity_FogColor;
  let x_4062 : vec3<f32> = ((vec3<f32>(x_4054, x_4054, x_4054) * vec3<f32>(x_4056.x, x_4056.y, x_4056.z)) + vec3<f32>(x_4060.x, x_4060.y, x_4060.z));
  let x_4063 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4062.x, x_4062.y, x_4062.z, x_4063.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


