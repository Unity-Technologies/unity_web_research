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

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat76 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu76 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2503 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu27 : u32;

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
  var x_2129 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2635 : f32;
  var x_2645 : f32;
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
  let x_521 : vec3<f32> = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_522 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec3<f32> = vs_INTERP7;
  let x_527 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_530 : vec3<f32> = (x_525 + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_539 : vec4<f32> = u_xlat5;
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_539.x, x_539.y, x_539.z), vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_551 : vec4<f32> = u_xlat7;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_560 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_560 < x_563);
  let x_566 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_578);
  let x_582 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_582);
  let x_587 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_587);
  let x_591 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_591);
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec4<f32> = u_xlat5;
  let x_598 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) + vec3<f32>(x_596.y, x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_604 : vec3<f32> = max(vec3<f32>(x_601.x, x_601.y, x_601.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_605.x, x_604.x, x_604.y, x_604.z);
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_607, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_612 : f32 = u_xlat75;
  u_xlat75 = (-(x_612) + 4.0f);
  let x_617 : f32 = u_xlat75;
  u_xlatu75 = u32(x_617);
  let x_621 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_621) << bitcast<u32>(2i));
  let x_624 : vec3<f32> = vs_INTERP7;
  let x_626 : i32 = u_xlati75;
  let x_629 : i32 = u_xlati75;
  let x_633 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_626 + 1i) / 4i)][((x_629 + 1i) % 4i)];
  let x_635 : vec3<f32> = (vec3<f32>(x_624.y, x_624.y, x_624.y) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : i32 = u_xlati75;
  let x_640 : i32 = u_xlati75;
  let x_643 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_638 / 4i)][(x_640 % 4i)];
  let x_645 : vec3<f32> = vs_INTERP7;
  let x_648 : vec4<f32> = u_xlat4;
  let x_650 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645.x, x_645.x, x_645.x)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati75;
  let x_656 : i32 = u_xlati75;
  let x_660 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_653 + 2i) / 4i)][((x_656 + 2i) % 4i)];
  let x_662 : vec3<f32> = vs_INTERP7;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662.z, x_662.z, x_662.z)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat4;
  let x_672 : i32 = u_xlati75;
  let x_675 : i32 = u_xlati75;
  let x_679 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_672 + 3i) / 4i)][((x_675 + 3i) % 4i)];
  let x_681 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = vs_INTERP7.y;
  let x_687 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat75 = (x_685 * x_687);
  let x_690 : f32 = x_29.unity_MatrixV[0i].z;
  let x_692 : f32 = vs_INTERP7.x;
  let x_694 : f32 = u_xlat75;
  u_xlat75 = ((x_690 * x_692) + x_694);
  let x_697 : f32 = x_29.unity_MatrixV[2i].z;
  let x_699 : f32 = vs_INTERP7.z;
  let x_701 : f32 = u_xlat75;
  u_xlat75 = ((x_697 * x_699) + x_701);
  let x_703 : f32 = u_xlat75;
  let x_705 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat75 = (x_703 + x_705);
  let x_707 : f32 = u_xlat75;
  let x_710 : f32 = x_29.x_ProjectionParams.y;
  u_xlat75 = (-(x_707) + -(x_710));
  let x_713 : f32 = u_xlat75;
  u_xlat75 = max(x_713, 0.0f);
  let x_715 : f32 = u_xlat75;
  let x_718 : f32 = x_29.unity_FogParams.x;
  u_xlat75 = (x_715 * x_718);
  u_xlat1.w = 1.0f;
  let x_723 : vec4<f32> = x_349.unity_SHAr;
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_723, x_724);
  let x_729 : vec4<f32> = x_349.unity_SHAg;
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_729, x_730);
  let x_735 : vec4<f32> = x_349.unity_SHAb;
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_735, x_736);
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_739.y, x_739.z, x_739.z, x_739.x) * vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.z));
  let x_746 : vec4<f32> = x_349.unity_SHBr;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_746, x_747);
  let x_752 : vec4<f32> = x_349.unity_SHBg;
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_752, x_753);
  let x_758 : vec4<f32> = x_349.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_758, x_759);
  let x_764 : f32 = u_xlat1.y;
  let x_766 : f32 = u_xlat1.y;
  u_xlat76 = (x_764 * x_766);
  let x_769 : f32 = u_xlat1.x;
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat76;
  u_xlat76 = ((x_769 * x_771) + -(x_773));
  let x_778 : vec4<f32> = x_349.unity_SHC;
  let x_780 : f32 = u_xlat76;
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_780, x_780, x_780)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat5;
  let x_790 : vec4<f32> = u_xlat6;
  let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat5;
  let x_797 : vec3<f32> = max(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_798 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat2;
  let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_808 : vec2<f32> = clamp(vec2<f32>(x_804.x, x_804.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_812 : f32 = u_xlat2.x;
  u_xlat76 = ((-(x_812) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_817 : f32 = u_xlat76;
  u_xlat77 = (-(x_817) + 1.0f);
  let x_820 : vec4<f32> = u_xlat0;
  let x_822 : f32 = u_xlat76;
  let x_824 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_822, x_822, x_822));
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat2;
  let x_836 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = ((vec3<f32>(x_834.x, x_834.x, x_834.x) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_845 : f32 = u_xlat2.y;
  u_xlat76 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat76;
  let x_849 : f32 = u_xlat76;
  u_xlat2.x = (x_848 * x_849);
  let x_853 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_853, 0.0078125f);
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat2.x;
  u_xlat78 = (x_859 * x_861);
  let x_864 : f32 = u_xlat77;
  let x_866 : f32 = u_xlat2.y;
  u_xlat27 = (x_864 + x_866);
  let x_868 : f32 = u_xlat27;
  u_xlat27 = min(x_868, 1.0f);
  let x_871 : f32 = u_xlat2.x;
  u_xlat77 = ((x_871 * 4.0f) + 2.0f);
  let x_876 : f32 = u_xlat2.z;
  u_xlat52 = min(x_876, 1.0f);
  let x_881 : f32 = x_497.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_881);
  let x_883 : bool = u_xlatb79;
  if (x_883) {
    let x_887 : f32 = x_497.x_MainLightShadowParams.y;
    u_xlatb79 = (x_887 == 1.0f);
    let x_889 : bool = u_xlatb79;
    if (x_889) {
      let x_892 : vec4<f32> = u_xlat4;
      let x_895 : vec4<f32> = x_497.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y) + x_895);
      let x_898 : vec4<f32> = u_xlat7;
      let x_899 : vec2<f32> = vec2<f32>(x_898.x, x_898.y);
      let x_901 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_899.x, x_899.y, x_901);
      let x_914 : vec3<f32> = txVec0;
      let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
      u_xlat8.x = x_916;
      let x_919 : vec4<f32> = u_xlat7;
      let x_920 : vec2<f32> = vec2<f32>(x_919.z, x_919.w);
      let x_922 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_920.x, x_920.y, x_922);
      let x_929 : vec3<f32> = txVec1;
      let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_929.xy, x_929.z);
      u_xlat8.y = x_931;
      let x_933 : vec4<f32> = u_xlat4;
      let x_936 : vec4<f32> = x_497.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_933.x, x_933.y, x_933.x, x_933.y) + x_936);
      let x_939 : vec4<f32> = u_xlat7;
      let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
      let x_942 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_940.x, x_940.y, x_942);
      let x_949 : vec3<f32> = txVec2;
      let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
      u_xlat8.z = x_951;
      let x_954 : vec4<f32> = u_xlat7;
      let x_955 : vec2<f32> = vec2<f32>(x_954.z, x_954.w);
      let x_957 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_955.x, x_955.y, x_957);
      let x_964 : vec3<f32> = txVec3;
      let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_964.xy, x_964.z);
      u_xlat8.w = x_966;
      let x_969 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_969, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_976 : f32 = x_497.x_MainLightShadowParams.y;
      u_xlatb80 = (x_976 == 2.0f);
      let x_978 : bool = u_xlatb80;
      if (x_978) {
        let x_981 : vec4<f32> = u_xlat4;
        let x_984 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_989 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_984.z, x_984.w)) + vec2<f32>(0.5f, 0.5f));
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat7;
        let x_994 : vec2<f32> = floor(vec2<f32>(x_992.x, x_992.y));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : vec4<f32> = u_xlat4;
        let x_1001 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.z, x_1001.w)) + -(vec2<f32>(x_1004.x, x_1004.y)));
        let x_1008 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1008.x, x_1008.x, x_1008.y, x_1008.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1013.x, x_1013.x, x_1013.z, x_1013.z) * vec4<f32>(x_1015.x, x_1015.x, x_1015.z, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1022 : vec2<f32> = (vec2<f32>(x_1018.y, x_1018.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1028 : vec2<f32> = u_xlat57;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1028));
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1034 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1034) + vec2<f32>(1.0f, 1.0f));
        let x_1039 : vec2<f32> = u_xlat57;
        let x_1041 : vec2<f32> = min(x_1039, vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat10;
        let x_1047 : vec4<f32> = u_xlat10;
        let x_1050 : vec2<f32> = u_xlat59;
        let x_1051 : vec2<f32> = ((-(vec2<f32>(x_1044.x, x_1044.y)) * vec2<f32>(x_1047.x, x_1047.y)) + x_1050);
        let x_1052 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1054, vec2<f32>(0.0f, 0.0f));
        let x_1056 : vec2<f32> = u_xlat57;
        let x_1058 : vec2<f32> = u_xlat57;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1056) * x_1058) + vec2<f32>(x_1060.y, x_1060.w));
        let x_1063 : vec4<f32> = u_xlat10;
        let x_1065 : vec2<f32> = (vec2<f32>(x_1063.x, x_1063.y) + vec2<f32>(1.0f, 1.0f));
        let x_1066 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1068 + vec2<f32>(1.0f, 1.0f));
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1075 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec2<f32> = u_xlat59;
        let x_1079 : vec2<f32> = (x_1078 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat10;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1082.x, x_1082.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1088 : vec2<f32> = u_xlat57;
        let x_1089 : vec2<f32> = (x_1088 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1090 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1092.y, x_1092.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1096 : f32 = u_xlat10.x;
        u_xlat11.z = x_1096;
        let x_1099 : f32 = u_xlat57.x;
        u_xlat11.w = x_1099;
        let x_1102 : f32 = u_xlat12.x;
        u_xlat9.z = x_1102;
        let x_1105 : f32 = u_xlat8.x;
        u_xlat9.w = x_1105;
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1108.z, x_1108.w, x_1108.x, x_1108.z) + vec4<f32>(x_1110.z, x_1110.w, x_1110.x, x_1110.z));
        let x_1114 : f32 = u_xlat11.y;
        u_xlat10.z = x_1114;
        let x_1117 : f32 = u_xlat57.y;
        u_xlat10.w = x_1117;
        let x_1120 : f32 = u_xlat9.y;
        u_xlat12.z = x_1120;
        let x_1123 : f32 = u_xlat8.z;
        u_xlat12.w = x_1123;
        let x_1125 : vec4<f32> = u_xlat10;
        let x_1127 : vec4<f32> = u_xlat12;
        let x_1129 : vec3<f32> = (vec3<f32>(x_1125.z, x_1125.y, x_1125.w) + vec3<f32>(x_1127.z, x_1127.y, x_1127.w));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat9;
        let x_1134 : vec4<f32> = u_xlat13;
        let x_1136 : vec3<f32> = (vec3<f32>(x_1132.x, x_1132.z, x_1132.w) / vec3<f32>(x_1134.z, x_1134.w, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat9;
        let x_1145 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat12;
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1148.z, x_1148.y, x_1148.w) / vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1165 : vec3<f32> = (vec3<f32>(x_1160.y, x_1160.x, x_1160.z) * vec3<f32>(x_1163.x, x_1163.x, x_1163.x));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1171 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * vec3<f32>(x_1171.y, x_1171.y, x_1171.y));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1177 : f32 = u_xlat10.x;
        u_xlat9.w = x_1177;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1182 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.y, x_1185.w, x_1185.x, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1191 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.z, x_1194.w));
        let x_1198 : f32 = u_xlat9.y;
        u_xlat10.w = x_1198;
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.y, x_1200.z);
        let x_1202 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1202.x, x_1201.x, x_1202.z, x_1201.y);
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat7;
        let x_1216 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y) * vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y)) + vec4<f32>(x_1219.w, x_1219.y, x_1219.w, x_1219.z));
        let x_1222 : vec4<f32> = u_xlat7;
        let x_1225 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y) * vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y)) + vec4<f32>(x_1228.x, x_1228.w, x_1228.z, x_1228.w));
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1232.x, x_1232.x, x_1232.x, x_1232.y) * vec4<f32>(x_1234.z, x_1234.w, x_1234.y, x_1234.z));
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1240 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1238.y, x_1238.y, x_1238.z, x_1238.z) * x_1240);
        let x_1244 : f32 = u_xlat8.z;
        let x_1246 : f32 = u_xlat13.y;
        u_xlat80 = (x_1244 * x_1246);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1260 : vec3<f32> = txVec4;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1260.xy, x_1260.z);
        u_xlat81 = x_1262;
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
        let x_1267 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec5;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat7.x = x_1276;
        let x_1279 : f32 = u_xlat7.x;
        let x_1281 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1279 * x_1281);
        let x_1285 : f32 = u_xlat14.x;
        let x_1286 : f32 = u_xlat81;
        let x_1289 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1285 * x_1286) + x_1289);
        let x_1292 : vec2<f32> = u_xlat57;
        let x_1294 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec6;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1301.xy, x_1301.z);
        u_xlat7.x = x_1303;
        let x_1306 : f32 = u_xlat14.z;
        let x_1308 : f32 = u_xlat7.x;
        let x_1310 : f32 = u_xlat81;
        u_xlat81 = ((x_1306 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat10;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec7;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat7.x = x_1325;
        let x_1328 : f32 = u_xlat14.w;
        let x_1330 : f32 = u_xlat7.x;
        let x_1332 : f32 = u_xlat81;
        u_xlat81 = ((x_1328 * x_1330) + x_1332);
        let x_1335 : vec4<f32> = u_xlat12;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.x, x_1335.y);
        let x_1338 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec8;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1345.xy, x_1345.z);
        u_xlat7.x = x_1347;
        let x_1350 : f32 = u_xlat15.x;
        let x_1352 : f32 = u_xlat7.x;
        let x_1354 : f32 = u_xlat81;
        u_xlat81 = ((x_1350 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat12;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.z, x_1357.w);
        let x_1360 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec9;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat7.x = x_1369;
        let x_1372 : f32 = u_xlat15.y;
        let x_1374 : f32 = u_xlat7.x;
        let x_1376 : f32 = u_xlat81;
        u_xlat81 = ((x_1372 * x_1374) + x_1376);
        let x_1379 : vec4<f32> = u_xlat10;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.z, x_1379.w);
        let x_1382 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec10;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat7.x = x_1391;
        let x_1394 : f32 = u_xlat15.z;
        let x_1396 : f32 = u_xlat7.x;
        let x_1398 : f32 = u_xlat81;
        u_xlat81 = ((x_1394 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec11;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat7.x = x_1413;
        let x_1416 : f32 = u_xlat15.w;
        let x_1418 : f32 = u_xlat7.x;
        let x_1420 : f32 = u_xlat81;
        u_xlat81 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec12;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat7.x = x_1435;
        let x_1437 : f32 = u_xlat80;
        let x_1439 : f32 = u_xlat7.x;
        let x_1441 : f32 = u_xlat81;
        u_xlat79 = ((x_1437 * x_1439) + x_1441);
      } else {
        let x_1444 : vec4<f32> = u_xlat4;
        let x_1447 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1450 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1447.z, x_1447.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec2<f32> = floor(vec2<f32>(x_1453.x, x_1453.y));
        let x_1456 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1455.x, x_1455.y, x_1456.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat4;
        let x_1461 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1461.z, x_1461.w)) + -(vec2<f32>(x_1464.x, x_1464.y)));
        let x_1468 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1468.x, x_1468.x, x_1468.y, x_1468.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1471 : vec4<f32> = u_xlat8;
        let x_1473 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1471.x, x_1471.x, x_1471.z, x_1471.z) * vec4<f32>(x_1473.x, x_1473.x, x_1473.z, x_1473.z));
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1480 : vec2<f32> = (vec2<f32>(x_1476.y, x_1476.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = u_xlat57;
        let x_1488 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1486));
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1488.x, x_1489.y, x_1488.y, x_1489.w);
        let x_1491 : vec2<f32> = u_xlat57;
        let x_1493 : vec2<f32> = (-(x_1491) + vec2<f32>(1.0f, 1.0f));
        let x_1494 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1493.x, x_1493.y, x_1494.z, x_1494.w);
        let x_1496 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1496, vec2<f32>(0.0f, 0.0f));
        let x_1498 : vec2<f32> = u_xlat59;
        let x_1500 : vec2<f32> = u_xlat59;
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = ((-(x_1498) * x_1500) + vec2<f32>(x_1502.x, x_1502.y));
        let x_1505 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1507, vec2<f32>(0.0f, 0.0f));
        let x_1510 : vec2<f32> = u_xlat59;
        let x_1512 : vec2<f32> = u_xlat59;
        let x_1514 : vec4<f32> = u_xlat8;
        let x_1516 : vec2<f32> = ((-(x_1510) * x_1512) + vec2<f32>(x_1514.y, x_1514.w));
        let x_1517 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1516.x, x_1517.y, x_1516.y);
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1521 : vec2<f32> = (vec2<f32>(x_1519.x, x_1519.y) + vec2<f32>(2.0f, 2.0f));
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
        let x_1524 : vec3<f32> = u_xlat33;
        let x_1526 : vec2<f32> = (vec2<f32>(x_1524.x, x_1524.z) + vec2<f32>(2.0f, 2.0f));
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1527.x, x_1526.x, x_1527.z, x_1526.y);
        let x_1530 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1530 * 0.08163200318813323975f);
        let x_1534 : vec4<f32> = u_xlat8;
        let x_1537 : vec3<f32> = (vec3<f32>(x_1534.z, x_1534.x, x_1534.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1538 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
        let x_1540 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1544 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1547 : f32 = u_xlat12.y;
        u_xlat11.x = x_1547;
        let x_1549 : vec2<f32> = u_xlat57;
        let x_1556 : vec2<f32> = ((vec2<f32>(x_1549.x, x_1549.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1557.x, x_1556.x, x_1557.z, x_1556.y);
        let x_1559 : vec2<f32> = u_xlat57;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1564 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1563.x, x_1564.y, x_1563.y, x_1564.w);
        let x_1567 : f32 = u_xlat8.x;
        u_xlat9.y = x_1567;
        let x_1570 : f32 = u_xlat10.y;
        u_xlat9.w = x_1570;
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1573 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1572 + x_1573);
        let x_1575 : vec2<f32> = u_xlat57;
        let x_1578 : vec2<f32> = ((vec2<f32>(x_1575.y, x_1575.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1579 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1579.x, x_1578.x, x_1579.z, x_1578.y);
        let x_1581 : vec2<f32> = u_xlat57;
        let x_1584 : vec2<f32> = ((vec2<f32>(x_1581.y, x_1581.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1585 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1584.x, x_1585.y, x_1584.y, x_1585.w);
        let x_1588 : f32 = u_xlat8.y;
        u_xlat10.y = x_1588;
        let x_1590 : vec4<f32> = u_xlat10;
        let x_1591 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1590 + x_1591);
        let x_1593 : vec4<f32> = u_xlat9;
        let x_1594 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1593 / x_1594);
        let x_1596 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1596 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1602 : vec4<f32> = u_xlat10;
        let x_1603 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1602 / x_1603);
        let x_1605 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1605 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1610 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1607.w, x_1607.x, x_1607.y, x_1607.z) * vec4<f32>(x_1610.x, x_1610.x, x_1610.x, x_1610.x));
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1616 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1613.x, x_1613.w, x_1613.y, x_1613.z) * vec4<f32>(x_1616.y, x_1616.y, x_1616.y, x_1616.y));
        let x_1619 : vec4<f32> = u_xlat9;
        let x_1620 : vec3<f32> = vec3<f32>(x_1619.y, x_1619.z, x_1619.w);
        let x_1621 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1620.x, x_1621.y, x_1620.y, x_1620.z);
        let x_1624 : f32 = u_xlat10.x;
        u_xlat12.y = x_1624;
        let x_1626 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1632 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1626.x, x_1626.y, x_1626.x, x_1626.y) * vec4<f32>(x_1629.x, x_1629.y, x_1629.x, x_1629.y)) + vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1632.y));
        let x_1635 : vec4<f32> = u_xlat7;
        let x_1638 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1641 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1638.x, x_1638.y)) + vec2<f32>(x_1641.w, x_1641.y));
        let x_1645 : f32 = u_xlat12.y;
        u_xlat9.y = x_1645;
        let x_1648 : f32 = u_xlat10.z;
        u_xlat12.y = x_1648;
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1653 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1656 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y) * vec4<f32>(x_1653.x, x_1653.y, x_1653.x, x_1653.y)) + vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1656.y));
        let x_1659 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1665 : vec4<f32> = u_xlat12;
        let x_1667 : vec2<f32> = ((vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(x_1662.x, x_1662.y)) + vec2<f32>(x_1665.w, x_1665.y));
        let x_1668 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
        let x_1671 : f32 = u_xlat12.y;
        u_xlat9.z = x_1671;
        let x_1674 : vec4<f32> = u_xlat7;
        let x_1677 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1680 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1674.x, x_1674.y, x_1674.x, x_1674.y) * vec4<f32>(x_1677.x, x_1677.y, x_1677.x, x_1677.y)) + vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.z));
        let x_1684 : f32 = u_xlat10.w;
        u_xlat12.y = x_1684;
        let x_1687 : vec4<f32> = u_xlat7;
        let x_1690 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1693 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y) * vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y)) + vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1693.y));
        let x_1697 : vec4<f32> = u_xlat7;
        let x_1700 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1703 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1697.x, x_1697.y) * vec2<f32>(x_1700.x, x_1700.y)) + vec2<f32>(x_1703.w, x_1703.y));
        let x_1707 : f32 = u_xlat12.y;
        u_xlat9.w = x_1707;
        let x_1710 : vec4<f32> = u_xlat7;
        let x_1713 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1713.x, x_1713.y)) + vec2<f32>(x_1716.x, x_1716.w));
        let x_1719 : vec4<f32> = u_xlat12;
        let x_1720 : vec3<f32> = vec3<f32>(x_1719.x, x_1719.z, x_1719.w);
        let x_1721 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1720.x, x_1721.y, x_1720.y, x_1720.z);
        let x_1723 : vec4<f32> = u_xlat7;
        let x_1726 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y) * vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.y)) + vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.y));
        let x_1733 : vec4<f32> = u_xlat7;
        let x_1736 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1739 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1736.x, x_1736.y)) + vec2<f32>(x_1739.w, x_1739.y));
        let x_1743 : f32 = u_xlat9.x;
        u_xlat10.x = x_1743;
        let x_1745 : vec4<f32> = u_xlat7;
        let x_1748 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat10;
        let x_1753 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(x_1748.x, x_1748.y)) + vec2<f32>(x_1751.x, x_1751.y));
        let x_1754 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
        let x_1757 : vec4<f32> = u_xlat8;
        let x_1759 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1757.x, x_1757.x, x_1757.x, x_1757.x) * x_1759);
        let x_1762 : vec4<f32> = u_xlat8;
        let x_1764 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1762.y, x_1762.y, x_1762.y, x_1762.y) * x_1764);
        let x_1767 : vec4<f32> = u_xlat8;
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1767.z, x_1767.z, x_1767.z, x_1767.z) * x_1769);
        let x_1771 : vec4<f32> = u_xlat8;
        let x_1773 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1771.w, x_1771.w, x_1771.w, x_1771.w) * x_1773);
        let x_1776 : vec4<f32> = u_xlat13;
        let x_1777 : vec2<f32> = vec2<f32>(x_1776.x, x_1776.y);
        let x_1779 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec13;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1786.xy, x_1786.z);
        u_xlat80 = x_1788;
        let x_1790 : vec4<f32> = u_xlat13;
        let x_1791 : vec2<f32> = vec2<f32>(x_1790.z, x_1790.w);
        let x_1793 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1791.x, x_1791.y, x_1793);
        let x_1800 : vec3<f32> = txVec14;
        let x_1802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1800.xy, x_1800.z);
        u_xlat81 = x_1802;
        let x_1803 : f32 = u_xlat81;
        let x_1805 : f32 = u_xlat18.y;
        u_xlat81 = (x_1803 * x_1805);
        let x_1808 : f32 = u_xlat18.x;
        let x_1809 : f32 = u_xlat80;
        let x_1811 : f32 = u_xlat81;
        u_xlat80 = ((x_1808 * x_1809) + x_1811);
        let x_1814 : vec2<f32> = u_xlat57;
        let x_1816 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1814.x, x_1814.y, x_1816);
        let x_1823 : vec3<f32> = txVec15;
        let x_1825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1823.xy, x_1823.z);
        u_xlat81 = x_1825;
        let x_1827 : f32 = u_xlat18.z;
        let x_1828 : f32 = u_xlat81;
        let x_1830 : f32 = u_xlat80;
        u_xlat80 = ((x_1827 * x_1828) + x_1830);
        let x_1833 : vec4<f32> = u_xlat16;
        let x_1834 : vec2<f32> = vec2<f32>(x_1833.x, x_1833.y);
        let x_1836 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1834.x, x_1834.y, x_1836);
        let x_1843 : vec3<f32> = txVec16;
        let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1843.xy, x_1843.z);
        u_xlat81 = x_1845;
        let x_1847 : f32 = u_xlat18.w;
        let x_1848 : f32 = u_xlat81;
        let x_1850 : f32 = u_xlat80;
        u_xlat80 = ((x_1847 * x_1848) + x_1850);
        let x_1853 : vec4<f32> = u_xlat14;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
        let x_1856 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec17;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat81 = x_1865;
        let x_1867 : f32 = u_xlat19.x;
        let x_1868 : f32 = u_xlat81;
        let x_1870 : f32 = u_xlat80;
        u_xlat80 = ((x_1867 * x_1868) + x_1870);
        let x_1873 : vec4<f32> = u_xlat14;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.z, x_1873.w);
        let x_1876 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec18;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1883.xy, x_1883.z);
        u_xlat81 = x_1885;
        let x_1887 : f32 = u_xlat19.y;
        let x_1888 : f32 = u_xlat81;
        let x_1890 : f32 = u_xlat80;
        u_xlat80 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat15;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec19;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat81 = x_1905;
        let x_1907 : f32 = u_xlat19.z;
        let x_1908 : f32 = u_xlat81;
        let x_1910 : f32 = u_xlat80;
        u_xlat80 = ((x_1907 * x_1908) + x_1910);
        let x_1913 : vec4<f32> = u_xlat16;
        let x_1914 : vec2<f32> = vec2<f32>(x_1913.z, x_1913.w);
        let x_1916 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec20;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1923.xy, x_1923.z);
        u_xlat81 = x_1925;
        let x_1927 : f32 = u_xlat19.w;
        let x_1928 : f32 = u_xlat81;
        let x_1930 : f32 = u_xlat80;
        u_xlat80 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec4<f32> = u_xlat17;
        let x_1934 : vec2<f32> = vec2<f32>(x_1933.x, x_1933.y);
        let x_1936 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec21;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1943.xy, x_1943.z);
        u_xlat81 = x_1945;
        let x_1947 : f32 = u_xlat20.x;
        let x_1948 : f32 = u_xlat81;
        let x_1950 : f32 = u_xlat80;
        u_xlat80 = ((x_1947 * x_1948) + x_1950);
        let x_1953 : vec4<f32> = u_xlat17;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec22;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat81 = x_1965;
        let x_1967 : f32 = u_xlat20.y;
        let x_1968 : f32 = u_xlat81;
        let x_1970 : f32 = u_xlat80;
        u_xlat80 = ((x_1967 * x_1968) + x_1970);
        let x_1973 : vec2<f32> = u_xlat34;
        let x_1975 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec23;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1982.xy, x_1982.z);
        u_xlat81 = x_1984;
        let x_1986 : f32 = u_xlat20.z;
        let x_1987 : f32 = u_xlat81;
        let x_1989 : f32 = u_xlat80;
        u_xlat80 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec2<f32> = u_xlat65;
        let x_1994 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec24;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2001.xy, x_2001.z);
        u_xlat81 = x_2003;
        let x_2005 : f32 = u_xlat20.w;
        let x_2006 : f32 = u_xlat81;
        let x_2008 : f32 = u_xlat80;
        u_xlat80 = ((x_2005 * x_2006) + x_2008);
        let x_2011 : vec4<f32> = u_xlat12;
        let x_2012 : vec2<f32> = vec2<f32>(x_2011.x, x_2011.y);
        let x_2014 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec25;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2021.xy, x_2021.z);
        u_xlat81 = x_2023;
        let x_2025 : f32 = u_xlat8.x;
        let x_2026 : f32 = u_xlat81;
        let x_2028 : f32 = u_xlat80;
        u_xlat80 = ((x_2025 * x_2026) + x_2028);
        let x_2031 : vec4<f32> = u_xlat12;
        let x_2032 : vec2<f32> = vec2<f32>(x_2031.z, x_2031.w);
        let x_2034 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec26;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2041.xy, x_2041.z);
        u_xlat81 = x_2043;
        let x_2045 : f32 = u_xlat8.y;
        let x_2046 : f32 = u_xlat81;
        let x_2048 : f32 = u_xlat80;
        u_xlat80 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec2<f32> = u_xlat60;
        let x_2053 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
        let x_2060 : vec3<f32> = txVec27;
        let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2060.xy, x_2060.z);
        u_xlat81 = x_2062;
        let x_2064 : f32 = u_xlat8.z;
        let x_2065 : f32 = u_xlat81;
        let x_2067 : f32 = u_xlat80;
        u_xlat80 = ((x_2064 * x_2065) + x_2067);
        let x_2070 : vec4<f32> = u_xlat7;
        let x_2071 : vec2<f32> = vec2<f32>(x_2070.x, x_2070.y);
        let x_2073 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
        let x_2080 : vec3<f32> = txVec28;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2080.xy, x_2080.z);
        u_xlat81 = x_2082;
        let x_2084 : f32 = u_xlat8.w;
        let x_2085 : f32 = u_xlat81;
        let x_2087 : f32 = u_xlat80;
        u_xlat79 = ((x_2084 * x_2085) + x_2087);
      }
    }
  } else {
    let x_2091 : vec4<f32> = u_xlat4;
    let x_2092 : vec2<f32> = vec2<f32>(x_2091.x, x_2091.y);
    let x_2094 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
    let x_2101 : vec3<f32> = txVec29;
    let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2101.xy, x_2101.z);
    u_xlat79 = x_2103;
  }
  let x_2105 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2105) + 1.0f);
  let x_2109 : f32 = u_xlat79;
  let x_2111 : f32 = x_497.x_MainLightShadowParams.x;
  let x_2114 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2109 * x_2111) + x_2114);
  let x_2119 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_2119);
  let x_2123 : f32 = u_xlat4.z;
  u_xlatb54 = (x_2123 >= 1.0f);
  let x_2125 : bool = u_xlatb54;
  let x_2126 : bool = u_xlatb29;
  u_xlatb29 = (x_2125 | x_2126);
  let x_2128 : bool = u_xlatb29;
  if (x_2128) {
    x_2129 = 1.0f;
  } else {
    let x_2134 : f32 = u_xlat4.x;
    x_2129 = x_2134;
  }
  let x_2135 : f32 = x_2129;
  u_xlat4.x = x_2135;
  let x_2138 : vec3<f32> = vs_INTERP7;
  let x_2140 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat29 = (x_2138 + -(x_2140));
  let x_2143 : vec3<f32> = u_xlat29;
  let x_2144 : vec3<f32> = u_xlat29;
  u_xlat29.x = dot(x_2143, x_2144);
  let x_2149 : f32 = u_xlat29.x;
  let x_2151 : f32 = x_497.x_MainLightShadowParams.z;
  let x_2154 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2149 * x_2151) + x_2154);
  let x_2156 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2156, 0.0f, 1.0f);
  let x_2159 : f32 = u_xlat4.x;
  u_xlat79 = (-(x_2159) + 1.0f);
  let x_2162 : f32 = u_xlat54;
  let x_2163 : f32 = u_xlat79;
  let x_2166 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2162 * x_2163) + x_2166);
  let x_2169 : vec4<f32> = u_xlat3;
  let x_2172 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2169.x, x_2169.y, x_2169.z)), vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
  let x_2175 : f32 = u_xlat54;
  let x_2176 : f32 = u_xlat54;
  u_xlat54 = (x_2175 + x_2176);
  let x_2178 : vec4<f32> = u_xlat1;
  let x_2180 : f32 = u_xlat54;
  let x_2184 : vec4<f32> = u_xlat3;
  let x_2187 : vec3<f32> = ((vec3<f32>(x_2178.x, x_2178.y, x_2178.z) * -(vec3<f32>(x_2180, x_2180, x_2180))) + -(vec3<f32>(x_2184.x, x_2184.y, x_2184.z)));
  let x_2188 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
  let x_2190 : vec4<f32> = u_xlat1;
  let x_2192 : vec4<f32> = u_xlat3;
  u_xlat54 = dot(vec3<f32>(x_2190.x, x_2190.y, x_2190.z), vec3<f32>(x_2192.x, x_2192.y, x_2192.z));
  let x_2195 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2195, 0.0f, 1.0f);
  let x_2197 : f32 = u_xlat54;
  u_xlat54 = (-(x_2197) + 1.0f);
  let x_2200 : f32 = u_xlat54;
  let x_2201 : f32 = u_xlat54;
  u_xlat54 = (x_2200 * x_2201);
  let x_2203 : f32 = u_xlat54;
  let x_2204 : f32 = u_xlat54;
  u_xlat54 = (x_2203 * x_2204);
  let x_2206 : f32 = u_xlat76;
  u_xlat79 = ((-(x_2206) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2212 : f32 = u_xlat76;
  let x_2213 : f32 = u_xlat79;
  u_xlat76 = (x_2212 * x_2213);
  let x_2215 : f32 = u_xlat76;
  u_xlat76 = (x_2215 * 6.0f);
  let x_2225 : vec4<f32> = u_xlat7;
  let x_2227 : f32 = u_xlat76;
  let x_2228 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2225.x, x_2225.y, x_2225.z), x_2227);
  u_xlat7 = x_2228;
  let x_2230 : f32 = u_xlat7.w;
  u_xlat76 = (x_2230 + -1.0f);
  let x_2233 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2234 : f32 = u_xlat76;
  u_xlat76 = ((x_2233 * x_2234) + 1.0f);
  let x_2237 : f32 = u_xlat76;
  u_xlat76 = max(x_2237, 0.0f);
  let x_2239 : f32 = u_xlat76;
  u_xlat76 = log2(x_2239);
  let x_2241 : f32 = u_xlat76;
  let x_2243 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2241 * x_2243);
  let x_2245 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2245);
  let x_2247 : f32 = u_xlat76;
  let x_2249 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2247 * x_2249);
  let x_2251 : vec4<f32> = u_xlat7;
  let x_2253 : f32 = u_xlat76;
  let x_2255 : vec3<f32> = (vec3<f32>(x_2251.x, x_2251.y, x_2251.z) * vec3<f32>(x_2253, x_2253, x_2253));
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : vec4<f32> = u_xlat2;
  let x_2260 : vec4<f32> = u_xlat2;
  let x_2264 : vec2<f32> = ((vec2<f32>(x_2258.x, x_2258.x) * vec2<f32>(x_2260.x, x_2260.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2265 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
  let x_2268 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2268);
  let x_2270 : vec4<f32> = u_xlat0;
  let x_2273 : f32 = u_xlat27;
  u_xlat33 = (-(vec3<f32>(x_2270.x, x_2270.y, x_2270.z)) + vec3<f32>(x_2273, x_2273, x_2273));
  let x_2276 : f32 = u_xlat54;
  let x_2278 : vec3<f32> = u_xlat33;
  let x_2280 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_2276, x_2276, x_2276) * x_2278) + vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : f32 = u_xlat76;
  let x_2285 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2283, x_2283, x_2283) * x_2285);
  let x_2287 : vec4<f32> = u_xlat7;
  let x_2289 : vec3<f32> = u_xlat33;
  let x_2290 : vec3<f32> = (vec3<f32>(x_2287.x, x_2287.y, x_2287.z) * x_2289);
  let x_2291 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
  let x_2293 : vec4<f32> = u_xlat5;
  let x_2295 : vec4<f32> = u_xlat6;
  let x_2298 : vec4<f32> = u_xlat7;
  let x_2300 : vec3<f32> = ((vec3<f32>(x_2293.x, x_2293.y, x_2293.z) * vec3<f32>(x_2295.x, x_2295.y, x_2295.z)) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2304 : f32 = u_xlat4.x;
  let x_2306 : f32 = x_349.unity_LightData.z;
  u_xlat76 = (x_2304 * x_2306);
  let x_2308 : vec4<f32> = u_xlat1;
  let x_2311 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2316 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2316, 0.0f, 1.0f);
  let x_2319 : f32 = u_xlat76;
  let x_2321 : f32 = u_xlat2.x;
  u_xlat76 = (x_2319 * x_2321);
  let x_2323 : f32 = u_xlat76;
  let x_2326 : vec4<f32> = x_29.x_MainLightColor;
  let x_2328 : vec3<f32> = (vec3<f32>(x_2323, x_2323, x_2323) * vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
  let x_2329 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2328.x, x_2329.y, x_2328.y, x_2328.z);
  let x_2331 : vec4<f32> = u_xlat3;
  let x_2334 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2336 : vec3<f32> = (vec3<f32>(x_2331.x, x_2331.y, x_2331.z) + vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2337 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
  let x_2339 : vec4<f32> = u_xlat7;
  let x_2341 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2339.x, x_2339.y, x_2339.z), vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
  let x_2344 : f32 = u_xlat76;
  u_xlat76 = max(x_2344, 1.17549435e-38f);
  let x_2347 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_2347);
  let x_2349 : f32 = u_xlat76;
  let x_2351 : vec4<f32> = u_xlat7;
  let x_2353 : vec3<f32> = (vec3<f32>(x_2349, x_2349, x_2349) * vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
  let x_2354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  let x_2356 : vec4<f32> = u_xlat1;
  let x_2358 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2356.x, x_2356.y, x_2356.z), vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2361, 0.0f, 1.0f);
  let x_2364 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2366 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2364.x, x_2364.y, x_2364.z), vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
  let x_2371 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2371, 0.0f, 1.0f);
  let x_2374 : f32 = u_xlat76;
  let x_2375 : f32 = u_xlat76;
  u_xlat76 = (x_2374 * x_2375);
  let x_2377 : f32 = u_xlat76;
  let x_2379 : f32 = u_xlat8.x;
  u_xlat76 = ((x_2377 * x_2379) + 1.00001001358032226562f);
  let x_2384 : f32 = u_xlat2.x;
  let x_2386 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2384 * x_2386);
  let x_2389 : f32 = u_xlat76;
  let x_2390 : f32 = u_xlat76;
  u_xlat76 = (x_2389 * x_2390);
  let x_2393 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2393, 0.10000000149011611938f);
  let x_2397 : f32 = u_xlat76;
  let x_2399 : f32 = u_xlat2.x;
  u_xlat76 = (x_2397 * x_2399);
  let x_2401 : f32 = u_xlat77;
  let x_2402 : f32 = u_xlat76;
  u_xlat76 = (x_2401 * x_2402);
  let x_2404 : f32 = u_xlat78;
  let x_2405 : f32 = u_xlat76;
  u_xlat76 = (x_2404 / x_2405);
  let x_2407 : vec4<f32> = u_xlat0;
  let x_2409 : f32 = u_xlat76;
  let x_2412 : vec4<f32> = u_xlat6;
  let x_2414 : vec3<f32> = ((vec3<f32>(x_2407.x, x_2407.y, x_2407.z) * vec3<f32>(x_2409, x_2409, x_2409)) + vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
  let x_2415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
  let x_2417 : vec4<f32> = u_xlat4;
  let x_2419 : vec4<f32> = u_xlat7;
  let x_2421 : vec3<f32> = (vec3<f32>(x_2417.x, x_2417.z, x_2417.w) * vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2421.x, x_2422.y, x_2421.y, x_2421.z);
  let x_2425 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2427 : f32 = x_349.unity_LightData.y;
  u_xlat76 = min(x_2425, x_2427);
  let x_2430 : f32 = u_xlat76;
  u_xlatu76 = bitcast<u32>(i32(x_2430));
  let x_2434 : f32 = u_xlat29.x;
  let x_2437 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_2440 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2434 * x_2437) + x_2440);
  let x_2444 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2444, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2457 : u32 = u_xlatu_loop_1;
    let x_2458 : u32 = u_xlatu76;
    if ((x_2457 < x_2458)) {
    } else {
      break;
    }
    let x_2461 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_2461 >> 2u);
    let x_2464 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2464 & 3u));
    let x_2467 : u32 = u_xlatu29;
    let x_2470 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2467)];
    let x_2480 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2485 : vec4<u32> = indexable[x_2480];
    u_xlat29.x = dot(x_2470, bitcast<vec4<f32>>(x_2485));
    let x_2491 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_2491);
    let x_2493 : vec3<f32> = vs_INTERP7;
    let x_2504 : i32 = u_xlati29;
    let x_2506 : vec4<f32> = x_2503.x_AdditionalLightsPosition[x_2504];
    let x_2509 : i32 = u_xlati29;
    let x_2511 : vec4<f32> = x_2503.x_AdditionalLightsPosition[x_2509];
    u_xlat33 = ((-(x_2493) * vec3<f32>(x_2506.w, x_2506.w, x_2506.w)) + vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
    let x_2514 : vec3<f32> = u_xlat33;
    let x_2515 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2514, x_2515);
    let x_2517 : f32 = u_xlat80;
    u_xlat80 = max(x_2517, 0.00006103515625f);
    let x_2520 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2520);
    let x_2522 : f32 = u_xlat81;
    let x_2524 : vec3<f32> = u_xlat33;
    let x_2525 : vec3<f32> = (vec3<f32>(x_2522, x_2522, x_2522) * x_2524);
    let x_2526 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2525.x, x_2525.y, x_2525.z, x_2526.w);
    let x_2529 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2529);
    let x_2531 : f32 = u_xlat80;
    let x_2532 : i32 = u_xlati29;
    let x_2534 : f32 = x_2503.x_AdditionalLightsAttenuation[x_2532].x;
    u_xlat80 = (x_2531 * x_2534);
    let x_2536 : f32 = u_xlat80;
    let x_2538 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2536) * x_2538) + 1.0f);
    let x_2541 : f32 = u_xlat80;
    u_xlat80 = max(x_2541, 0.0f);
    let x_2543 : f32 = u_xlat80;
    let x_2544 : f32 = u_xlat80;
    u_xlat80 = (x_2543 * x_2544);
    let x_2546 : f32 = u_xlat80;
    let x_2547 : f32 = u_xlat82;
    u_xlat80 = (x_2546 * x_2547);
    let x_2549 : i32 = u_xlati29;
    let x_2551 : vec4<f32> = x_2503.x_AdditionalLightsSpotDir[x_2549];
    let x_2553 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2551.x, x_2551.y, x_2551.z), vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
    let x_2556 : f32 = u_xlat82;
    let x_2557 : i32 = u_xlati29;
    let x_2559 : f32 = x_2503.x_AdditionalLightsAttenuation[x_2557].z;
    let x_2561 : i32 = u_xlati29;
    let x_2563 : f32 = x_2503.x_AdditionalLightsAttenuation[x_2561].w;
    u_xlat82 = ((x_2556 * x_2559) + x_2563);
    let x_2565 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2565, 0.0f, 1.0f);
    let x_2567 : f32 = u_xlat82;
    let x_2568 : f32 = u_xlat82;
    u_xlat82 = (x_2567 * x_2568);
    let x_2570 : f32 = u_xlat80;
    let x_2571 : f32 = u_xlat82;
    u_xlat80 = (x_2570 * x_2571);
    let x_2575 : i32 = u_xlati29;
    let x_2577 : f32 = x_497.x_AdditionalShadowParams[x_2575].w;
    u_xlati82 = i32(x_2577);
    let x_2580 : i32 = u_xlati82;
    u_xlatb84 = (x_2580 >= 0i);
    let x_2582 : bool = u_xlatb84;
    if (x_2582) {
      let x_2586 : i32 = u_xlati29;
      let x_2588 : f32 = x_497.x_AdditionalShadowParams[x_2586].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2588, x_2588, x_2588, x_2588))));
      let x_2592 : bool = u_xlatb84;
      if (x_2592) {
        let x_2596 : vec4<f32> = u_xlat9;
        let x_2599 : vec4<f32> = u_xlat9;
        let x_2602 : vec4<bool> = (abs(vec4<f32>(x_2596.z, x_2596.z, x_2596.y, x_2596.z)) >= abs(vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.x)));
        let x_2604 : vec3<bool> = vec3<bool>(x_2602.x, x_2602.y, x_2602.z);
        let x_2605 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
        let x_2608 : bool = u_xlatb10.y;
        let x_2610 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2608 & x_2610);
        let x_2612 : vec4<f32> = u_xlat9;
        let x_2615 : vec4<bool> = (-(vec4<f32>(x_2612.z, x_2612.y, x_2612.z, x_2612.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2616 : vec3<bool> = vec3<bool>(x_2615.x, x_2615.y, x_2615.w);
        let x_2617 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2616.x, x_2616.y, x_2617.z, x_2616.z);
        let x_2620 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2620);
        let x_2625 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2625);
        let x_2630 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2630);
        let x_2634 : bool = u_xlatb10.z;
        if (x_2634) {
          let x_2639 : f32 = u_xlat10.y;
          x_2635 = x_2639;
        } else {
          let x_2641 : f32 = u_xlat85;
          x_2635 = x_2641;
        }
        let x_2642 : f32 = x_2635;
        u_xlat35 = x_2642;
        let x_2644 : bool = u_xlatb84;
        if (x_2644) {
          let x_2649 : f32 = u_xlat10.x;
          x_2645 = x_2649;
        } else {
          let x_2651 : f32 = u_xlat35;
          x_2645 = x_2651;
        }
        let x_2652 : f32 = x_2645;
        u_xlat84 = x_2652;
        let x_2653 : i32 = u_xlati29;
        let x_2655 : f32 = x_497.x_AdditionalShadowParams[x_2653].w;
        u_xlat10.x = trunc(x_2655);
        let x_2658 : f32 = u_xlat84;
        let x_2660 : f32 = u_xlat10.x;
        u_xlat84 = (x_2658 + x_2660);
        let x_2662 : f32 = u_xlat84;
        u_xlati82 = i32(x_2662);
      }
      let x_2664 : i32 = u_xlati82;
      u_xlati82 = (x_2664 << bitcast<u32>(2i));
      let x_2666 : vec3<f32> = vs_INTERP7;
      let x_2669 : i32 = u_xlati82;
      let x_2672 : i32 = u_xlati82;
      let x_2676 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2669 + 1i) / 4i)][((x_2672 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2666.y, x_2666.y, x_2666.y, x_2666.y) * x_2676);
      let x_2678 : i32 = u_xlati82;
      let x_2680 : i32 = u_xlati82;
      let x_2683 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_2678 / 4i)][(x_2680 % 4i)];
      let x_2684 : vec3<f32> = vs_INTERP7;
      let x_2687 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2683 * vec4<f32>(x_2684.x, x_2684.x, x_2684.x, x_2684.x)) + x_2687);
      let x_2689 : i32 = u_xlati82;
      let x_2692 : i32 = u_xlati82;
      let x_2696 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2689 + 2i) / 4i)][((x_2692 + 2i) % 4i)];
      let x_2697 : vec3<f32> = vs_INTERP7;
      let x_2700 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2696 * vec4<f32>(x_2697.z, x_2697.z, x_2697.z, x_2697.z)) + x_2700);
      let x_2702 : vec4<f32> = u_xlat10;
      let x_2703 : i32 = u_xlati82;
      let x_2706 : i32 = u_xlati82;
      let x_2710 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2703 + 3i) / 4i)][((x_2706 + 3i) % 4i)];
      u_xlat10 = (x_2702 + x_2710);
      let x_2712 : vec4<f32> = u_xlat10;
      let x_2714 : vec4<f32> = u_xlat10;
      let x_2716 : vec3<f32> = (vec3<f32>(x_2712.x, x_2712.y, x_2712.z) / vec3<f32>(x_2714.w, x_2714.w, x_2714.w));
      let x_2717 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2717.w);
      let x_2720 : i32 = u_xlati29;
      let x_2722 : f32 = x_497.x_AdditionalShadowParams[x_2720].y;
      u_xlatb82 = (0.0f < x_2722);
      let x_2724 : bool = u_xlatb82;
      if (x_2724) {
        let x_2727 : i32 = u_xlati29;
        let x_2729 : f32 = x_497.x_AdditionalShadowParams[x_2727].y;
        u_xlatb82 = (1.0f == x_2729);
        let x_2731 : bool = u_xlatb82;
        if (x_2731) {
          let x_2734 : vec4<f32> = u_xlat10;
          let x_2738 : vec4<f32> = x_497.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y) + x_2738);
          let x_2741 : vec4<f32> = u_xlat11;
          let x_2742 : vec2<f32> = vec2<f32>(x_2741.x, x_2741.y);
          let x_2744 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2742.x, x_2742.y, x_2744);
          let x_2752 : vec3<f32> = txVec30;
          let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
          u_xlat12.x = x_2754;
          let x_2757 : vec4<f32> = u_xlat11;
          let x_2758 : vec2<f32> = vec2<f32>(x_2757.z, x_2757.w);
          let x_2760 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2758.x, x_2758.y, x_2760);
          let x_2767 : vec3<f32> = txVec31;
          let x_2769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2767.xy, x_2767.z);
          u_xlat12.y = x_2769;
          let x_2771 : vec4<f32> = u_xlat10;
          let x_2775 : vec4<f32> = x_497.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y) + x_2775);
          let x_2778 : vec4<f32> = u_xlat11;
          let x_2779 : vec2<f32> = vec2<f32>(x_2778.x, x_2778.y);
          let x_2781 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2779.x, x_2779.y, x_2781);
          let x_2788 : vec3<f32> = txVec32;
          let x_2790 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2788.xy, x_2788.z);
          u_xlat12.z = x_2790;
          let x_2793 : vec4<f32> = u_xlat11;
          let x_2794 : vec2<f32> = vec2<f32>(x_2793.z, x_2793.w);
          let x_2796 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
          let x_2803 : vec3<f32> = txVec33;
          let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
          u_xlat12.w = x_2805;
          let x_2807 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2807, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2810 : i32 = u_xlati29;
          let x_2812 : f32 = x_497.x_AdditionalShadowParams[x_2810].y;
          u_xlatb84 = (2.0f == x_2812);
          let x_2814 : bool = u_xlatb84;
          if (x_2814) {
            let x_2817 : vec4<f32> = u_xlat10;
            let x_2821 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2824 : vec2<f32> = ((vec2<f32>(x_2817.x, x_2817.y) * vec2<f32>(x_2821.z, x_2821.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2825 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2824.x, x_2824.y, x_2825.z, x_2825.w);
            let x_2827 : vec4<f32> = u_xlat11;
            let x_2829 : vec2<f32> = floor(vec2<f32>(x_2827.x, x_2827.y));
            let x_2830 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2829.x, x_2829.y, x_2830.z, x_2830.w);
            let x_2833 : vec4<f32> = u_xlat10;
            let x_2836 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.z, x_2836.w)) + -(vec2<f32>(x_2839.x, x_2839.y)));
            let x_2843 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2843.x, x_2843.x, x_2843.y, x_2843.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2846 : vec4<f32> = u_xlat12;
            let x_2848 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2846.x, x_2846.x, x_2846.z, x_2846.z) * vec4<f32>(x_2848.x, x_2848.x, x_2848.z, x_2848.z));
            let x_2851 : vec4<f32> = u_xlat13;
            let x_2853 : vec2<f32> = (vec2<f32>(x_2851.y, x_2851.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2854 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2853.x, x_2854.y, x_2853.y, x_2854.w);
            let x_2856 : vec4<f32> = u_xlat13;
            let x_2859 : vec2<f32> = u_xlat61;
            let x_2861 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2859));
            let x_2862 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2861.x, x_2861.y, x_2862.z, x_2862.w);
            let x_2865 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2865) + vec2<f32>(1.0f, 1.0f));
            let x_2868 : vec2<f32> = u_xlat61;
            let x_2869 : vec2<f32> = min(x_2868, vec2<f32>(0.0f, 0.0f));
            let x_2870 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2869.x, x_2869.y, x_2870.z, x_2870.w);
            let x_2872 : vec4<f32> = u_xlat14;
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2878 : vec2<f32> = u_xlat63;
            let x_2879 : vec2<f32> = ((-(vec2<f32>(x_2872.x, x_2872.y)) * vec2<f32>(x_2875.x, x_2875.y)) + x_2878);
            let x_2880 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2879.x, x_2879.y, x_2880.z, x_2880.w);
            let x_2882 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2882, vec2<f32>(0.0f, 0.0f));
            let x_2884 : vec2<f32> = u_xlat61;
            let x_2886 : vec2<f32> = u_xlat61;
            let x_2888 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2884) * x_2886) + vec2<f32>(x_2888.y, x_2888.w));
            let x_2891 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.x, x_2891.y) + vec2<f32>(1.0f, 1.0f));
            let x_2894 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2896 + vec2<f32>(1.0f, 1.0f));
            let x_2898 : vec4<f32> = u_xlat13;
            let x_2900 : vec2<f32> = (vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2901 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2900.x, x_2900.y, x_2901.z, x_2901.w);
            let x_2903 : vec2<f32> = u_xlat63;
            let x_2904 : vec2<f32> = (x_2903 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2905 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2907 : vec4<f32> = u_xlat14;
            let x_2909 : vec2<f32> = (vec2<f32>(x_2907.x, x_2907.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2910 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2909.x, x_2909.y, x_2910.z, x_2910.w);
            let x_2912 : vec2<f32> = u_xlat61;
            let x_2913 : vec2<f32> = (x_2912 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2914 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2916.y, x_2916.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2920 : f32 = u_xlat14.x;
            u_xlat15.z = x_2920;
            let x_2923 : f32 = u_xlat61.x;
            u_xlat15.w = x_2923;
            let x_2926 : f32 = u_xlat16.x;
            u_xlat13.z = x_2926;
            let x_2929 : f32 = u_xlat12.x;
            u_xlat13.w = x_2929;
            let x_2931 : vec4<f32> = u_xlat13;
            let x_2933 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2931.z, x_2931.w, x_2931.x, x_2931.z) + vec4<f32>(x_2933.z, x_2933.w, x_2933.x, x_2933.z));
            let x_2937 : f32 = u_xlat15.y;
            u_xlat14.z = x_2937;
            let x_2940 : f32 = u_xlat61.y;
            u_xlat14.w = x_2940;
            let x_2943 : f32 = u_xlat13.y;
            u_xlat16.z = x_2943;
            let x_2946 : f32 = u_xlat12.z;
            u_xlat16.w = x_2946;
            let x_2948 : vec4<f32> = u_xlat14;
            let x_2950 : vec4<f32> = u_xlat16;
            let x_2952 : vec3<f32> = (vec3<f32>(x_2948.z, x_2948.y, x_2948.w) + vec3<f32>(x_2950.z, x_2950.y, x_2950.w));
            let x_2953 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
            let x_2955 : vec4<f32> = u_xlat13;
            let x_2957 : vec4<f32> = u_xlat17;
            let x_2959 : vec3<f32> = (vec3<f32>(x_2955.x, x_2955.z, x_2955.w) / vec3<f32>(x_2957.z, x_2957.w, x_2957.y));
            let x_2960 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
            let x_2962 : vec4<f32> = u_xlat13;
            let x_2964 : vec3<f32> = (vec3<f32>(x_2962.x, x_2962.y, x_2962.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2965 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
            let x_2967 : vec4<f32> = u_xlat16;
            let x_2969 : vec4<f32> = u_xlat12;
            let x_2971 : vec3<f32> = (vec3<f32>(x_2967.z, x_2967.y, x_2967.w) / vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
            let x_2972 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
            let x_2974 : vec4<f32> = u_xlat14;
            let x_2976 : vec3<f32> = (vec3<f32>(x_2974.x, x_2974.y, x_2974.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2977 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
            let x_2979 : vec4<f32> = u_xlat13;
            let x_2982 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2984 : vec3<f32> = (vec3<f32>(x_2979.y, x_2979.x, x_2979.z) * vec3<f32>(x_2982.x, x_2982.x, x_2982.x));
            let x_2985 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2984.x, x_2984.y, x_2984.z, x_2985.w);
            let x_2987 : vec4<f32> = u_xlat14;
            let x_2990 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2992 : vec3<f32> = (vec3<f32>(x_2987.x, x_2987.y, x_2987.z) * vec3<f32>(x_2990.y, x_2990.y, x_2990.y));
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2992.x, x_2992.y, x_2992.z, x_2993.w);
            let x_2996 : f32 = u_xlat14.x;
            u_xlat13.w = x_2996;
            let x_2998 : vec4<f32> = u_xlat11;
            let x_3001 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2998.x, x_2998.y, x_2998.x, x_2998.y) * vec4<f32>(x_3001.x, x_3001.y, x_3001.x, x_3001.y)) + vec4<f32>(x_3004.y, x_3004.w, x_3004.x, x_3004.w));
            let x_3007 : vec4<f32> = u_xlat11;
            let x_3010 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3013 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3007.x, x_3007.y) * vec2<f32>(x_3010.x, x_3010.y)) + vec2<f32>(x_3013.z, x_3013.w));
            let x_3017 : f32 = u_xlat13.y;
            u_xlat14.w = x_3017;
            let x_3019 : vec4<f32> = u_xlat14;
            let x_3020 : vec2<f32> = vec2<f32>(x_3019.y, x_3019.z);
            let x_3021 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3021.x, x_3020.x, x_3021.z, x_3020.y);
            let x_3023 : vec4<f32> = u_xlat11;
            let x_3026 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3029 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y) * vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y)) + vec4<f32>(x_3029.x, x_3029.y, x_3029.z, x_3029.y));
            let x_3032 : vec4<f32> = u_xlat11;
            let x_3035 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y) * vec4<f32>(x_3035.x, x_3035.y, x_3035.x, x_3035.y)) + vec4<f32>(x_3038.w, x_3038.y, x_3038.w, x_3038.z));
            let x_3041 : vec4<f32> = u_xlat11;
            let x_3044 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3047 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.y) * vec4<f32>(x_3044.x, x_3044.y, x_3044.x, x_3044.y)) + vec4<f32>(x_3047.x, x_3047.w, x_3047.z, x_3047.w));
            let x_3050 : vec4<f32> = u_xlat12;
            let x_3052 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3050.x, x_3050.x, x_3050.x, x_3050.y) * vec4<f32>(x_3052.z, x_3052.w, x_3052.y, x_3052.z));
            let x_3055 : vec4<f32> = u_xlat12;
            let x_3057 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3055.y, x_3055.y, x_3055.z, x_3055.z) * x_3057);
            let x_3060 : f32 = u_xlat12.z;
            let x_3062 : f32 = u_xlat17.y;
            u_xlat84 = (x_3060 * x_3062);
            let x_3065 : vec4<f32> = u_xlat15;
            let x_3066 : vec2<f32> = vec2<f32>(x_3065.x, x_3065.y);
            let x_3068 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec34;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat85 = x_3077;
            let x_3079 : vec4<f32> = u_xlat15;
            let x_3080 : vec2<f32> = vec2<f32>(x_3079.z, x_3079.w);
            let x_3082 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3080.x, x_3080.y, x_3082);
            let x_3089 : vec3<f32> = txVec35;
            let x_3091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3089.xy, x_3089.z);
            u_xlat11.x = x_3091;
            let x_3094 : f32 = u_xlat11.x;
            let x_3096 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3094 * x_3096);
            let x_3100 : f32 = u_xlat18.x;
            let x_3101 : f32 = u_xlat85;
            let x_3104 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3100 * x_3101) + x_3104);
            let x_3107 : vec2<f32> = u_xlat61;
            let x_3109 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3116 : vec3<f32> = txVec36;
            let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
            u_xlat11.x = x_3118;
            let x_3121 : f32 = u_xlat18.z;
            let x_3123 : f32 = u_xlat11.x;
            let x_3125 : f32 = u_xlat85;
            u_xlat85 = ((x_3121 * x_3123) + x_3125);
            let x_3128 : vec4<f32> = u_xlat14;
            let x_3129 : vec2<f32> = vec2<f32>(x_3128.x, x_3128.y);
            let x_3131 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
            let x_3138 : vec3<f32> = txVec37;
            let x_3140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3138.xy, x_3138.z);
            u_xlat11.x = x_3140;
            let x_3143 : f32 = u_xlat18.w;
            let x_3145 : f32 = u_xlat11.x;
            let x_3147 : f32 = u_xlat85;
            u_xlat85 = ((x_3143 * x_3145) + x_3147);
            let x_3150 : vec4<f32> = u_xlat16;
            let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
            let x_3153 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec38;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat11.x = x_3162;
            let x_3165 : f32 = u_xlat19.x;
            let x_3167 : f32 = u_xlat11.x;
            let x_3169 : f32 = u_xlat85;
            u_xlat85 = ((x_3165 * x_3167) + x_3169);
            let x_3172 : vec4<f32> = u_xlat16;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.z, x_3172.w);
            let x_3175 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec39;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat11.x = x_3184;
            let x_3187 : f32 = u_xlat19.y;
            let x_3189 : f32 = u_xlat11.x;
            let x_3191 : f32 = u_xlat85;
            u_xlat85 = ((x_3187 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat14;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.z, x_3194.w);
            let x_3197 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec40;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat11.x = x_3206;
            let x_3209 : f32 = u_xlat19.z;
            let x_3211 : f32 = u_xlat11.x;
            let x_3213 : f32 = u_xlat85;
            u_xlat85 = ((x_3209 * x_3211) + x_3213);
            let x_3216 : vec4<f32> = u_xlat13;
            let x_3217 : vec2<f32> = vec2<f32>(x_3216.x, x_3216.y);
            let x_3219 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
            let x_3226 : vec3<f32> = txVec41;
            let x_3228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3226.xy, x_3226.z);
            u_xlat11.x = x_3228;
            let x_3231 : f32 = u_xlat19.w;
            let x_3233 : f32 = u_xlat11.x;
            let x_3235 : f32 = u_xlat85;
            u_xlat85 = ((x_3231 * x_3233) + x_3235);
            let x_3238 : vec4<f32> = u_xlat13;
            let x_3239 : vec2<f32> = vec2<f32>(x_3238.z, x_3238.w);
            let x_3241 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3239.x, x_3239.y, x_3241);
            let x_3248 : vec3<f32> = txVec42;
            let x_3250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
            u_xlat11.x = x_3250;
            let x_3252 : f32 = u_xlat84;
            let x_3254 : f32 = u_xlat11.x;
            let x_3256 : f32 = u_xlat85;
            u_xlat82 = ((x_3252 * x_3254) + x_3256);
          } else {
            let x_3259 : vec4<f32> = u_xlat10;
            let x_3262 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3265 : vec2<f32> = ((vec2<f32>(x_3259.x, x_3259.y) * vec2<f32>(x_3262.z, x_3262.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3266 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3265.x, x_3265.y, x_3266.z, x_3266.w);
            let x_3268 : vec4<f32> = u_xlat11;
            let x_3270 : vec2<f32> = floor(vec2<f32>(x_3268.x, x_3268.y));
            let x_3271 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3273 : vec4<f32> = u_xlat10;
            let x_3276 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3279 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3273.x, x_3273.y) * vec2<f32>(x_3276.z, x_3276.w)) + -(vec2<f32>(x_3279.x, x_3279.y)));
            let x_3283 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3283.x, x_3283.x, x_3283.y, x_3283.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3286 : vec4<f32> = u_xlat12;
            let x_3288 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3286.x, x_3286.x, x_3286.z, x_3286.z) * vec4<f32>(x_3288.x, x_3288.x, x_3288.z, x_3288.z));
            let x_3291 : vec4<f32> = u_xlat13;
            let x_3293 : vec2<f32> = (vec2<f32>(x_3291.y, x_3291.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3294 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3294.x, x_3293.x, x_3294.z, x_3293.y);
            let x_3296 : vec4<f32> = u_xlat13;
            let x_3299 : vec2<f32> = u_xlat61;
            let x_3301 : vec2<f32> = ((vec2<f32>(x_3296.x, x_3296.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3299));
            let x_3302 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3301.x, x_3302.y, x_3301.y, x_3302.w);
            let x_3304 : vec2<f32> = u_xlat61;
            let x_3306 : vec2<f32> = (-(x_3304) + vec2<f32>(1.0f, 1.0f));
            let x_3307 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3306.x, x_3306.y, x_3307.z, x_3307.w);
            let x_3309 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3309, vec2<f32>(0.0f, 0.0f));
            let x_3311 : vec2<f32> = u_xlat63;
            let x_3313 : vec2<f32> = u_xlat63;
            let x_3315 : vec4<f32> = u_xlat13;
            let x_3317 : vec2<f32> = ((-(x_3311) * x_3313) + vec2<f32>(x_3315.x, x_3315.y));
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3317.x, x_3317.y, x_3318.z, x_3318.w);
            let x_3320 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3320, vec2<f32>(0.0f, 0.0f));
            let x_3323 : vec2<f32> = u_xlat63;
            let x_3325 : vec2<f32> = u_xlat63;
            let x_3327 : vec4<f32> = u_xlat12;
            let x_3329 : vec2<f32> = ((-(x_3323) * x_3325) + vec2<f32>(x_3327.y, x_3327.w));
            let x_3330 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3329.x, x_3330.y, x_3329.y);
            let x_3332 : vec4<f32> = u_xlat13;
            let x_3334 : vec2<f32> = (vec2<f32>(x_3332.x, x_3332.y) + vec2<f32>(2.0f, 2.0f));
            let x_3335 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3334.x, x_3334.y, x_3335.z, x_3335.w);
            let x_3337 : vec3<f32> = u_xlat37;
            let x_3339 : vec2<f32> = (vec2<f32>(x_3337.x, x_3337.z) + vec2<f32>(2.0f, 2.0f));
            let x_3340 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3340.x, x_3339.x, x_3340.z, x_3339.y);
            let x_3343 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3343 * 0.08163200318813323975f);
            let x_3346 : vec4<f32> = u_xlat12;
            let x_3348 : vec3<f32> = (vec3<f32>(x_3346.z, x_3346.x, x_3346.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3349 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3348.x, x_3348.y, x_3348.z, x_3349.w);
            let x_3351 : vec4<f32> = u_xlat13;
            let x_3353 : vec2<f32> = (vec2<f32>(x_3351.x, x_3351.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3354 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3353.x, x_3353.y, x_3354.z, x_3354.w);
            let x_3357 : f32 = u_xlat16.y;
            u_xlat15.x = x_3357;
            let x_3359 : vec2<f32> = u_xlat61;
            let x_3362 : vec2<f32> = ((vec2<f32>(x_3359.x, x_3359.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3363 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3363.x, x_3362.x, x_3363.z, x_3362.y);
            let x_3365 : vec2<f32> = u_xlat61;
            let x_3368 : vec2<f32> = ((vec2<f32>(x_3365.x, x_3365.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3369 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3368.x, x_3369.y, x_3368.y, x_3369.w);
            let x_3372 : f32 = u_xlat12.x;
            u_xlat13.y = x_3372;
            let x_3375 : f32 = u_xlat14.y;
            u_xlat13.w = x_3375;
            let x_3377 : vec4<f32> = u_xlat13;
            let x_3378 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3377 + x_3378);
            let x_3380 : vec2<f32> = u_xlat61;
            let x_3383 : vec2<f32> = ((vec2<f32>(x_3380.y, x_3380.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3384 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3384.x, x_3383.x, x_3384.z, x_3383.y);
            let x_3386 : vec2<f32> = u_xlat61;
            let x_3389 : vec2<f32> = ((vec2<f32>(x_3386.y, x_3386.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3390 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3389.x, x_3390.y, x_3389.y, x_3390.w);
            let x_3393 : f32 = u_xlat12.y;
            u_xlat14.y = x_3393;
            let x_3395 : vec4<f32> = u_xlat14;
            let x_3396 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3395 + x_3396);
            let x_3398 : vec4<f32> = u_xlat13;
            let x_3399 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3398 / x_3399);
            let x_3401 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3401 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3403 : vec4<f32> = u_xlat14;
            let x_3404 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3403 / x_3404);
            let x_3406 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3406 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3408 : vec4<f32> = u_xlat13;
            let x_3411 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3408.w, x_3408.x, x_3408.y, x_3408.z) * vec4<f32>(x_3411.x, x_3411.x, x_3411.x, x_3411.x));
            let x_3414 : vec4<f32> = u_xlat14;
            let x_3417 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3414.x, x_3414.w, x_3414.y, x_3414.z) * vec4<f32>(x_3417.y, x_3417.y, x_3417.y, x_3417.y));
            let x_3420 : vec4<f32> = u_xlat13;
            let x_3421 : vec3<f32> = vec3<f32>(x_3420.y, x_3420.z, x_3420.w);
            let x_3422 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3421.x, x_3422.y, x_3421.y, x_3421.z);
            let x_3425 : f32 = u_xlat14.x;
            u_xlat16.y = x_3425;
            let x_3427 : vec4<f32> = u_xlat11;
            let x_3430 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3433 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3427.x, x_3427.y, x_3427.x, x_3427.y) * vec4<f32>(x_3430.x, x_3430.y, x_3430.x, x_3430.y)) + vec4<f32>(x_3433.x, x_3433.y, x_3433.z, x_3433.y));
            let x_3436 : vec4<f32> = u_xlat11;
            let x_3439 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3442 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3436.x, x_3436.y) * vec2<f32>(x_3439.x, x_3439.y)) + vec2<f32>(x_3442.w, x_3442.y));
            let x_3446 : f32 = u_xlat16.y;
            u_xlat13.y = x_3446;
            let x_3449 : f32 = u_xlat14.z;
            u_xlat16.y = x_3449;
            let x_3451 : vec4<f32> = u_xlat11;
            let x_3454 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3457 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3451.x, x_3451.y, x_3451.x, x_3451.y) * vec4<f32>(x_3454.x, x_3454.y, x_3454.x, x_3454.y)) + vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3457.y));
            let x_3460 : vec4<f32> = u_xlat11;
            let x_3463 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3466 : vec4<f32> = u_xlat16;
            let x_3468 : vec2<f32> = ((vec2<f32>(x_3460.x, x_3460.y) * vec2<f32>(x_3463.x, x_3463.y)) + vec2<f32>(x_3466.w, x_3466.y));
            let x_3469 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3468.x, x_3468.y, x_3469.z, x_3469.w);
            let x_3472 : f32 = u_xlat16.y;
            u_xlat13.z = x_3472;
            let x_3474 : vec4<f32> = u_xlat11;
            let x_3477 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3480 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3474.x, x_3474.y, x_3474.x, x_3474.y) * vec4<f32>(x_3477.x, x_3477.y, x_3477.x, x_3477.y)) + vec4<f32>(x_3480.x, x_3480.y, x_3480.x, x_3480.z));
            let x_3484 : f32 = u_xlat14.w;
            u_xlat16.y = x_3484;
            let x_3487 : vec4<f32> = u_xlat11;
            let x_3490 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3487.x, x_3487.y, x_3487.x, x_3487.y) * vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y)) + vec4<f32>(x_3493.x, x_3493.y, x_3493.z, x_3493.y));
            let x_3497 : vec4<f32> = u_xlat11;
            let x_3500 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3503 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3497.x, x_3497.y) * vec2<f32>(x_3500.x, x_3500.y)) + vec2<f32>(x_3503.w, x_3503.y));
            let x_3507 : f32 = u_xlat16.y;
            u_xlat13.w = x_3507;
            let x_3510 : vec4<f32> = u_xlat11;
            let x_3513 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3516 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3510.x, x_3510.y) * vec2<f32>(x_3513.x, x_3513.y)) + vec2<f32>(x_3516.x, x_3516.w));
            let x_3519 : vec4<f32> = u_xlat16;
            let x_3520 : vec3<f32> = vec3<f32>(x_3519.x, x_3519.z, x_3519.w);
            let x_3521 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3520.x, x_3521.y, x_3520.y, x_3520.z);
            let x_3523 : vec4<f32> = u_xlat11;
            let x_3526 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3529 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3523.x, x_3523.y, x_3523.x, x_3523.y) * vec4<f32>(x_3526.x, x_3526.y, x_3526.x, x_3526.y)) + vec4<f32>(x_3529.x, x_3529.y, x_3529.z, x_3529.y));
            let x_3533 : vec4<f32> = u_xlat11;
            let x_3536 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3539 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3533.x, x_3533.y) * vec2<f32>(x_3536.x, x_3536.y)) + vec2<f32>(x_3539.w, x_3539.y));
            let x_3543 : f32 = u_xlat13.x;
            u_xlat14.x = x_3543;
            let x_3545 : vec4<f32> = u_xlat11;
            let x_3548 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3551 : vec4<f32> = u_xlat14;
            let x_3553 : vec2<f32> = ((vec2<f32>(x_3545.x, x_3545.y) * vec2<f32>(x_3548.x, x_3548.y)) + vec2<f32>(x_3551.x, x_3551.y));
            let x_3554 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3553.x, x_3553.y, x_3554.z, x_3554.w);
            let x_3557 : vec4<f32> = u_xlat12;
            let x_3559 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3557.x, x_3557.x, x_3557.x, x_3557.x) * x_3559);
            let x_3562 : vec4<f32> = u_xlat12;
            let x_3564 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3562.y, x_3562.y, x_3562.y, x_3562.y) * x_3564);
            let x_3567 : vec4<f32> = u_xlat12;
            let x_3569 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3567.z, x_3567.z, x_3567.z, x_3567.z) * x_3569);
            let x_3571 : vec4<f32> = u_xlat12;
            let x_3573 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3571.w, x_3571.w, x_3571.w, x_3571.w) * x_3573);
            let x_3576 : vec4<f32> = u_xlat17;
            let x_3577 : vec2<f32> = vec2<f32>(x_3576.x, x_3576.y);
            let x_3579 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3577.x, x_3577.y, x_3579);
            let x_3586 : vec3<f32> = txVec43;
            let x_3588 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3586.xy, x_3586.z);
            u_xlat84 = x_3588;
            let x_3590 : vec4<f32> = u_xlat17;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.z, x_3590.w);
            let x_3593 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec44;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat85 = x_3602;
            let x_3603 : f32 = u_xlat85;
            let x_3605 : f32 = u_xlat22.y;
            u_xlat85 = (x_3603 * x_3605);
            let x_3608 : f32 = u_xlat22.x;
            let x_3609 : f32 = u_xlat84;
            let x_3611 : f32 = u_xlat85;
            u_xlat84 = ((x_3608 * x_3609) + x_3611);
            let x_3614 : vec2<f32> = u_xlat61;
            let x_3616 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3614.x, x_3614.y, x_3616);
            let x_3623 : vec3<f32> = txVec45;
            let x_3625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3623.xy, x_3623.z);
            u_xlat85 = x_3625;
            let x_3627 : f32 = u_xlat22.z;
            let x_3628 : f32 = u_xlat85;
            let x_3630 : f32 = u_xlat84;
            u_xlat84 = ((x_3627 * x_3628) + x_3630);
            let x_3633 : vec4<f32> = u_xlat20;
            let x_3634 : vec2<f32> = vec2<f32>(x_3633.x, x_3633.y);
            let x_3636 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3634.x, x_3634.y, x_3636);
            let x_3643 : vec3<f32> = txVec46;
            let x_3645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3643.xy, x_3643.z);
            u_xlat85 = x_3645;
            let x_3647 : f32 = u_xlat22.w;
            let x_3648 : f32 = u_xlat85;
            let x_3650 : f32 = u_xlat84;
            u_xlat84 = ((x_3647 * x_3648) + x_3650);
            let x_3653 : vec4<f32> = u_xlat18;
            let x_3654 : vec2<f32> = vec2<f32>(x_3653.x, x_3653.y);
            let x_3656 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec47;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat85 = x_3665;
            let x_3667 : f32 = u_xlat23.x;
            let x_3668 : f32 = u_xlat85;
            let x_3670 : f32 = u_xlat84;
            u_xlat84 = ((x_3667 * x_3668) + x_3670);
            let x_3673 : vec4<f32> = u_xlat18;
            let x_3674 : vec2<f32> = vec2<f32>(x_3673.z, x_3673.w);
            let x_3676 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3674.x, x_3674.y, x_3676);
            let x_3683 : vec3<f32> = txVec48;
            let x_3685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3683.xy, x_3683.z);
            u_xlat85 = x_3685;
            let x_3687 : f32 = u_xlat23.y;
            let x_3688 : f32 = u_xlat85;
            let x_3690 : f32 = u_xlat84;
            u_xlat84 = ((x_3687 * x_3688) + x_3690);
            let x_3693 : vec4<f32> = u_xlat19;
            let x_3694 : vec2<f32> = vec2<f32>(x_3693.x, x_3693.y);
            let x_3696 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3694.x, x_3694.y, x_3696);
            let x_3703 : vec3<f32> = txVec49;
            let x_3705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3703.xy, x_3703.z);
            u_xlat85 = x_3705;
            let x_3707 : f32 = u_xlat23.z;
            let x_3708 : f32 = u_xlat85;
            let x_3710 : f32 = u_xlat84;
            u_xlat84 = ((x_3707 * x_3708) + x_3710);
            let x_3713 : vec4<f32> = u_xlat20;
            let x_3714 : vec2<f32> = vec2<f32>(x_3713.z, x_3713.w);
            let x_3716 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3714.x, x_3714.y, x_3716);
            let x_3723 : vec3<f32> = txVec50;
            let x_3725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3723.xy, x_3723.z);
            u_xlat85 = x_3725;
            let x_3727 : f32 = u_xlat23.w;
            let x_3728 : f32 = u_xlat85;
            let x_3730 : f32 = u_xlat84;
            u_xlat84 = ((x_3727 * x_3728) + x_3730);
            let x_3733 : vec4<f32> = u_xlat21;
            let x_3734 : vec2<f32> = vec2<f32>(x_3733.x, x_3733.y);
            let x_3736 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3734.x, x_3734.y, x_3736);
            let x_3743 : vec3<f32> = txVec51;
            let x_3745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3743.xy, x_3743.z);
            u_xlat85 = x_3745;
            let x_3747 : f32 = u_xlat24.x;
            let x_3748 : f32 = u_xlat85;
            let x_3750 : f32 = u_xlat84;
            u_xlat84 = ((x_3747 * x_3748) + x_3750);
            let x_3753 : vec4<f32> = u_xlat21;
            let x_3754 : vec2<f32> = vec2<f32>(x_3753.z, x_3753.w);
            let x_3756 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3754.x, x_3754.y, x_3756);
            let x_3763 : vec3<f32> = txVec52;
            let x_3765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3763.xy, x_3763.z);
            u_xlat85 = x_3765;
            let x_3767 : f32 = u_xlat24.y;
            let x_3768 : f32 = u_xlat85;
            let x_3770 : f32 = u_xlat84;
            u_xlat84 = ((x_3767 * x_3768) + x_3770);
            let x_3773 : vec2<f32> = u_xlat38;
            let x_3775 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3773.x, x_3773.y, x_3775);
            let x_3782 : vec3<f32> = txVec53;
            let x_3784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3782.xy, x_3782.z);
            u_xlat85 = x_3784;
            let x_3786 : f32 = u_xlat24.z;
            let x_3787 : f32 = u_xlat85;
            let x_3789 : f32 = u_xlat84;
            u_xlat84 = ((x_3786 * x_3787) + x_3789);
            let x_3792 : vec2<f32> = u_xlat69;
            let x_3794 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3792.x, x_3792.y, x_3794);
            let x_3801 : vec3<f32> = txVec54;
            let x_3803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3801.xy, x_3801.z);
            u_xlat85 = x_3803;
            let x_3805 : f32 = u_xlat24.w;
            let x_3806 : f32 = u_xlat85;
            let x_3808 : f32 = u_xlat84;
            u_xlat84 = ((x_3805 * x_3806) + x_3808);
            let x_3811 : vec4<f32> = u_xlat16;
            let x_3812 : vec2<f32> = vec2<f32>(x_3811.x, x_3811.y);
            let x_3814 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3812.x, x_3812.y, x_3814);
            let x_3821 : vec3<f32> = txVec55;
            let x_3823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3821.xy, x_3821.z);
            u_xlat85 = x_3823;
            let x_3825 : f32 = u_xlat12.x;
            let x_3826 : f32 = u_xlat85;
            let x_3828 : f32 = u_xlat84;
            u_xlat84 = ((x_3825 * x_3826) + x_3828);
            let x_3831 : vec4<f32> = u_xlat16;
            let x_3832 : vec2<f32> = vec2<f32>(x_3831.z, x_3831.w);
            let x_3834 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3832.x, x_3832.y, x_3834);
            let x_3841 : vec3<f32> = txVec56;
            let x_3843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3841.xy, x_3841.z);
            u_xlat85 = x_3843;
            let x_3845 : f32 = u_xlat12.y;
            let x_3846 : f32 = u_xlat85;
            let x_3848 : f32 = u_xlat84;
            u_xlat84 = ((x_3845 * x_3846) + x_3848);
            let x_3851 : vec2<f32> = u_xlat64;
            let x_3853 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3851.x, x_3851.y, x_3853);
            let x_3860 : vec3<f32> = txVec57;
            let x_3862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3860.xy, x_3860.z);
            u_xlat85 = x_3862;
            let x_3864 : f32 = u_xlat12.z;
            let x_3865 : f32 = u_xlat85;
            let x_3867 : f32 = u_xlat84;
            u_xlat84 = ((x_3864 * x_3865) + x_3867);
            let x_3870 : vec4<f32> = u_xlat11;
            let x_3871 : vec2<f32> = vec2<f32>(x_3870.x, x_3870.y);
            let x_3873 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3871.x, x_3871.y, x_3873);
            let x_3880 : vec3<f32> = txVec58;
            let x_3882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3880.xy, x_3880.z);
            u_xlat85 = x_3882;
            let x_3884 : f32 = u_xlat12.w;
            let x_3885 : f32 = u_xlat85;
            let x_3887 : f32 = u_xlat84;
            u_xlat82 = ((x_3884 * x_3885) + x_3887);
          }
        }
      } else {
        let x_3891 : vec4<f32> = u_xlat10;
        let x_3892 : vec2<f32> = vec2<f32>(x_3891.x, x_3891.y);
        let x_3894 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3892.x, x_3892.y, x_3894);
        let x_3901 : vec3<f32> = txVec59;
        let x_3903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3901.xy, x_3901.z);
        u_xlat82 = x_3903;
      }
      let x_3904 : i32 = u_xlati29;
      let x_3906 : f32 = x_497.x_AdditionalShadowParams[x_3904].x;
      u_xlat84 = (1.0f + -(x_3906));
      let x_3909 : f32 = u_xlat82;
      let x_3910 : i32 = u_xlati29;
      let x_3912 : f32 = x_497.x_AdditionalShadowParams[x_3910].x;
      let x_3914 : f32 = u_xlat84;
      u_xlat82 = ((x_3909 * x_3912) + x_3914);
      let x_3917 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3917);
      let x_3920 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3920 >= 1.0f);
      let x_3923 : bool = u_xlatb84;
      let x_3925 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3923 | x_3925);
      let x_3927 : bool = u_xlatb84;
      let x_3928 : f32 = u_xlat82;
      u_xlat82 = select(x_3928, 1.0f, x_3927);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3931 : f32 = u_xlat82;
    u_xlat84 = (-(x_3931) + 1.0f);
    let x_3935 : f32 = u_xlat2.x;
    let x_3936 : f32 = u_xlat84;
    let x_3938 : f32 = u_xlat82;
    u_xlat82 = ((x_3935 * x_3936) + x_3938);
    let x_3940 : f32 = u_xlat80;
    let x_3941 : f32 = u_xlat82;
    u_xlat80 = (x_3940 * x_3941);
    let x_3943 : vec4<f32> = u_xlat1;
    let x_3945 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3943.x, x_3943.y, x_3943.z), vec3<f32>(x_3945.x, x_3945.y, x_3945.z));
    let x_3948 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3948, 0.0f, 1.0f);
    let x_3950 : f32 = u_xlat80;
    let x_3951 : f32 = u_xlat82;
    u_xlat80 = (x_3950 * x_3951);
    let x_3953 : f32 = u_xlat80;
    let x_3955 : i32 = u_xlati29;
    let x_3957 : vec4<f32> = x_2503.x_AdditionalLightsColor[x_3955];
    let x_3959 : vec3<f32> = (vec3<f32>(x_3953, x_3953, x_3953) * vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
    let x_3960 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3959.x, x_3959.y, x_3959.z, x_3960.w);
    let x_3962 : vec3<f32> = u_xlat33;
    let x_3963 : f32 = u_xlat81;
    let x_3966 : vec4<f32> = u_xlat3;
    u_xlat33 = ((x_3962 * vec3<f32>(x_3963, x_3963, x_3963)) + vec3<f32>(x_3966.x, x_3966.y, x_3966.z));
    let x_3969 : vec3<f32> = u_xlat33;
    let x_3970 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(x_3969, x_3970);
    let x_3974 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_3974, 1.17549435e-38f);
    let x_3978 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_3978);
    let x_3981 : vec3<f32> = u_xlat29;
    let x_3983 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3981.x, x_3981.x, x_3981.x) * x_3983);
    let x_3985 : vec4<f32> = u_xlat1;
    let x_3987 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(vec3<f32>(x_3985.x, x_3985.y, x_3985.z), x_3987);
    let x_3991 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_3991, 0.0f, 1.0f);
    let x_3994 : vec4<f32> = u_xlat9;
    let x_3996 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_3994.x, x_3994.y, x_3994.z), x_3996);
    let x_3998 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3998, 0.0f, 1.0f);
    let x_4001 : f32 = u_xlat29.x;
    let x_4003 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4001 * x_4003);
    let x_4007 : f32 = u_xlat29.x;
    let x_4009 : f32 = u_xlat8.x;
    u_xlat29.x = ((x_4007 * x_4009) + 1.00001001358032226562f);
    let x_4013 : f32 = u_xlat80;
    let x_4014 : f32 = u_xlat80;
    u_xlat80 = (x_4013 * x_4014);
    let x_4017 : f32 = u_xlat29.x;
    let x_4019 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4017 * x_4019);
    let x_4022 : f32 = u_xlat80;
    u_xlat80 = max(x_4022, 0.10000000149011611938f);
    let x_4025 : f32 = u_xlat29.x;
    let x_4026 : f32 = u_xlat80;
    u_xlat29.x = (x_4025 * x_4026);
    let x_4029 : f32 = u_xlat77;
    let x_4031 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4029 * x_4031);
    let x_4034 : f32 = u_xlat78;
    let x_4036 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4034 / x_4036);
    let x_4039 : vec4<f32> = u_xlat0;
    let x_4041 : vec3<f32> = u_xlat29;
    let x_4044 : vec4<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_4039.x, x_4039.y, x_4039.z) * vec3<f32>(x_4041.x, x_4041.x, x_4041.x)) + vec3<f32>(x_4044.x, x_4044.y, x_4044.z));
    let x_4047 : vec3<f32> = u_xlat33;
    let x_4048 : vec4<f32> = u_xlat10;
    let x_4051 : vec4<f32> = u_xlat7;
    let x_4053 : vec3<f32> = ((x_4047 * vec3<f32>(x_4048.x, x_4048.y, x_4048.z)) + vec3<f32>(x_4051.x, x_4051.y, x_4051.z));
    let x_4054 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4053.x, x_4053.y, x_4053.z, x_4054.w);

    continuing {
      let x_4056 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4056 + bitcast<u32>(1i));
    }
  }
  let x_4058 : vec4<f32> = u_xlat5;
  let x_4060 : f32 = u_xlat52;
  let x_4063 : vec4<f32> = u_xlat4;
  let x_4065 : vec3<f32> = ((vec3<f32>(x_4058.x, x_4058.y, x_4058.z) * vec3<f32>(x_4060, x_4060, x_4060)) + vec3<f32>(x_4063.x, x_4063.z, x_4063.w));
  let x_4066 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4065.x, x_4065.y, x_4065.z, x_4066.w);
  let x_4068 : vec4<f32> = u_xlat7;
  let x_4070 : vec4<f32> = u_xlat0;
  let x_4072 : vec3<f32> = (vec3<f32>(x_4068.x, x_4068.y, x_4068.z) + vec3<f32>(x_4070.x, x_4070.y, x_4070.z));
  let x_4073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4072.x, x_4072.y, x_4072.z, x_4073.w);
  let x_4075 : f32 = u_xlat75;
  let x_4076 : f32 = u_xlat75;
  u_xlat75 = (x_4075 * -(x_4076));
  let x_4079 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4079);
  let x_4081 : vec4<f32> = u_xlat0;
  let x_4084 : vec4<f32> = x_29.unity_FogColor;
  let x_4087 : vec3<f32> = (vec3<f32>(x_4081.x, x_4081.y, x_4081.z) + -(vec3<f32>(x_4084.x, x_4084.y, x_4084.z)));
  let x_4088 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4087.x, x_4087.y, x_4087.z, x_4088.w);
  let x_4092 : f32 = u_xlat75;
  let x_4094 : vec4<f32> = u_xlat0;
  let x_4098 : vec4<f32> = x_29.unity_FogColor;
  let x_4100 : vec3<f32> = ((vec3<f32>(x_4092, x_4092, x_4092) * vec3<f32>(x_4094.x, x_4094.y, x_4094.z)) + vec3<f32>(x_4098.x, x_4098.y, x_4098.z));
  let x_4101 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4100.x, x_4100.y, x_4100.z, x_4101.w);
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


