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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

@group(0) @binding(3) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_25A083BC : sampler;

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

@group(0) @binding(5) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat75 : f32;

@group(0) @binding(4) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb51 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat51 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat76 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb78 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat79 : f32;

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

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlati79 : i32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_2441 : AdditionalLights;

var<private> u_xlati81 : i32;

var<private> u_xlatb82 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb81 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb84 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
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
  var x_2088 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2571 : f32;
  var x_2581 : f32;
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
  u_xlat77 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat77;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb75;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb75;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb75;
  if (x_488) {
    let x_493 : f32 = u_xlat3.z;
    x_489 = x_493;
  } else {
    let x_497 : f32 = x_29.unity_MatrixV[2i].z;
    x_489 = x_497;
  }
  let x_498 : f32 = x_489;
  u_xlat4.z = x_498;
  let x_500 : vec3<f32> = vs_INTERP7;
  let x_511 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres0;
  let x_514 : vec3<f32> = (x_500 + -(vec3<f32>(x_511.x, x_511.y, x_511.z)));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : vec3<f32> = vs_INTERP7;
  let x_520 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres1;
  let x_523 : vec3<f32> = (x_518 + -(vec3<f32>(x_520.x, x_520.y, x_520.z)));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : vec3<f32> = vs_INTERP7;
  let x_529 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres2;
  let x_532 : vec3<f32> = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : vec3<f32> = vs_INTERP7;
  let x_538 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_541 : vec3<f32> = (x_536 + -(vec3<f32>(x_538.x, x_538.y, x_538.z)));
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_571 : vec4<f32> = u_xlat3;
  let x_573 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_571 < x_573);
  let x_576 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_588);
  let x_592 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_592);
  let x_597 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_597);
  let x_601 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_601);
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : vec4<f32> = u_xlat5;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(x_606.y, x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat3;
  let x_614 : vec3<f32> = max(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_615 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_615.x, x_614.x, x_614.y, x_614.z);
  let x_617 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_617, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_622 : f32 = u_xlat75;
  u_xlat75 = (-(x_622) + 4.0f);
  let x_627 : f32 = u_xlat75;
  u_xlatu75 = u32(x_627);
  let x_631 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_631) << bitcast<u32>(2i));
  let x_634 : vec3<f32> = vs_INTERP7;
  let x_636 : i32 = u_xlati75;
  let x_639 : i32 = u_xlati75;
  let x_643 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_636 + 1i) / 4i)][((x_639 + 1i) % 4i)];
  let x_645 : vec3<f32> = (vec3<f32>(x_634.y, x_634.y, x_634.y) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : i32 = u_xlati75;
  let x_650 : i32 = u_xlati75;
  let x_653 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_648 / 4i)][(x_650 % 4i)];
  let x_655 : vec3<f32> = vs_INTERP7;
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.x, x_655.x)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : i32 = u_xlati75;
  let x_666 : i32 = u_xlati75;
  let x_670 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_663 + 2i) / 4i)][((x_666 + 2i) % 4i)];
  let x_672 : vec3<f32> = vs_INTERP7;
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.z, x_672.z, x_672.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : i32 = u_xlati75;
  let x_685 : i32 = u_xlati75;
  let x_689 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_682 + 3i) / 4i)][((x_685 + 3i) % 4i)];
  let x_691 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  u_xlat1.w = 1.0f;
  let x_697 : vec4<f32> = x_349.unity_SHAr;
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_697, x_698);
  let x_703 : vec4<f32> = x_349.unity_SHAg;
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_703, x_704);
  let x_709 : vec4<f32> = x_349.unity_SHAb;
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_709, x_710);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_713.y, x_713.z, x_713.z, x_713.x) * vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.z));
  let x_720 : vec4<f32> = x_349.unity_SHBr;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_720, x_721);
  let x_726 : vec4<f32> = x_349.unity_SHBg;
  let x_727 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_726, x_727);
  let x_732 : vec4<f32> = x_349.unity_SHBb;
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_732, x_733);
  let x_737 : f32 = u_xlat1.y;
  let x_739 : f32 = u_xlat1.y;
  u_xlat75 = (x_737 * x_739);
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = u_xlat1.x;
  let x_746 : f32 = u_xlat75;
  u_xlat75 = ((x_742 * x_744) + -(x_746));
  let x_751 : vec4<f32> = x_349.unity_SHC;
  let x_753 : f32 = u_xlat75;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753, x_753, x_753)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : vec4<f32> = u_xlat6;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat5;
  let x_770 : vec3<f32> = max(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_771 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat2;
  let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_781 : vec2<f32> = clamp(vec2<f32>(x_777.x, x_777.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_782 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_785 : f32 = u_xlat2.x;
  u_xlat75 = ((-(x_785) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_791 : f32 = u_xlat75;
  u_xlat76 = (-(x_791) + 1.0f);
  let x_794 : f32 = u_xlat75;
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec3<f32> = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat2;
  let x_810 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_819 : f32 = u_xlat2.y;
  u_xlat75 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat75;
  let x_823 : f32 = u_xlat75;
  u_xlat2.x = (x_822 * x_823);
  let x_827 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_827, 0.0078125f);
  let x_832 : f32 = u_xlat2.x;
  let x_834 : f32 = u_xlat2.x;
  u_xlat77 = (x_832 * x_834);
  let x_836 : f32 = u_xlat76;
  let x_838 : f32 = u_xlat2.y;
  u_xlat76 = (x_836 + x_838);
  let x_840 : f32 = u_xlat76;
  u_xlat76 = min(x_840, 1.0f);
  let x_844 : f32 = u_xlat2.x;
  u_xlat27 = ((x_844 * 4.0f) + 2.0f);
  let x_849 : f32 = u_xlat2.z;
  u_xlat52 = min(x_849, 1.0f);
  let x_854 : f32 = x_508.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_854);
  let x_856 : bool = u_xlatb78;
  if (x_856) {
    let x_860 : f32 = x_508.x_MainLightShadowParams.y;
    u_xlatb78 = (x_860 == 1.0f);
    let x_862 : bool = u_xlatb78;
    if (x_862) {
      let x_865 : vec4<f32> = u_xlat3;
      let x_868 : vec4<f32> = x_508.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y) + x_868);
      let x_872 : vec4<f32> = u_xlat7;
      let x_873 : vec2<f32> = vec2<f32>(x_872.x, x_872.y);
      let x_875 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_873.x, x_873.y, x_875);
      let x_888 : vec3<f32> = txVec0;
      let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
      u_xlat8.x = x_890;
      let x_893 : vec4<f32> = u_xlat7;
      let x_894 : vec2<f32> = vec2<f32>(x_893.z, x_893.w);
      let x_896 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_894.x, x_894.y, x_896);
      let x_903 : vec3<f32> = txVec1;
      let x_905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_903.xy, x_903.z);
      u_xlat8.y = x_905;
      let x_907 : vec4<f32> = u_xlat3;
      let x_911 : vec4<f32> = x_508.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y) + x_911);
      let x_914 : vec4<f32> = u_xlat7;
      let x_915 : vec2<f32> = vec2<f32>(x_914.x, x_914.y);
      let x_917 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_915.x, x_915.y, x_917);
      let x_924 : vec3<f32> = txVec2;
      let x_926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_924.xy, x_924.z);
      u_xlat8.z = x_926;
      let x_929 : vec4<f32> = u_xlat7;
      let x_930 : vec2<f32> = vec2<f32>(x_929.z, x_929.w);
      let x_932 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_930.x, x_930.y, x_932);
      let x_939 : vec3<f32> = txVec3;
      let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
      u_xlat8.w = x_941;
      let x_944 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_944, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_951 : f32 = x_508.x_MainLightShadowParams.y;
      u_xlatb79 = (x_951 == 2.0f);
      let x_953 : bool = u_xlatb79;
      if (x_953) {
        let x_956 : vec4<f32> = u_xlat3;
        let x_960 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_965 : vec2<f32> = ((vec2<f32>(x_956.x, x_956.y) * vec2<f32>(x_960.z, x_960.w)) + vec2<f32>(0.5f, 0.5f));
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = floor(vec2<f32>(x_968.x, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_974 : vec4<f32> = u_xlat3;
        let x_977 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_977.z, x_977.w)) + -(vec2<f32>(x_980.x, x_980.y)));
        let x_984 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_984.x, x_984.x, x_984.y, x_984.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_989 : vec4<f32> = u_xlat8;
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_989.x, x_989.x, x_989.z, x_989.z) * vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z));
        let x_994 : vec4<f32> = u_xlat9;
        let x_998 : vec2<f32> = (vec2<f32>(x_994.y, x_994.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_999.y, x_998.y, x_999.w);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1004 : vec2<f32> = u_xlat57;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1004));
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1010 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1010) + vec2<f32>(1.0f, 1.0f));
        let x_1015 : vec2<f32> = u_xlat57;
        let x_1017 : vec2<f32> = min(x_1015, vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat10;
        let x_1023 : vec4<f32> = u_xlat10;
        let x_1026 : vec2<f32> = u_xlat59;
        let x_1027 : vec2<f32> = ((-(vec2<f32>(x_1020.x, x_1020.y)) * vec2<f32>(x_1023.x, x_1023.y)) + x_1026);
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1027.x, x_1027.y, x_1028.z, x_1028.w);
        let x_1030 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1030, vec2<f32>(0.0f, 0.0f));
        let x_1032 : vec2<f32> = u_xlat57;
        let x_1034 : vec2<f32> = u_xlat57;
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1032) * x_1034) + vec2<f32>(x_1036.y, x_1036.w));
        let x_1039 : vec4<f32> = u_xlat10;
        let x_1041 : vec2<f32> = (vec2<f32>(x_1039.x, x_1039.y) + vec2<f32>(1.0f, 1.0f));
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1044 + vec2<f32>(1.0f, 1.0f));
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1051 : vec2<f32> = (vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1052 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec2<f32> = u_xlat59;
        let x_1055 : vec2<f32> = (x_1054 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat10;
        let x_1060 : vec2<f32> = (vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1064 : vec2<f32> = u_xlat57;
        let x_1065 : vec2<f32> = (x_1064 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1066 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1068.y, x_1068.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1072 : f32 = u_xlat10.x;
        u_xlat11.z = x_1072;
        let x_1075 : f32 = u_xlat57.x;
        u_xlat11.w = x_1075;
        let x_1078 : f32 = u_xlat12.x;
        u_xlat9.z = x_1078;
        let x_1081 : f32 = u_xlat8.x;
        u_xlat9.w = x_1081;
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1086 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1084.z, x_1084.w, x_1084.x, x_1084.z) + vec4<f32>(x_1086.z, x_1086.w, x_1086.x, x_1086.z));
        let x_1090 : f32 = u_xlat11.y;
        u_xlat10.z = x_1090;
        let x_1093 : f32 = u_xlat57.y;
        u_xlat10.w = x_1093;
        let x_1096 : f32 = u_xlat9.y;
        u_xlat12.z = x_1096;
        let x_1099 : f32 = u_xlat8.z;
        u_xlat12.w = x_1099;
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1103 : vec4<f32> = u_xlat12;
        let x_1105 : vec3<f32> = (vec3<f32>(x_1101.z, x_1101.y, x_1101.w) + vec3<f32>(x_1103.z, x_1103.y, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1110 : vec4<f32> = u_xlat13;
        let x_1112 : vec3<f32> = (vec3<f32>(x_1108.x, x_1108.z, x_1108.w) / vec3<f32>(x_1110.z, x_1110.w, x_1110.y));
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
        let x_1115 : vec4<f32> = u_xlat9;
        let x_1121 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat12;
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1128 : vec3<f32> = (vec3<f32>(x_1124.z, x_1124.y, x_1124.w) / vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat10;
        let x_1133 : vec3<f32> = (vec3<f32>(x_1131.x, x_1131.y, x_1131.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1141 : vec3<f32> = (vec3<f32>(x_1136.y, x_1136.x, x_1136.z) * vec3<f32>(x_1139.x, x_1139.x, x_1139.x));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat10;
        let x_1147 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1149 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) * vec3<f32>(x_1147.y, x_1147.y, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
        let x_1153 : f32 = u_xlat10.x;
        u_xlat9.w = x_1153;
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.y, x_1161.w, x_1161.x, x_1161.w));
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.z, x_1170.w));
        let x_1174 : f32 = u_xlat9.y;
        u_xlat10.w = x_1174;
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.y, x_1176.z);
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1177.x, x_1178.z, x_1177.y);
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1183 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y) * vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y)) + vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1192 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y) * vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y)) + vec4<f32>(x_1195.w, x_1195.y, x_1195.w, x_1195.z));
        let x_1198 : vec4<f32> = u_xlat7;
        let x_1201 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y) * vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y)) + vec4<f32>(x_1204.x, x_1204.w, x_1204.z, x_1204.w));
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1210 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.y) * vec4<f32>(x_1210.z, x_1210.w, x_1210.y, x_1210.z));
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1216 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1214.y, x_1214.y, x_1214.z, x_1214.z) * x_1216);
        let x_1220 : f32 = u_xlat8.z;
        let x_1222 : f32 = u_xlat13.y;
        u_xlat79 = (x_1220 * x_1222);
        let x_1225 : vec4<f32> = u_xlat11;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
        let x_1228 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1236 : vec3<f32> = txVec4;
        let x_1238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1236.xy, x_1236.z);
        u_xlat80 = x_1238;
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1251 : vec3<f32> = txVec5;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat81 = x_1253;
        let x_1254 : f32 = u_xlat81;
        let x_1256 : f32 = u_xlat14.y;
        u_xlat81 = (x_1254 * x_1256);
        let x_1259 : f32 = u_xlat14.x;
        let x_1260 : f32 = u_xlat80;
        let x_1262 : f32 = u_xlat81;
        u_xlat80 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec2<f32> = u_xlat57;
        let x_1267 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec6;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat81 = x_1276;
        let x_1278 : f32 = u_xlat14.z;
        let x_1279 : f32 = u_xlat81;
        let x_1281 : f32 = u_xlat80;
        u_xlat80 = ((x_1278 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec7;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat81 = x_1296;
        let x_1298 : f32 = u_xlat14.w;
        let x_1299 : f32 = u_xlat81;
        let x_1301 : f32 = u_xlat80;
        u_xlat80 = ((x_1298 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat12;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec8;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat81 = x_1316;
        let x_1318 : f32 = u_xlat15.x;
        let x_1319 : f32 = u_xlat81;
        let x_1321 : f32 = u_xlat80;
        u_xlat80 = ((x_1318 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat12;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec9;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat81 = x_1336;
        let x_1338 : f32 = u_xlat15.y;
        let x_1339 : f32 = u_xlat81;
        let x_1341 : f32 = u_xlat80;
        u_xlat80 = ((x_1338 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat10;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec10;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat81 = x_1356;
        let x_1358 : f32 = u_xlat15.z;
        let x_1359 : f32 = u_xlat81;
        let x_1361 : f32 = u_xlat80;
        u_xlat80 = ((x_1358 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.x, x_1364.y);
        let x_1367 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec11;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat81 = x_1376;
        let x_1378 : f32 = u_xlat15.w;
        let x_1379 : f32 = u_xlat81;
        let x_1381 : f32 = u_xlat80;
        u_xlat80 = ((x_1378 * x_1379) + x_1381);
        let x_1384 : vec4<f32> = u_xlat9;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.z, x_1384.w);
        let x_1387 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec12;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat81 = x_1396;
        let x_1397 : f32 = u_xlat79;
        let x_1398 : f32 = u_xlat81;
        let x_1400 : f32 = u_xlat80;
        u_xlat78 = ((x_1397 * x_1398) + x_1400);
      } else {
        let x_1403 : vec4<f32> = u_xlat3;
        let x_1406 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1409 : vec2<f32> = ((vec2<f32>(x_1403.x, x_1403.y) * vec2<f32>(x_1406.z, x_1406.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1410 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat7;
        let x_1414 : vec2<f32> = floor(vec2<f32>(x_1412.x, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat3;
        let x_1420 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.z, x_1420.w)) + -(vec2<f32>(x_1423.x, x_1423.y)));
        let x_1427 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1427.x, x_1427.x, x_1427.y, x_1427.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1430.x, x_1430.x, x_1430.z, x_1430.z) * vec4<f32>(x_1432.x, x_1432.x, x_1432.z, x_1432.z));
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1439 : vec2<f32> = (vec2<f32>(x_1435.y, x_1435.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = u_xlat57;
        let x_1447 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1445));
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1447.x, x_1448.y, x_1447.y, x_1448.w);
        let x_1450 : vec2<f32> = u_xlat57;
        let x_1452 : vec2<f32> = (-(x_1450) + vec2<f32>(1.0f, 1.0f));
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
        let x_1455 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1455, vec2<f32>(0.0f, 0.0f));
        let x_1457 : vec2<f32> = u_xlat59;
        let x_1459 : vec2<f32> = u_xlat59;
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = ((-(x_1457) * x_1459) + vec2<f32>(x_1461.x, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1466 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1466, vec2<f32>(0.0f, 0.0f));
        let x_1469 : vec2<f32> = u_xlat59;
        let x_1471 : vec2<f32> = u_xlat59;
        let x_1473 : vec4<f32> = u_xlat8;
        let x_1475 : vec2<f32> = ((-(x_1469) * x_1471) + vec2<f32>(x_1473.y, x_1473.w));
        let x_1476 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1475.x, x_1476.y, x_1475.y);
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1480 : vec2<f32> = (vec2<f32>(x_1478.x, x_1478.y) + vec2<f32>(2.0f, 2.0f));
        let x_1481 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
        let x_1483 : vec3<f32> = u_xlat33;
        let x_1485 : vec2<f32> = (vec2<f32>(x_1483.x, x_1483.z) + vec2<f32>(2.0f, 2.0f));
        let x_1486 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1486.x, x_1485.x, x_1486.z, x_1485.y);
        let x_1489 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1489 * 0.08163200318813323975f);
        let x_1493 : vec4<f32> = u_xlat8;
        let x_1496 : vec3<f32> = (vec3<f32>(x_1493.z, x_1493.x, x_1493.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1497 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1502 : vec2<f32> = (vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat12.y;
        u_xlat11.x = x_1506;
        let x_1508 : vec2<f32> = u_xlat57;
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1516.x, x_1515.x, x_1516.z, x_1515.y);
        let x_1518 : vec2<f32> = u_xlat57;
        let x_1522 : vec2<f32> = ((vec2<f32>(x_1518.x, x_1518.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1522.x, x_1523.y, x_1522.y, x_1523.w);
        let x_1526 : f32 = u_xlat8.x;
        u_xlat9.y = x_1526;
        let x_1529 : f32 = u_xlat10.y;
        u_xlat9.w = x_1529;
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1531 + x_1532);
        let x_1534 : vec2<f32> = u_xlat57;
        let x_1537 : vec2<f32> = ((vec2<f32>(x_1534.y, x_1534.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1538 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1538.x, x_1537.x, x_1538.z, x_1537.y);
        let x_1540 : vec2<f32> = u_xlat57;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1543.x, x_1544.y, x_1543.y, x_1544.w);
        let x_1547 : f32 = u_xlat8.y;
        u_xlat10.y = x_1547;
        let x_1549 : vec4<f32> = u_xlat10;
        let x_1550 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1549 + x_1550);
        let x_1552 : vec4<f32> = u_xlat9;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1552 / x_1553);
        let x_1555 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1555 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1561 / x_1562);
        let x_1564 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1564 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1569 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1566.w, x_1566.x, x_1566.y, x_1566.z) * vec4<f32>(x_1569.x, x_1569.x, x_1569.x, x_1569.x));
        let x_1572 : vec4<f32> = u_xlat10;
        let x_1575 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1572.x, x_1572.w, x_1572.y, x_1572.z) * vec4<f32>(x_1575.y, x_1575.y, x_1575.y, x_1575.y));
        let x_1578 : vec4<f32> = u_xlat9;
        let x_1579 : vec3<f32> = vec3<f32>(x_1578.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1579.x, x_1580.y, x_1579.y, x_1579.z);
        let x_1583 : f32 = u_xlat10.x;
        u_xlat12.y = x_1583;
        let x_1585 : vec4<f32> = u_xlat7;
        let x_1588 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1591 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1585.x, x_1585.y, x_1585.x, x_1585.y) * vec4<f32>(x_1588.x, x_1588.y, x_1588.x, x_1588.y)) + vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1591.y));
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1597 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1600 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1597.x, x_1597.y)) + vec2<f32>(x_1600.w, x_1600.y));
        let x_1604 : f32 = u_xlat12.y;
        u_xlat9.y = x_1604;
        let x_1607 : f32 = u_xlat10.z;
        u_xlat12.y = x_1607;
        let x_1609 : vec4<f32> = u_xlat7;
        let x_1612 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1615 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1609.x, x_1609.y, x_1609.x, x_1609.y) * vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y)) + vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1615.y));
        let x_1618 : vec4<f32> = u_xlat7;
        let x_1621 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1624.w, x_1624.y));
        let x_1627 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
        let x_1630 : f32 = u_xlat12.y;
        u_xlat9.z = x_1630;
        let x_1633 : vec4<f32> = u_xlat7;
        let x_1636 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1639 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1633.x, x_1633.y, x_1633.x, x_1633.y) * vec4<f32>(x_1636.x, x_1636.y, x_1636.x, x_1636.y)) + vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.z));
        let x_1643 : f32 = u_xlat10.w;
        u_xlat12.y = x_1643;
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1649 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1646.x, x_1646.y, x_1646.x, x_1646.y) * vec4<f32>(x_1649.x, x_1649.y, x_1649.x, x_1649.y)) + vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1652.y));
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1659 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1662 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(x_1659.x, x_1659.y)) + vec2<f32>(x_1662.w, x_1662.y));
        let x_1666 : f32 = u_xlat12.y;
        u_xlat9.w = x_1666;
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1672 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1672.x, x_1672.y)) + vec2<f32>(x_1675.x, x_1675.w));
        let x_1678 : vec4<f32> = u_xlat12;
        let x_1679 : vec3<f32> = vec3<f32>(x_1678.x, x_1678.z, x_1678.w);
        let x_1680 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1679.x, x_1680.y, x_1679.y, x_1679.z);
        let x_1682 : vec4<f32> = u_xlat7;
        let x_1685 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1682.x, x_1682.y, x_1682.x, x_1682.y) * vec4<f32>(x_1685.x, x_1685.y, x_1685.x, x_1685.y)) + vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1688.y));
        let x_1692 : vec4<f32> = u_xlat7;
        let x_1695 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1698 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1692.x, x_1692.y) * vec2<f32>(x_1695.x, x_1695.y)) + vec2<f32>(x_1698.w, x_1698.y));
        let x_1702 : f32 = u_xlat9.x;
        u_xlat10.x = x_1702;
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1707 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat10;
        let x_1712 : vec2<f32> = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1707.x, x_1707.y)) + vec2<f32>(x_1710.x, x_1710.y));
        let x_1713 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
        let x_1716 : vec4<f32> = u_xlat8;
        let x_1718 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1716.x, x_1716.x, x_1716.x, x_1716.x) * x_1718);
        let x_1721 : vec4<f32> = u_xlat8;
        let x_1723 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1721.y, x_1721.y, x_1721.y, x_1721.y) * x_1723);
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1728 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1726.z, x_1726.z, x_1726.z, x_1726.z) * x_1728);
        let x_1730 : vec4<f32> = u_xlat8;
        let x_1732 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1730.w, x_1730.w, x_1730.w, x_1730.w) * x_1732);
        let x_1735 : vec4<f32> = u_xlat13;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.x, x_1735.y);
        let x_1738 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec13;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat79 = x_1747;
        let x_1749 : vec4<f32> = u_xlat13;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.z, x_1749.w);
        let x_1752 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec14;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
        u_xlat80 = x_1761;
        let x_1762 : f32 = u_xlat80;
        let x_1764 : f32 = u_xlat18.y;
        u_xlat80 = (x_1762 * x_1764);
        let x_1767 : f32 = u_xlat18.x;
        let x_1768 : f32 = u_xlat79;
        let x_1770 : f32 = u_xlat80;
        u_xlat79 = ((x_1767 * x_1768) + x_1770);
        let x_1773 : vec2<f32> = u_xlat57;
        let x_1775 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec15;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1782.xy, x_1782.z);
        u_xlat80 = x_1784;
        let x_1786 : f32 = u_xlat18.z;
        let x_1787 : f32 = u_xlat80;
        let x_1789 : f32 = u_xlat79;
        u_xlat79 = ((x_1786 * x_1787) + x_1789);
        let x_1792 : vec4<f32> = u_xlat16;
        let x_1793 : vec2<f32> = vec2<f32>(x_1792.x, x_1792.y);
        let x_1795 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1793.x, x_1793.y, x_1795);
        let x_1802 : vec3<f32> = txVec16;
        let x_1804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1802.xy, x_1802.z);
        u_xlat80 = x_1804;
        let x_1806 : f32 = u_xlat18.w;
        let x_1807 : f32 = u_xlat80;
        let x_1809 : f32 = u_xlat79;
        u_xlat79 = ((x_1806 * x_1807) + x_1809);
        let x_1812 : vec4<f32> = u_xlat14;
        let x_1813 : vec2<f32> = vec2<f32>(x_1812.x, x_1812.y);
        let x_1815 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1813.x, x_1813.y, x_1815);
        let x_1822 : vec3<f32> = txVec17;
        let x_1824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1822.xy, x_1822.z);
        u_xlat80 = x_1824;
        let x_1826 : f32 = u_xlat19.x;
        let x_1827 : f32 = u_xlat80;
        let x_1829 : f32 = u_xlat79;
        u_xlat79 = ((x_1826 * x_1827) + x_1829);
        let x_1832 : vec4<f32> = u_xlat14;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.z, x_1832.w);
        let x_1835 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec18;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat80 = x_1844;
        let x_1846 : f32 = u_xlat19.y;
        let x_1847 : f32 = u_xlat80;
        let x_1849 : f32 = u_xlat79;
        u_xlat79 = ((x_1846 * x_1847) + x_1849);
        let x_1852 : vec4<f32> = u_xlat15;
        let x_1853 : vec2<f32> = vec2<f32>(x_1852.x, x_1852.y);
        let x_1855 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
        let x_1862 : vec3<f32> = txVec19;
        let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
        u_xlat80 = x_1864;
        let x_1866 : f32 = u_xlat19.z;
        let x_1867 : f32 = u_xlat80;
        let x_1869 : f32 = u_xlat79;
        u_xlat79 = ((x_1866 * x_1867) + x_1869);
        let x_1872 : vec4<f32> = u_xlat16;
        let x_1873 : vec2<f32> = vec2<f32>(x_1872.z, x_1872.w);
        let x_1875 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1873.x, x_1873.y, x_1875);
        let x_1882 : vec3<f32> = txVec20;
        let x_1884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1882.xy, x_1882.z);
        u_xlat80 = x_1884;
        let x_1886 : f32 = u_xlat19.w;
        let x_1887 : f32 = u_xlat80;
        let x_1889 : f32 = u_xlat79;
        u_xlat79 = ((x_1886 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat17;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.x, x_1892.y);
        let x_1895 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec21;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1902.xy, x_1902.z);
        u_xlat80 = x_1904;
        let x_1906 : f32 = u_xlat20.x;
        let x_1907 : f32 = u_xlat80;
        let x_1909 : f32 = u_xlat79;
        u_xlat79 = ((x_1906 * x_1907) + x_1909);
        let x_1912 : vec4<f32> = u_xlat17;
        let x_1913 : vec2<f32> = vec2<f32>(x_1912.z, x_1912.w);
        let x_1915 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec22;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1922.xy, x_1922.z);
        u_xlat80 = x_1924;
        let x_1926 : f32 = u_xlat20.y;
        let x_1927 : f32 = u_xlat80;
        let x_1929 : f32 = u_xlat79;
        u_xlat79 = ((x_1926 * x_1927) + x_1929);
        let x_1932 : vec2<f32> = u_xlat34;
        let x_1934 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
        let x_1941 : vec3<f32> = txVec23;
        let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1941.xy, x_1941.z);
        u_xlat80 = x_1943;
        let x_1945 : f32 = u_xlat20.z;
        let x_1946 : f32 = u_xlat80;
        let x_1948 : f32 = u_xlat79;
        u_xlat79 = ((x_1945 * x_1946) + x_1948);
        let x_1951 : vec2<f32> = u_xlat65;
        let x_1953 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1951.x, x_1951.y, x_1953);
        let x_1960 : vec3<f32> = txVec24;
        let x_1962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1960.xy, x_1960.z);
        u_xlat80 = x_1962;
        let x_1964 : f32 = u_xlat20.w;
        let x_1965 : f32 = u_xlat80;
        let x_1967 : f32 = u_xlat79;
        u_xlat79 = ((x_1964 * x_1965) + x_1967);
        let x_1970 : vec4<f32> = u_xlat12;
        let x_1971 : vec2<f32> = vec2<f32>(x_1970.x, x_1970.y);
        let x_1973 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec25;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1980.xy, x_1980.z);
        u_xlat80 = x_1982;
        let x_1984 : f32 = u_xlat8.x;
        let x_1985 : f32 = u_xlat80;
        let x_1987 : f32 = u_xlat79;
        u_xlat79 = ((x_1984 * x_1985) + x_1987);
        let x_1990 : vec4<f32> = u_xlat12;
        let x_1991 : vec2<f32> = vec2<f32>(x_1990.z, x_1990.w);
        let x_1993 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1991.x, x_1991.y, x_1993);
        let x_2000 : vec3<f32> = txVec26;
        let x_2002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2000.xy, x_2000.z);
        u_xlat80 = x_2002;
        let x_2004 : f32 = u_xlat8.y;
        let x_2005 : f32 = u_xlat80;
        let x_2007 : f32 = u_xlat79;
        u_xlat79 = ((x_2004 * x_2005) + x_2007);
        let x_2010 : vec2<f32> = u_xlat60;
        let x_2012 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2010.x, x_2010.y, x_2012);
        let x_2019 : vec3<f32> = txVec27;
        let x_2021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2019.xy, x_2019.z);
        u_xlat80 = x_2021;
        let x_2023 : f32 = u_xlat8.z;
        let x_2024 : f32 = u_xlat80;
        let x_2026 : f32 = u_xlat79;
        u_xlat79 = ((x_2023 * x_2024) + x_2026);
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2030 : vec2<f32> = vec2<f32>(x_2029.x, x_2029.y);
        let x_2032 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2030.x, x_2030.y, x_2032);
        let x_2039 : vec3<f32> = txVec28;
        let x_2041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2039.xy, x_2039.z);
        u_xlat80 = x_2041;
        let x_2043 : f32 = u_xlat8.w;
        let x_2044 : f32 = u_xlat80;
        let x_2046 : f32 = u_xlat79;
        u_xlat78 = ((x_2043 * x_2044) + x_2046);
      }
    }
  } else {
    let x_2050 : vec4<f32> = u_xlat3;
    let x_2051 : vec2<f32> = vec2<f32>(x_2050.x, x_2050.y);
    let x_2053 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
    let x_2060 : vec3<f32> = txVec29;
    let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2060.xy, x_2060.z);
    u_xlat78 = x_2062;
  }
  let x_2064 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2064) + 1.0f);
  let x_2068 : f32 = u_xlat78;
  let x_2070 : f32 = x_508.x_MainLightShadowParams.x;
  let x_2073 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2068 * x_2070) + x_2073);
  let x_2078 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2078);
  let x_2082 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2082 >= 1.0f);
  let x_2084 : bool = u_xlatb53;
  let x_2085 : bool = u_xlatb28;
  u_xlatb28 = (x_2084 | x_2085);
  let x_2087 : bool = u_xlatb28;
  if (x_2087) {
    x_2088 = 1.0f;
  } else {
    let x_2093 : f32 = u_xlat3.x;
    x_2088 = x_2093;
  }
  let x_2094 : f32 = x_2088;
  u_xlat3.x = x_2094;
  let x_2097 : vec3<f32> = vs_INTERP7;
  let x_2099 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2097 + -(x_2099));
  let x_2102 : vec3<f32> = u_xlat28;
  let x_2103 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_2102, x_2103);
  let x_2108 : f32 = u_xlat28.x;
  let x_2110 : f32 = x_508.x_MainLightShadowParams.z;
  let x_2113 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2108 * x_2110) + x_2113);
  let x_2115 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2115, 0.0f, 1.0f);
  let x_2118 : f32 = u_xlat3.x;
  u_xlat78 = (-(x_2118) + 1.0f);
  let x_2121 : f32 = u_xlat53;
  let x_2122 : f32 = u_xlat78;
  let x_2125 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2121 * x_2122) + x_2125);
  let x_2128 : vec3<f32> = u_xlat4;
  let x_2130 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(-(x_2128), vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
  let x_2133 : f32 = u_xlat53;
  let x_2134 : f32 = u_xlat53;
  u_xlat53 = (x_2133 + x_2134);
  let x_2136 : vec4<f32> = u_xlat1;
  let x_2138 : f32 = u_xlat53;
  let x_2142 : vec3<f32> = u_xlat4;
  let x_2144 : vec3<f32> = ((vec3<f32>(x_2136.x, x_2136.y, x_2136.z) * -(vec3<f32>(x_2138, x_2138, x_2138))) + -(x_2142));
  let x_2145 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
  let x_2147 : vec4<f32> = u_xlat1;
  let x_2149 : vec3<f32> = u_xlat4;
  u_xlat53 = dot(vec3<f32>(x_2147.x, x_2147.y, x_2147.z), x_2149);
  let x_2151 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2151, 0.0f, 1.0f);
  let x_2153 : f32 = u_xlat53;
  u_xlat53 = (-(x_2153) + 1.0f);
  let x_2156 : f32 = u_xlat53;
  let x_2157 : f32 = u_xlat53;
  u_xlat53 = (x_2156 * x_2157);
  let x_2159 : f32 = u_xlat53;
  let x_2160 : f32 = u_xlat53;
  u_xlat53 = (x_2159 * x_2160);
  let x_2162 : f32 = u_xlat75;
  u_xlat78 = ((-(x_2162) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2168 : f32 = u_xlat75;
  let x_2169 : f32 = u_xlat78;
  u_xlat75 = (x_2168 * x_2169);
  let x_2171 : f32 = u_xlat75;
  u_xlat75 = (x_2171 * 6.0f);
  let x_2181 : vec4<f32> = u_xlat7;
  let x_2183 : f32 = u_xlat75;
  let x_2184 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2181.x, x_2181.y, x_2181.z), x_2183);
  u_xlat7 = x_2184;
  let x_2186 : f32 = u_xlat7.w;
  u_xlat75 = (x_2186 + -1.0f);
  let x_2189 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2190 : f32 = u_xlat75;
  u_xlat75 = ((x_2189 * x_2190) + 1.0f);
  let x_2193 : f32 = u_xlat75;
  u_xlat75 = max(x_2193, 0.0f);
  let x_2195 : f32 = u_xlat75;
  u_xlat75 = log2(x_2195);
  let x_2197 : f32 = u_xlat75;
  let x_2199 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_2197 * x_2199);
  let x_2201 : f32 = u_xlat75;
  u_xlat75 = exp2(x_2201);
  let x_2203 : f32 = u_xlat75;
  let x_2205 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_2203 * x_2205);
  let x_2207 : vec4<f32> = u_xlat7;
  let x_2209 : f32 = u_xlat75;
  let x_2211 : vec3<f32> = (vec3<f32>(x_2207.x, x_2207.y, x_2207.z) * vec3<f32>(x_2209, x_2209, x_2209));
  let x_2212 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
  let x_2214 : vec4<f32> = u_xlat2;
  let x_2216 : vec4<f32> = u_xlat2;
  let x_2220 : vec2<f32> = ((vec2<f32>(x_2214.x, x_2214.x) * vec2<f32>(x_2216.x, x_2216.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2221 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
  let x_2224 : f32 = u_xlat8.y;
  u_xlat75 = (1.0f / x_2224);
  let x_2226 : vec4<f32> = u_xlat0;
  let x_2229 : f32 = u_xlat76;
  u_xlat33 = (-(vec3<f32>(x_2226.x, x_2226.y, x_2226.z)) + vec3<f32>(x_2229, x_2229, x_2229));
  let x_2232 : f32 = u_xlat53;
  let x_2234 : vec3<f32> = u_xlat33;
  let x_2236 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_2232, x_2232, x_2232) * x_2234) + vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2239 : f32 = u_xlat75;
  let x_2241 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2239, x_2239, x_2239) * x_2241);
  let x_2243 : vec4<f32> = u_xlat7;
  let x_2245 : vec3<f32> = u_xlat33;
  let x_2246 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * x_2245);
  let x_2247 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
  let x_2249 : vec4<f32> = u_xlat5;
  let x_2251 : vec4<f32> = u_xlat6;
  let x_2254 : vec4<f32> = u_xlat7;
  let x_2256 : vec3<f32> = ((vec3<f32>(x_2249.x, x_2249.y, x_2249.z) * vec3<f32>(x_2251.x, x_2251.y, x_2251.z)) + vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
  let x_2257 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2260 : f32 = u_xlat3.x;
  let x_2262 : f32 = x_349.unity_LightData.z;
  u_xlat75 = (x_2260 * x_2262);
  let x_2264 : vec4<f32> = u_xlat1;
  let x_2267 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_2264.x, x_2264.y, x_2264.z), vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2270, 0.0f, 1.0f);
  let x_2272 : f32 = u_xlat75;
  let x_2273 : f32 = u_xlat76;
  u_xlat75 = (x_2272 * x_2273);
  let x_2275 : f32 = u_xlat75;
  let x_2278 : vec4<f32> = x_29.x_MainLightColor;
  let x_2280 : vec3<f32> = (vec3<f32>(x_2275, x_2275, x_2275) * vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2280.x, x_2281.y, x_2280.y, x_2280.z);
  let x_2283 : vec3<f32> = u_xlat4;
  let x_2285 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2287 : vec3<f32> = (x_2283 + vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
  let x_2290 : vec4<f32> = u_xlat7;
  let x_2292 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_2290.x, x_2290.y, x_2290.z), vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
  let x_2295 : f32 = u_xlat75;
  u_xlat75 = max(x_2295, 1.17549435e-38f);
  let x_2298 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2298);
  let x_2300 : f32 = u_xlat75;
  let x_2302 : vec4<f32> = u_xlat7;
  let x_2304 : vec3<f32> = (vec3<f32>(x_2300, x_2300, x_2300) * vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
  let x_2307 : vec4<f32> = u_xlat1;
  let x_2309 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
  let x_2312 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2312, 0.0f, 1.0f);
  let x_2315 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2317 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2315.x, x_2315.y, x_2315.z), vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
  let x_2320 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2320, 0.0f, 1.0f);
  let x_2322 : f32 = u_xlat75;
  let x_2323 : f32 = u_xlat75;
  u_xlat75 = (x_2322 * x_2323);
  let x_2325 : f32 = u_xlat75;
  let x_2327 : f32 = u_xlat8.x;
  u_xlat75 = ((x_2325 * x_2327) + 1.00001001358032226562f);
  let x_2331 : f32 = u_xlat76;
  let x_2332 : f32 = u_xlat76;
  u_xlat76 = (x_2331 * x_2332);
  let x_2334 : f32 = u_xlat75;
  let x_2335 : f32 = u_xlat75;
  u_xlat75 = (x_2334 * x_2335);
  let x_2337 : f32 = u_xlat76;
  u_xlat76 = max(x_2337, 0.10000000149011611938f);
  let x_2340 : f32 = u_xlat75;
  let x_2341 : f32 = u_xlat76;
  u_xlat75 = (x_2340 * x_2341);
  let x_2343 : f32 = u_xlat27;
  let x_2344 : f32 = u_xlat75;
  u_xlat75 = (x_2343 * x_2344);
  let x_2346 : f32 = u_xlat77;
  let x_2347 : f32 = u_xlat75;
  u_xlat75 = (x_2346 / x_2347);
  let x_2349 : vec4<f32> = u_xlat0;
  let x_2351 : f32 = u_xlat75;
  let x_2354 : vec4<f32> = u_xlat6;
  let x_2356 : vec3<f32> = ((vec3<f32>(x_2349.x, x_2349.y, x_2349.z) * vec3<f32>(x_2351, x_2351, x_2351)) + vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
  let x_2357 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
  let x_2359 : vec4<f32> = u_xlat3;
  let x_2361 : vec4<f32> = u_xlat7;
  let x_2363 : vec3<f32> = (vec3<f32>(x_2359.x, x_2359.z, x_2359.w) * vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2364 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2363.x, x_2364.y, x_2363.y, x_2363.z);
  let x_2367 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2369 : f32 = x_349.unity_LightData.y;
  u_xlat75 = min(x_2367, x_2369);
  let x_2371 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2371));
  let x_2375 : f32 = u_xlat28.x;
  let x_2378 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_2381 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2375 * x_2378) + x_2381);
  let x_2383 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2383, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2395 : u32 = u_xlatu_loop_1;
    let x_2396 : u32 = u_xlatu75;
    if ((x_2395 < x_2396)) {
    } else {
      break;
    }
    let x_2399 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_2399 >> 2u);
    let x_2402 : u32 = u_xlatu_loop_1;
    u_xlati79 = bitcast<i32>((x_2402 & 3u));
    let x_2405 : u32 = u_xlatu28;
    let x_2408 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2405)];
    let x_2418 : i32 = u_xlati79;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2423 : vec4<u32> = indexable[x_2418];
    u_xlat28.x = dot(x_2408, bitcast<vec4<f32>>(x_2423));
    let x_2429 : f32 = u_xlat28.x;
    u_xlati28 = i32(x_2429);
    let x_2431 : vec3<f32> = vs_INTERP7;
    let x_2442 : i32 = u_xlati28;
    let x_2444 : vec4<f32> = x_2441.x_AdditionalLightsPosition[x_2442];
    let x_2447 : i32 = u_xlati28;
    let x_2449 : vec4<f32> = x_2441.x_AdditionalLightsPosition[x_2447];
    u_xlat33 = ((-(x_2431) * vec3<f32>(x_2444.w, x_2444.w, x_2444.w)) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : vec3<f32> = u_xlat33;
    let x_2453 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_2452, x_2453);
    let x_2455 : f32 = u_xlat79;
    u_xlat79 = max(x_2455, 0.00006103515625f);
    let x_2458 : f32 = u_xlat79;
    u_xlat80 = inverseSqrt(x_2458);
    let x_2460 : f32 = u_xlat80;
    let x_2462 : vec3<f32> = u_xlat33;
    let x_2463 : vec3<f32> = (vec3<f32>(x_2460, x_2460, x_2460) * x_2462);
    let x_2464 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
    let x_2466 : f32 = u_xlat79;
    u_xlat81 = (1.0f / x_2466);
    let x_2468 : f32 = u_xlat79;
    let x_2469 : i32 = u_xlati28;
    let x_2471 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2469].x;
    u_xlat79 = (x_2468 * x_2471);
    let x_2473 : f32 = u_xlat79;
    let x_2475 : f32 = u_xlat79;
    u_xlat79 = ((-(x_2473) * x_2475) + 1.0f);
    let x_2478 : f32 = u_xlat79;
    u_xlat79 = max(x_2478, 0.0f);
    let x_2480 : f32 = u_xlat79;
    let x_2481 : f32 = u_xlat79;
    u_xlat79 = (x_2480 * x_2481);
    let x_2483 : f32 = u_xlat79;
    let x_2484 : f32 = u_xlat81;
    u_xlat79 = (x_2483 * x_2484);
    let x_2486 : i32 = u_xlati28;
    let x_2488 : vec4<f32> = x_2441.x_AdditionalLightsSpotDir[x_2486];
    let x_2490 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2488.x, x_2488.y, x_2488.z), vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
    let x_2493 : f32 = u_xlat81;
    let x_2494 : i32 = u_xlati28;
    let x_2496 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2494].z;
    let x_2498 : i32 = u_xlati28;
    let x_2500 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2498].w;
    u_xlat81 = ((x_2493 * x_2496) + x_2500);
    let x_2502 : f32 = u_xlat81;
    u_xlat81 = clamp(x_2502, 0.0f, 1.0f);
    let x_2504 : f32 = u_xlat81;
    let x_2505 : f32 = u_xlat81;
    u_xlat81 = (x_2504 * x_2505);
    let x_2507 : f32 = u_xlat79;
    let x_2508 : f32 = u_xlat81;
    u_xlat79 = (x_2507 * x_2508);
    let x_2512 : i32 = u_xlati28;
    let x_2514 : f32 = x_508.x_AdditionalShadowParams[x_2512].w;
    u_xlati81 = i32(x_2514);
    let x_2517 : i32 = u_xlati81;
    u_xlatb82 = (x_2517 >= 0i);
    let x_2519 : bool = u_xlatb82;
    if (x_2519) {
      let x_2523 : i32 = u_xlati28;
      let x_2525 : f32 = x_508.x_AdditionalShadowParams[x_2523].z;
      u_xlatb82 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2525, x_2525, x_2525, x_2525))));
      let x_2529 : bool = u_xlatb82;
      if (x_2529) {
        let x_2533 : vec4<f32> = u_xlat9;
        let x_2536 : vec4<f32> = u_xlat9;
        let x_2539 : vec4<bool> = (abs(vec4<f32>(x_2533.z, x_2533.z, x_2533.y, x_2533.z)) >= abs(vec4<f32>(x_2536.x, x_2536.y, x_2536.x, x_2536.x)));
        let x_2541 : vec3<bool> = vec3<bool>(x_2539.x, x_2539.y, x_2539.z);
        let x_2542 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
        let x_2545 : bool = u_xlatb10.y;
        let x_2547 : bool = u_xlatb10.x;
        u_xlatb82 = (x_2545 & x_2547);
        let x_2549 : vec4<f32> = u_xlat9;
        let x_2552 : vec4<bool> = (-(vec4<f32>(x_2549.z, x_2549.y, x_2549.z, x_2549.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2553 : vec3<bool> = vec3<bool>(x_2552.x, x_2552.y, x_2552.w);
        let x_2554 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2553.x, x_2553.y, x_2554.z, x_2553.z);
        let x_2557 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2557);
        let x_2562 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2562);
        let x_2567 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2567);
        let x_2570 : bool = u_xlatb10.z;
        if (x_2570) {
          let x_2575 : f32 = u_xlat10.y;
          x_2571 = x_2575;
        } else {
          let x_2577 : f32 = u_xlat84;
          x_2571 = x_2577;
        }
        let x_2578 : f32 = x_2571;
        u_xlat84 = x_2578;
        let x_2580 : bool = u_xlatb82;
        if (x_2580) {
          let x_2585 : f32 = u_xlat10.x;
          x_2581 = x_2585;
        } else {
          let x_2587 : f32 = u_xlat84;
          x_2581 = x_2587;
        }
        let x_2588 : f32 = x_2581;
        u_xlat82 = x_2588;
        let x_2589 : i32 = u_xlati28;
        let x_2591 : f32 = x_508.x_AdditionalShadowParams[x_2589].w;
        u_xlat84 = trunc(x_2591);
        let x_2593 : f32 = u_xlat82;
        let x_2594 : f32 = u_xlat84;
        u_xlat82 = (x_2593 + x_2594);
        let x_2596 : f32 = u_xlat82;
        u_xlati81 = i32(x_2596);
      }
      let x_2598 : i32 = u_xlati81;
      u_xlati81 = (x_2598 << bitcast<u32>(2i));
      let x_2600 : vec3<f32> = vs_INTERP7;
      let x_2603 : i32 = u_xlati81;
      let x_2606 : i32 = u_xlati81;
      let x_2610 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2603 + 1i) / 4i)][((x_2606 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2600.y, x_2600.y, x_2600.y, x_2600.y) * x_2610);
      let x_2612 : i32 = u_xlati81;
      let x_2614 : i32 = u_xlati81;
      let x_2617 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_2612 / 4i)][(x_2614 % 4i)];
      let x_2618 : vec3<f32> = vs_INTERP7;
      let x_2621 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2617 * vec4<f32>(x_2618.x, x_2618.x, x_2618.x, x_2618.x)) + x_2621);
      let x_2623 : i32 = u_xlati81;
      let x_2626 : i32 = u_xlati81;
      let x_2630 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2623 + 2i) / 4i)][((x_2626 + 2i) % 4i)];
      let x_2631 : vec3<f32> = vs_INTERP7;
      let x_2634 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2630 * vec4<f32>(x_2631.z, x_2631.z, x_2631.z, x_2631.z)) + x_2634);
      let x_2636 : vec4<f32> = u_xlat10;
      let x_2637 : i32 = u_xlati81;
      let x_2640 : i32 = u_xlati81;
      let x_2644 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2637 + 3i) / 4i)][((x_2640 + 3i) % 4i)];
      u_xlat10 = (x_2636 + x_2644);
      let x_2646 : vec4<f32> = u_xlat10;
      let x_2648 : vec4<f32> = u_xlat10;
      let x_2650 : vec3<f32> = (vec3<f32>(x_2646.x, x_2646.y, x_2646.z) / vec3<f32>(x_2648.w, x_2648.w, x_2648.w));
      let x_2651 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
      let x_2654 : i32 = u_xlati28;
      let x_2656 : f32 = x_508.x_AdditionalShadowParams[x_2654].y;
      u_xlatb81 = (0.0f < x_2656);
      let x_2658 : bool = u_xlatb81;
      if (x_2658) {
        let x_2661 : i32 = u_xlati28;
        let x_2663 : f32 = x_508.x_AdditionalShadowParams[x_2661].y;
        u_xlatb81 = (1.0f == x_2663);
        let x_2665 : bool = u_xlatb81;
        if (x_2665) {
          let x_2668 : vec4<f32> = u_xlat10;
          let x_2672 : vec4<f32> = x_508.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2668.x, x_2668.y, x_2668.x, x_2668.y) + x_2672);
          let x_2675 : vec4<f32> = u_xlat11;
          let x_2676 : vec2<f32> = vec2<f32>(x_2675.x, x_2675.y);
          let x_2678 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
          let x_2686 : vec3<f32> = txVec30;
          let x_2688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2686.xy, x_2686.z);
          u_xlat12.x = x_2688;
          let x_2691 : vec4<f32> = u_xlat11;
          let x_2692 : vec2<f32> = vec2<f32>(x_2691.z, x_2691.w);
          let x_2694 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2692.x, x_2692.y, x_2694);
          let x_2701 : vec3<f32> = txVec31;
          let x_2703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2701.xy, x_2701.z);
          u_xlat12.y = x_2703;
          let x_2705 : vec4<f32> = u_xlat10;
          let x_2709 : vec4<f32> = x_508.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.y) + x_2709);
          let x_2712 : vec4<f32> = u_xlat11;
          let x_2713 : vec2<f32> = vec2<f32>(x_2712.x, x_2712.y);
          let x_2715 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2713.x, x_2713.y, x_2715);
          let x_2722 : vec3<f32> = txVec32;
          let x_2724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2722.xy, x_2722.z);
          u_xlat12.z = x_2724;
          let x_2727 : vec4<f32> = u_xlat11;
          let x_2728 : vec2<f32> = vec2<f32>(x_2727.z, x_2727.w);
          let x_2730 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
          let x_2737 : vec3<f32> = txVec33;
          let x_2739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
          u_xlat12.w = x_2739;
          let x_2741 : vec4<f32> = u_xlat12;
          u_xlat81 = dot(x_2741, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2744 : i32 = u_xlati28;
          let x_2746 : f32 = x_508.x_AdditionalShadowParams[x_2744].y;
          u_xlatb82 = (2.0f == x_2746);
          let x_2748 : bool = u_xlatb82;
          if (x_2748) {
            let x_2751 : vec4<f32> = u_xlat10;
            let x_2755 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2758 : vec2<f32> = ((vec2<f32>(x_2751.x, x_2751.y) * vec2<f32>(x_2755.z, x_2755.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2759 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2758.x, x_2758.y, x_2759.z, x_2759.w);
            let x_2761 : vec4<f32> = u_xlat11;
            let x_2763 : vec2<f32> = floor(vec2<f32>(x_2761.x, x_2761.y));
            let x_2764 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
            let x_2767 : vec4<f32> = u_xlat10;
            let x_2770 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2773 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2767.x, x_2767.y) * vec2<f32>(x_2770.z, x_2770.w)) + -(vec2<f32>(x_2773.x, x_2773.y)));
            let x_2777 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2777.x, x_2777.x, x_2777.y, x_2777.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2780 : vec4<f32> = u_xlat12;
            let x_2782 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2780.x, x_2780.x, x_2780.z, x_2780.z) * vec4<f32>(x_2782.x, x_2782.x, x_2782.z, x_2782.z));
            let x_2785 : vec4<f32> = u_xlat13;
            let x_2787 : vec2<f32> = (vec2<f32>(x_2785.y, x_2785.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2788 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2787.x, x_2788.y, x_2787.y, x_2788.w);
            let x_2790 : vec4<f32> = u_xlat13;
            let x_2793 : vec2<f32> = u_xlat61;
            let x_2795 : vec2<f32> = ((vec2<f32>(x_2790.x, x_2790.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2793));
            let x_2796 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2795.x, x_2795.y, x_2796.z, x_2796.w);
            let x_2799 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2799) + vec2<f32>(1.0f, 1.0f));
            let x_2802 : vec2<f32> = u_xlat61;
            let x_2803 : vec2<f32> = min(x_2802, vec2<f32>(0.0f, 0.0f));
            let x_2804 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2803.x, x_2803.y, x_2804.z, x_2804.w);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2809 : vec4<f32> = u_xlat14;
            let x_2812 : vec2<f32> = u_xlat63;
            let x_2813 : vec2<f32> = ((-(vec2<f32>(x_2806.x, x_2806.y)) * vec2<f32>(x_2809.x, x_2809.y)) + x_2812);
            let x_2814 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2813.x, x_2813.y, x_2814.z, x_2814.w);
            let x_2816 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2816, vec2<f32>(0.0f, 0.0f));
            let x_2818 : vec2<f32> = u_xlat61;
            let x_2820 : vec2<f32> = u_xlat61;
            let x_2822 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2818) * x_2820) + vec2<f32>(x_2822.y, x_2822.w));
            let x_2825 : vec4<f32> = u_xlat14;
            let x_2827 : vec2<f32> = (vec2<f32>(x_2825.x, x_2825.y) + vec2<f32>(1.0f, 1.0f));
            let x_2828 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
            let x_2830 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2830 + vec2<f32>(1.0f, 1.0f));
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2834 : vec2<f32> = (vec2<f32>(x_2832.x, x_2832.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2835 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
            let x_2837 : vec2<f32> = u_xlat63;
            let x_2838 : vec2<f32> = (x_2837 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2838.x, x_2838.y, x_2839.z, x_2839.w);
            let x_2841 : vec4<f32> = u_xlat14;
            let x_2843 : vec2<f32> = (vec2<f32>(x_2841.x, x_2841.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2844 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2843.x, x_2843.y, x_2844.z, x_2844.w);
            let x_2846 : vec2<f32> = u_xlat61;
            let x_2847 : vec2<f32> = (x_2846 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2848 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2847.x, x_2847.y, x_2848.z, x_2848.w);
            let x_2850 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2850.y, x_2850.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2854 : f32 = u_xlat14.x;
            u_xlat15.z = x_2854;
            let x_2857 : f32 = u_xlat61.x;
            u_xlat15.w = x_2857;
            let x_2860 : f32 = u_xlat16.x;
            u_xlat13.z = x_2860;
            let x_2863 : f32 = u_xlat12.x;
            u_xlat13.w = x_2863;
            let x_2865 : vec4<f32> = u_xlat13;
            let x_2867 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2865.z, x_2865.w, x_2865.x, x_2865.z) + vec4<f32>(x_2867.z, x_2867.w, x_2867.x, x_2867.z));
            let x_2871 : f32 = u_xlat15.y;
            u_xlat14.z = x_2871;
            let x_2874 : f32 = u_xlat61.y;
            u_xlat14.w = x_2874;
            let x_2877 : f32 = u_xlat13.y;
            u_xlat16.z = x_2877;
            let x_2880 : f32 = u_xlat12.z;
            u_xlat16.w = x_2880;
            let x_2882 : vec4<f32> = u_xlat14;
            let x_2884 : vec4<f32> = u_xlat16;
            let x_2886 : vec3<f32> = (vec3<f32>(x_2882.z, x_2882.y, x_2882.w) + vec3<f32>(x_2884.z, x_2884.y, x_2884.w));
            let x_2887 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2887.w);
            let x_2889 : vec4<f32> = u_xlat13;
            let x_2891 : vec4<f32> = u_xlat17;
            let x_2893 : vec3<f32> = (vec3<f32>(x_2889.x, x_2889.z, x_2889.w) / vec3<f32>(x_2891.z, x_2891.w, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2893.x, x_2893.y, x_2893.z, x_2894.w);
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2898 : vec3<f32> = (vec3<f32>(x_2896.x, x_2896.y, x_2896.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2899 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat16;
            let x_2903 : vec4<f32> = u_xlat12;
            let x_2905 : vec3<f32> = (vec3<f32>(x_2901.z, x_2901.y, x_2901.w) / vec3<f32>(x_2903.x, x_2903.y, x_2903.z));
            let x_2906 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
            let x_2908 : vec4<f32> = u_xlat14;
            let x_2910 : vec3<f32> = (vec3<f32>(x_2908.x, x_2908.y, x_2908.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2911 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat13;
            let x_2916 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2918 : vec3<f32> = (vec3<f32>(x_2913.y, x_2913.x, x_2913.z) * vec3<f32>(x_2916.x, x_2916.x, x_2916.x));
            let x_2919 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat14;
            let x_2924 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2926 : vec3<f32> = (vec3<f32>(x_2921.x, x_2921.y, x_2921.z) * vec3<f32>(x_2924.y, x_2924.y, x_2924.y));
            let x_2927 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
            let x_2930 : f32 = u_xlat14.x;
            u_xlat13.w = x_2930;
            let x_2932 : vec4<f32> = u_xlat11;
            let x_2935 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2938 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2932.x, x_2932.y, x_2932.x, x_2932.y) * vec4<f32>(x_2935.x, x_2935.y, x_2935.x, x_2935.y)) + vec4<f32>(x_2938.y, x_2938.w, x_2938.x, x_2938.w));
            let x_2941 : vec4<f32> = u_xlat11;
            let x_2944 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2947 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2941.x, x_2941.y) * vec2<f32>(x_2944.x, x_2944.y)) + vec2<f32>(x_2947.z, x_2947.w));
            let x_2951 : f32 = u_xlat13.y;
            u_xlat14.w = x_2951;
            let x_2953 : vec4<f32> = u_xlat14;
            let x_2954 : vec2<f32> = vec2<f32>(x_2953.y, x_2953.z);
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2955.x, x_2954.x, x_2955.z, x_2954.y);
            let x_2957 : vec4<f32> = u_xlat11;
            let x_2960 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y) * vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y)) + vec4<f32>(x_2963.x, x_2963.y, x_2963.z, x_2963.y));
            let x_2966 : vec4<f32> = u_xlat11;
            let x_2969 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2972 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2966.x, x_2966.y, x_2966.x, x_2966.y) * vec4<f32>(x_2969.x, x_2969.y, x_2969.x, x_2969.y)) + vec4<f32>(x_2972.w, x_2972.y, x_2972.w, x_2972.z));
            let x_2975 : vec4<f32> = u_xlat11;
            let x_2978 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2981 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y) * vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.y)) + vec4<f32>(x_2981.x, x_2981.w, x_2981.z, x_2981.w));
            let x_2984 : vec4<f32> = u_xlat12;
            let x_2986 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2984.x, x_2984.x, x_2984.x, x_2984.y) * vec4<f32>(x_2986.z, x_2986.w, x_2986.y, x_2986.z));
            let x_2989 : vec4<f32> = u_xlat12;
            let x_2991 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2989.y, x_2989.y, x_2989.z, x_2989.z) * x_2991);
            let x_2994 : f32 = u_xlat12.z;
            let x_2996 : f32 = u_xlat17.y;
            u_xlat82 = (x_2994 * x_2996);
            let x_2999 : vec4<f32> = u_xlat15;
            let x_3000 : vec2<f32> = vec2<f32>(x_2999.x, x_2999.y);
            let x_3002 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3000.x, x_3000.y, x_3002);
            let x_3009 : vec3<f32> = txVec34;
            let x_3011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3009.xy, x_3009.z);
            u_xlat84 = x_3011;
            let x_3013 : vec4<f32> = u_xlat15;
            let x_3014 : vec2<f32> = vec2<f32>(x_3013.z, x_3013.w);
            let x_3016 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3014.x, x_3014.y, x_3016);
            let x_3024 : vec3<f32> = txVec35;
            let x_3026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
            u_xlat85 = x_3026;
            let x_3027 : f32 = u_xlat85;
            let x_3029 : f32 = u_xlat18.y;
            u_xlat85 = (x_3027 * x_3029);
            let x_3032 : f32 = u_xlat18.x;
            let x_3033 : f32 = u_xlat84;
            let x_3035 : f32 = u_xlat85;
            u_xlat84 = ((x_3032 * x_3033) + x_3035);
            let x_3038 : vec2<f32> = u_xlat61;
            let x_3040 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
            let x_3047 : vec3<f32> = txVec36;
            let x_3049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
            u_xlat85 = x_3049;
            let x_3051 : f32 = u_xlat18.z;
            let x_3052 : f32 = u_xlat85;
            let x_3054 : f32 = u_xlat84;
            u_xlat84 = ((x_3051 * x_3052) + x_3054);
            let x_3057 : vec4<f32> = u_xlat14;
            let x_3058 : vec2<f32> = vec2<f32>(x_3057.x, x_3057.y);
            let x_3060 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3058.x, x_3058.y, x_3060);
            let x_3067 : vec3<f32> = txVec37;
            let x_3069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3067.xy, x_3067.z);
            u_xlat85 = x_3069;
            let x_3071 : f32 = u_xlat18.w;
            let x_3072 : f32 = u_xlat85;
            let x_3074 : f32 = u_xlat84;
            u_xlat84 = ((x_3071 * x_3072) + x_3074);
            let x_3077 : vec4<f32> = u_xlat16;
            let x_3078 : vec2<f32> = vec2<f32>(x_3077.x, x_3077.y);
            let x_3080 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
            let x_3087 : vec3<f32> = txVec38;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat85 = x_3089;
            let x_3091 : f32 = u_xlat19.x;
            let x_3092 : f32 = u_xlat85;
            let x_3094 : f32 = u_xlat84;
            u_xlat84 = ((x_3091 * x_3092) + x_3094);
            let x_3097 : vec4<f32> = u_xlat16;
            let x_3098 : vec2<f32> = vec2<f32>(x_3097.z, x_3097.w);
            let x_3100 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3098.x, x_3098.y, x_3100);
            let x_3107 : vec3<f32> = txVec39;
            let x_3109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3107.xy, x_3107.z);
            u_xlat85 = x_3109;
            let x_3111 : f32 = u_xlat19.y;
            let x_3112 : f32 = u_xlat85;
            let x_3114 : f32 = u_xlat84;
            u_xlat84 = ((x_3111 * x_3112) + x_3114);
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3118 : vec2<f32> = vec2<f32>(x_3117.z, x_3117.w);
            let x_3120 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3118.x, x_3118.y, x_3120);
            let x_3127 : vec3<f32> = txVec40;
            let x_3129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3127.xy, x_3127.z);
            u_xlat85 = x_3129;
            let x_3131 : f32 = u_xlat19.z;
            let x_3132 : f32 = u_xlat85;
            let x_3134 : f32 = u_xlat84;
            u_xlat84 = ((x_3131 * x_3132) + x_3134);
            let x_3137 : vec4<f32> = u_xlat13;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
            let x_3140 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec41;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat85 = x_3149;
            let x_3151 : f32 = u_xlat19.w;
            let x_3152 : f32 = u_xlat85;
            let x_3154 : f32 = u_xlat84;
            u_xlat84 = ((x_3151 * x_3152) + x_3154);
            let x_3157 : vec4<f32> = u_xlat13;
            let x_3158 : vec2<f32> = vec2<f32>(x_3157.z, x_3157.w);
            let x_3160 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec42;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat85 = x_3169;
            let x_3170 : f32 = u_xlat82;
            let x_3171 : f32 = u_xlat85;
            let x_3173 : f32 = u_xlat84;
            u_xlat81 = ((x_3170 * x_3171) + x_3173);
          } else {
            let x_3176 : vec4<f32> = u_xlat10;
            let x_3179 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3182 : vec2<f32> = ((vec2<f32>(x_3176.x, x_3176.y) * vec2<f32>(x_3179.z, x_3179.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3183 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3182.x, x_3182.y, x_3183.z, x_3183.w);
            let x_3185 : vec4<f32> = u_xlat11;
            let x_3187 : vec2<f32> = floor(vec2<f32>(x_3185.x, x_3185.y));
            let x_3188 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3187.x, x_3187.y, x_3188.z, x_3188.w);
            let x_3190 : vec4<f32> = u_xlat10;
            let x_3193 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3196 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3190.x, x_3190.y) * vec2<f32>(x_3193.z, x_3193.w)) + -(vec2<f32>(x_3196.x, x_3196.y)));
            let x_3200 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3200.x, x_3200.x, x_3200.y, x_3200.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3203 : vec4<f32> = u_xlat12;
            let x_3205 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3203.x, x_3203.x, x_3203.z, x_3203.z) * vec4<f32>(x_3205.x, x_3205.x, x_3205.z, x_3205.z));
            let x_3208 : vec4<f32> = u_xlat13;
            let x_3210 : vec2<f32> = (vec2<f32>(x_3208.y, x_3208.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3211 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3211.x, x_3210.x, x_3211.z, x_3210.y);
            let x_3213 : vec4<f32> = u_xlat13;
            let x_3216 : vec2<f32> = u_xlat61;
            let x_3218 : vec2<f32> = ((vec2<f32>(x_3213.x, x_3213.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3216));
            let x_3219 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3218.x, x_3219.y, x_3218.y, x_3219.w);
            let x_3221 : vec2<f32> = u_xlat61;
            let x_3223 : vec2<f32> = (-(x_3221) + vec2<f32>(1.0f, 1.0f));
            let x_3224 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3223.x, x_3223.y, x_3224.z, x_3224.w);
            let x_3226 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3226, vec2<f32>(0.0f, 0.0f));
            let x_3228 : vec2<f32> = u_xlat63;
            let x_3230 : vec2<f32> = u_xlat63;
            let x_3232 : vec4<f32> = u_xlat13;
            let x_3234 : vec2<f32> = ((-(x_3228) * x_3230) + vec2<f32>(x_3232.x, x_3232.y));
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3234.x, x_3234.y, x_3235.z, x_3235.w);
            let x_3237 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3237, vec2<f32>(0.0f, 0.0f));
            let x_3240 : vec2<f32> = u_xlat63;
            let x_3242 : vec2<f32> = u_xlat63;
            let x_3244 : vec4<f32> = u_xlat12;
            let x_3246 : vec2<f32> = ((-(x_3240) * x_3242) + vec2<f32>(x_3244.y, x_3244.w));
            let x_3247 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3246.x, x_3247.y, x_3246.y);
            let x_3249 : vec4<f32> = u_xlat13;
            let x_3251 : vec2<f32> = (vec2<f32>(x_3249.x, x_3249.y) + vec2<f32>(2.0f, 2.0f));
            let x_3252 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3251.x, x_3251.y, x_3252.z, x_3252.w);
            let x_3254 : vec3<f32> = u_xlat37;
            let x_3256 : vec2<f32> = (vec2<f32>(x_3254.x, x_3254.z) + vec2<f32>(2.0f, 2.0f));
            let x_3257 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3257.x, x_3256.x, x_3257.z, x_3256.y);
            let x_3260 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3260 * 0.08163200318813323975f);
            let x_3263 : vec4<f32> = u_xlat12;
            let x_3265 : vec3<f32> = (vec3<f32>(x_3263.z, x_3263.x, x_3263.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3266 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
            let x_3268 : vec4<f32> = u_xlat13;
            let x_3270 : vec2<f32> = (vec2<f32>(x_3268.x, x_3268.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3271 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3274 : f32 = u_xlat16.y;
            u_xlat15.x = x_3274;
            let x_3276 : vec2<f32> = u_xlat61;
            let x_3279 : vec2<f32> = ((vec2<f32>(x_3276.x, x_3276.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3280 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3280.x, x_3279.x, x_3280.z, x_3279.y);
            let x_3282 : vec2<f32> = u_xlat61;
            let x_3285 : vec2<f32> = ((vec2<f32>(x_3282.x, x_3282.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3286 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3285.x, x_3286.y, x_3285.y, x_3286.w);
            let x_3289 : f32 = u_xlat12.x;
            u_xlat13.y = x_3289;
            let x_3292 : f32 = u_xlat14.y;
            u_xlat13.w = x_3292;
            let x_3294 : vec4<f32> = u_xlat13;
            let x_3295 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3294 + x_3295);
            let x_3297 : vec2<f32> = u_xlat61;
            let x_3300 : vec2<f32> = ((vec2<f32>(x_3297.y, x_3297.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3301 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3301.x, x_3300.x, x_3301.z, x_3300.y);
            let x_3303 : vec2<f32> = u_xlat61;
            let x_3306 : vec2<f32> = ((vec2<f32>(x_3303.y, x_3303.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3307 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3306.x, x_3307.y, x_3306.y, x_3307.w);
            let x_3310 : f32 = u_xlat12.y;
            u_xlat14.y = x_3310;
            let x_3312 : vec4<f32> = u_xlat14;
            let x_3313 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3312 + x_3313);
            let x_3315 : vec4<f32> = u_xlat13;
            let x_3316 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3315 / x_3316);
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3318 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3320 : vec4<f32> = u_xlat14;
            let x_3321 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3320 / x_3321);
            let x_3323 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3323 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3325 : vec4<f32> = u_xlat13;
            let x_3328 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3325.w, x_3325.x, x_3325.y, x_3325.z) * vec4<f32>(x_3328.x, x_3328.x, x_3328.x, x_3328.x));
            let x_3331 : vec4<f32> = u_xlat14;
            let x_3334 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3331.x, x_3331.w, x_3331.y, x_3331.z) * vec4<f32>(x_3334.y, x_3334.y, x_3334.y, x_3334.y));
            let x_3337 : vec4<f32> = u_xlat13;
            let x_3338 : vec3<f32> = vec3<f32>(x_3337.y, x_3337.z, x_3337.w);
            let x_3339 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3338.x, x_3339.y, x_3338.y, x_3338.z);
            let x_3342 : f32 = u_xlat14.x;
            u_xlat16.y = x_3342;
            let x_3344 : vec4<f32> = u_xlat11;
            let x_3347 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3350 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3344.x, x_3344.y, x_3344.x, x_3344.y) * vec4<f32>(x_3347.x, x_3347.y, x_3347.x, x_3347.y)) + vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3350.y));
            let x_3353 : vec4<f32> = u_xlat11;
            let x_3356 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3359 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3353.x, x_3353.y) * vec2<f32>(x_3356.x, x_3356.y)) + vec2<f32>(x_3359.w, x_3359.y));
            let x_3363 : f32 = u_xlat16.y;
            u_xlat13.y = x_3363;
            let x_3366 : f32 = u_xlat14.z;
            u_xlat16.y = x_3366;
            let x_3368 : vec4<f32> = u_xlat11;
            let x_3371 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3374 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3368.x, x_3368.y, x_3368.x, x_3368.y) * vec4<f32>(x_3371.x, x_3371.y, x_3371.x, x_3371.y)) + vec4<f32>(x_3374.x, x_3374.y, x_3374.z, x_3374.y));
            let x_3377 : vec4<f32> = u_xlat11;
            let x_3380 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3383 : vec4<f32> = u_xlat16;
            let x_3385 : vec2<f32> = ((vec2<f32>(x_3377.x, x_3377.y) * vec2<f32>(x_3380.x, x_3380.y)) + vec2<f32>(x_3383.w, x_3383.y));
            let x_3386 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3385.x, x_3385.y, x_3386.z, x_3386.w);
            let x_3389 : f32 = u_xlat16.y;
            u_xlat13.z = x_3389;
            let x_3391 : vec4<f32> = u_xlat11;
            let x_3394 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3397 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3391.x, x_3391.y, x_3391.x, x_3391.y) * vec4<f32>(x_3394.x, x_3394.y, x_3394.x, x_3394.y)) + vec4<f32>(x_3397.x, x_3397.y, x_3397.x, x_3397.z));
            let x_3401 : f32 = u_xlat14.w;
            u_xlat16.y = x_3401;
            let x_3404 : vec4<f32> = u_xlat11;
            let x_3407 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3410 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3404.x, x_3404.y, x_3404.x, x_3404.y) * vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y)) + vec4<f32>(x_3410.x, x_3410.y, x_3410.z, x_3410.y));
            let x_3414 : vec4<f32> = u_xlat11;
            let x_3417 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3420 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3414.x, x_3414.y) * vec2<f32>(x_3417.x, x_3417.y)) + vec2<f32>(x_3420.w, x_3420.y));
            let x_3424 : f32 = u_xlat16.y;
            u_xlat13.w = x_3424;
            let x_3427 : vec4<f32> = u_xlat11;
            let x_3430 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3433 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3427.x, x_3427.y) * vec2<f32>(x_3430.x, x_3430.y)) + vec2<f32>(x_3433.x, x_3433.w));
            let x_3436 : vec4<f32> = u_xlat16;
            let x_3437 : vec3<f32> = vec3<f32>(x_3436.x, x_3436.z, x_3436.w);
            let x_3438 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3437.x, x_3438.y, x_3437.y, x_3437.z);
            let x_3440 : vec4<f32> = u_xlat11;
            let x_3443 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3446 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3440.x, x_3440.y, x_3440.x, x_3440.y) * vec4<f32>(x_3443.x, x_3443.y, x_3443.x, x_3443.y)) + vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3446.y));
            let x_3450 : vec4<f32> = u_xlat11;
            let x_3453 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3456 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3450.x, x_3450.y) * vec2<f32>(x_3453.x, x_3453.y)) + vec2<f32>(x_3456.w, x_3456.y));
            let x_3460 : f32 = u_xlat13.x;
            u_xlat14.x = x_3460;
            let x_3462 : vec4<f32> = u_xlat11;
            let x_3465 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3468 : vec4<f32> = u_xlat14;
            let x_3470 : vec2<f32> = ((vec2<f32>(x_3462.x, x_3462.y) * vec2<f32>(x_3465.x, x_3465.y)) + vec2<f32>(x_3468.x, x_3468.y));
            let x_3471 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3470.x, x_3470.y, x_3471.z, x_3471.w);
            let x_3474 : vec4<f32> = u_xlat12;
            let x_3476 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3474.x, x_3474.x, x_3474.x, x_3474.x) * x_3476);
            let x_3479 : vec4<f32> = u_xlat12;
            let x_3481 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3479.y, x_3479.y, x_3479.y, x_3479.y) * x_3481);
            let x_3484 : vec4<f32> = u_xlat12;
            let x_3486 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3484.z, x_3484.z, x_3484.z, x_3484.z) * x_3486);
            let x_3488 : vec4<f32> = u_xlat12;
            let x_3490 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3488.w, x_3488.w, x_3488.w, x_3488.w) * x_3490);
            let x_3493 : vec4<f32> = u_xlat17;
            let x_3494 : vec2<f32> = vec2<f32>(x_3493.x, x_3493.y);
            let x_3496 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec43;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat82 = x_3505;
            let x_3507 : vec4<f32> = u_xlat17;
            let x_3508 : vec2<f32> = vec2<f32>(x_3507.z, x_3507.w);
            let x_3510 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3508.x, x_3508.y, x_3510);
            let x_3517 : vec3<f32> = txVec44;
            let x_3519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3517.xy, x_3517.z);
            u_xlat84 = x_3519;
            let x_3520 : f32 = u_xlat84;
            let x_3522 : f32 = u_xlat22.y;
            u_xlat84 = (x_3520 * x_3522);
            let x_3525 : f32 = u_xlat22.x;
            let x_3526 : f32 = u_xlat82;
            let x_3528 : f32 = u_xlat84;
            u_xlat82 = ((x_3525 * x_3526) + x_3528);
            let x_3531 : vec2<f32> = u_xlat61;
            let x_3533 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
            let x_3540 : vec3<f32> = txVec45;
            let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
            u_xlat84 = x_3542;
            let x_3544 : f32 = u_xlat22.z;
            let x_3545 : f32 = u_xlat84;
            let x_3547 : f32 = u_xlat82;
            u_xlat82 = ((x_3544 * x_3545) + x_3547);
            let x_3550 : vec4<f32> = u_xlat20;
            let x_3551 : vec2<f32> = vec2<f32>(x_3550.x, x_3550.y);
            let x_3553 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec46;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat84 = x_3562;
            let x_3564 : f32 = u_xlat22.w;
            let x_3565 : f32 = u_xlat84;
            let x_3567 : f32 = u_xlat82;
            u_xlat82 = ((x_3564 * x_3565) + x_3567);
            let x_3570 : vec4<f32> = u_xlat18;
            let x_3571 : vec2<f32> = vec2<f32>(x_3570.x, x_3570.y);
            let x_3573 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec47;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat84 = x_3582;
            let x_3584 : f32 = u_xlat23.x;
            let x_3585 : f32 = u_xlat84;
            let x_3587 : f32 = u_xlat82;
            u_xlat82 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec4<f32> = u_xlat18;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.z, x_3590.w);
            let x_3593 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec48;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat84 = x_3602;
            let x_3604 : f32 = u_xlat23.y;
            let x_3605 : f32 = u_xlat84;
            let x_3607 : f32 = u_xlat82;
            u_xlat82 = ((x_3604 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat19;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.x, x_3610.y);
            let x_3613 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec49;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat84 = x_3622;
            let x_3624 : f32 = u_xlat23.z;
            let x_3625 : f32 = u_xlat84;
            let x_3627 : f32 = u_xlat82;
            u_xlat82 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat20;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.z, x_3630.w);
            let x_3633 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec50;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat84 = x_3642;
            let x_3644 : f32 = u_xlat23.w;
            let x_3645 : f32 = u_xlat84;
            let x_3647 : f32 = u_xlat82;
            u_xlat82 = ((x_3644 * x_3645) + x_3647);
            let x_3650 : vec4<f32> = u_xlat21;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.x, x_3650.y);
            let x_3653 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec51;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat84 = x_3662;
            let x_3664 : f32 = u_xlat24.x;
            let x_3665 : f32 = u_xlat84;
            let x_3667 : f32 = u_xlat82;
            u_xlat82 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec4<f32> = u_xlat21;
            let x_3671 : vec2<f32> = vec2<f32>(x_3670.z, x_3670.w);
            let x_3673 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
            let x_3680 : vec3<f32> = txVec52;
            let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
            u_xlat84 = x_3682;
            let x_3684 : f32 = u_xlat24.y;
            let x_3685 : f32 = u_xlat84;
            let x_3687 : f32 = u_xlat82;
            u_xlat82 = ((x_3684 * x_3685) + x_3687);
            let x_3690 : vec2<f32> = u_xlat38;
            let x_3692 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3690.x, x_3690.y, x_3692);
            let x_3699 : vec3<f32> = txVec53;
            let x_3701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3699.xy, x_3699.z);
            u_xlat84 = x_3701;
            let x_3703 : f32 = u_xlat24.z;
            let x_3704 : f32 = u_xlat84;
            let x_3706 : f32 = u_xlat82;
            u_xlat82 = ((x_3703 * x_3704) + x_3706);
            let x_3709 : vec2<f32> = u_xlat69;
            let x_3711 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3709.x, x_3709.y, x_3711);
            let x_3718 : vec3<f32> = txVec54;
            let x_3720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3718.xy, x_3718.z);
            u_xlat84 = x_3720;
            let x_3722 : f32 = u_xlat24.w;
            let x_3723 : f32 = u_xlat84;
            let x_3725 : f32 = u_xlat82;
            u_xlat82 = ((x_3722 * x_3723) + x_3725);
            let x_3728 : vec4<f32> = u_xlat16;
            let x_3729 : vec2<f32> = vec2<f32>(x_3728.x, x_3728.y);
            let x_3731 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3729.x, x_3729.y, x_3731);
            let x_3738 : vec3<f32> = txVec55;
            let x_3740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3738.xy, x_3738.z);
            u_xlat84 = x_3740;
            let x_3742 : f32 = u_xlat12.x;
            let x_3743 : f32 = u_xlat84;
            let x_3745 : f32 = u_xlat82;
            u_xlat82 = ((x_3742 * x_3743) + x_3745);
            let x_3748 : vec4<f32> = u_xlat16;
            let x_3749 : vec2<f32> = vec2<f32>(x_3748.z, x_3748.w);
            let x_3751 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3749.x, x_3749.y, x_3751);
            let x_3758 : vec3<f32> = txVec56;
            let x_3760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3758.xy, x_3758.z);
            u_xlat84 = x_3760;
            let x_3762 : f32 = u_xlat12.y;
            let x_3763 : f32 = u_xlat84;
            let x_3765 : f32 = u_xlat82;
            u_xlat82 = ((x_3762 * x_3763) + x_3765);
            let x_3768 : vec2<f32> = u_xlat64;
            let x_3770 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3768.x, x_3768.y, x_3770);
            let x_3777 : vec3<f32> = txVec57;
            let x_3779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3777.xy, x_3777.z);
            u_xlat84 = x_3779;
            let x_3781 : f32 = u_xlat12.z;
            let x_3782 : f32 = u_xlat84;
            let x_3784 : f32 = u_xlat82;
            u_xlat82 = ((x_3781 * x_3782) + x_3784);
            let x_3787 : vec4<f32> = u_xlat11;
            let x_3788 : vec2<f32> = vec2<f32>(x_3787.x, x_3787.y);
            let x_3790 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
            let x_3797 : vec3<f32> = txVec58;
            let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
            u_xlat84 = x_3799;
            let x_3801 : f32 = u_xlat12.w;
            let x_3802 : f32 = u_xlat84;
            let x_3804 : f32 = u_xlat82;
            u_xlat81 = ((x_3801 * x_3802) + x_3804);
          }
        }
      } else {
        let x_3808 : vec4<f32> = u_xlat10;
        let x_3809 : vec2<f32> = vec2<f32>(x_3808.x, x_3808.y);
        let x_3811 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3809.x, x_3809.y, x_3811);
        let x_3818 : vec3<f32> = txVec59;
        let x_3820 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3818.xy, x_3818.z);
        u_xlat81 = x_3820;
      }
      let x_3821 : i32 = u_xlati28;
      let x_3823 : f32 = x_508.x_AdditionalShadowParams[x_3821].x;
      u_xlat82 = (1.0f + -(x_3823));
      let x_3826 : f32 = u_xlat81;
      let x_3827 : i32 = u_xlati28;
      let x_3829 : f32 = x_508.x_AdditionalShadowParams[x_3827].x;
      let x_3831 : f32 = u_xlat82;
      u_xlat81 = ((x_3826 * x_3829) + x_3831);
      let x_3834 : f32 = u_xlat10.z;
      u_xlatb82 = (0.0f >= x_3834);
      let x_3838 : f32 = u_xlat10.z;
      u_xlatb84 = (x_3838 >= 1.0f);
      let x_3840 : bool = u_xlatb82;
      let x_3841 : bool = u_xlatb84;
      u_xlatb82 = (x_3840 | x_3841);
      let x_3843 : bool = u_xlatb82;
      let x_3844 : f32 = u_xlat81;
      u_xlat81 = select(x_3844, 1.0f, x_3843);
    } else {
      u_xlat81 = 1.0f;
    }
    let x_3847 : f32 = u_xlat81;
    u_xlat82 = (-(x_3847) + 1.0f);
    let x_3850 : f32 = u_xlat76;
    let x_3851 : f32 = u_xlat82;
    let x_3853 : f32 = u_xlat81;
    u_xlat81 = ((x_3850 * x_3851) + x_3853);
    let x_3855 : f32 = u_xlat79;
    let x_3856 : f32 = u_xlat81;
    u_xlat79 = (x_3855 * x_3856);
    let x_3858 : vec4<f32> = u_xlat1;
    let x_3860 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_3858.x, x_3858.y, x_3858.z), vec3<f32>(x_3860.x, x_3860.y, x_3860.z));
    let x_3863 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3863, 0.0f, 1.0f);
    let x_3865 : f32 = u_xlat79;
    let x_3866 : f32 = u_xlat81;
    u_xlat79 = (x_3865 * x_3866);
    let x_3868 : f32 = u_xlat79;
    let x_3870 : i32 = u_xlati28;
    let x_3872 : vec4<f32> = x_2441.x_AdditionalLightsColor[x_3870];
    let x_3874 : vec3<f32> = (vec3<f32>(x_3868, x_3868, x_3868) * vec3<f32>(x_3872.x, x_3872.y, x_3872.z));
    let x_3875 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3874.x, x_3874.y, x_3874.z, x_3875.w);
    let x_3877 : vec3<f32> = u_xlat33;
    let x_3878 : f32 = u_xlat80;
    let x_3881 : vec3<f32> = u_xlat4;
    u_xlat33 = ((x_3877 * vec3<f32>(x_3878, x_3878, x_3878)) + x_3881);
    let x_3883 : vec3<f32> = u_xlat33;
    let x_3884 : vec3<f32> = u_xlat33;
    u_xlat28.x = dot(x_3883, x_3884);
    let x_3888 : f32 = u_xlat28.x;
    u_xlat28.x = max(x_3888, 1.17549435e-38f);
    let x_3892 : f32 = u_xlat28.x;
    u_xlat28.x = inverseSqrt(x_3892);
    let x_3895 : vec3<f32> = u_xlat28;
    let x_3897 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3895.x, x_3895.x, x_3895.x) * x_3897);
    let x_3899 : vec4<f32> = u_xlat1;
    let x_3901 : vec3<f32> = u_xlat33;
    u_xlat28.x = dot(vec3<f32>(x_3899.x, x_3899.y, x_3899.z), x_3901);
    let x_3905 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_3905, 0.0f, 1.0f);
    let x_3908 : vec4<f32> = u_xlat9;
    let x_3910 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_3908.x, x_3908.y, x_3908.z), x_3910);
    let x_3912 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3912, 0.0f, 1.0f);
    let x_3915 : f32 = u_xlat28.x;
    let x_3917 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3915 * x_3917);
    let x_3921 : f32 = u_xlat28.x;
    let x_3923 : f32 = u_xlat8.x;
    u_xlat28.x = ((x_3921 * x_3923) + 1.00001001358032226562f);
    let x_3927 : f32 = u_xlat79;
    let x_3928 : f32 = u_xlat79;
    u_xlat79 = (x_3927 * x_3928);
    let x_3931 : f32 = u_xlat28.x;
    let x_3933 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3931 * x_3933);
    let x_3936 : f32 = u_xlat79;
    u_xlat79 = max(x_3936, 0.10000000149011611938f);
    let x_3939 : f32 = u_xlat28.x;
    let x_3940 : f32 = u_xlat79;
    u_xlat28.x = (x_3939 * x_3940);
    let x_3943 : f32 = u_xlat27;
    let x_3945 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3943 * x_3945);
    let x_3948 : f32 = u_xlat77;
    let x_3950 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3948 / x_3950);
    let x_3953 : vec4<f32> = u_xlat0;
    let x_3955 : vec3<f32> = u_xlat28;
    let x_3958 : vec4<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_3953.x, x_3953.y, x_3953.z) * vec3<f32>(x_3955.x, x_3955.x, x_3955.x)) + vec3<f32>(x_3958.x, x_3958.y, x_3958.z));
    let x_3961 : vec3<f32> = u_xlat33;
    let x_3962 : vec4<f32> = u_xlat10;
    let x_3965 : vec4<f32> = u_xlat7;
    let x_3967 : vec3<f32> = ((x_3961 * vec3<f32>(x_3962.x, x_3962.y, x_3962.z)) + vec3<f32>(x_3965.x, x_3965.y, x_3965.z));
    let x_3968 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3967.x, x_3967.y, x_3967.z, x_3968.w);

    continuing {
      let x_3970 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3970 + bitcast<u32>(1i));
    }
  }
  let x_3972 : vec4<f32> = u_xlat5;
  let x_3974 : f32 = u_xlat52;
  let x_3977 : vec4<f32> = u_xlat3;
  let x_3979 : vec3<f32> = ((vec3<f32>(x_3972.x, x_3972.y, x_3972.z) * vec3<f32>(x_3974, x_3974, x_3974)) + vec3<f32>(x_3977.x, x_3977.z, x_3977.w));
  let x_3980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3979.x, x_3979.y, x_3979.z, x_3980.w);
  let x_3984 : vec4<f32> = u_xlat7;
  let x_3986 : vec4<f32> = u_xlat0;
  let x_3988 : vec3<f32> = (vec3<f32>(x_3984.x, x_3984.y, x_3984.z) + vec3<f32>(x_3986.x, x_3986.y, x_3986.z));
  let x_3989 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3988.x, x_3988.y, x_3988.z, x_3989.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


