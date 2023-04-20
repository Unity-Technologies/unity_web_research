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

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb78 : bool;

@group(1) @binding(3) var<uniform> x_670 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb80 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu78 : u32;

var<private> u_xlati79 : i32;

var<private> u_xlati78 : i32;

@group(1) @binding(1) var<uniform> x_2255 : AdditionalLights;

var<private> u_xlati81 : i32;

var<private> u_xlatb83 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb81 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2393 : f32;
  var x_2403 : f32;
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
  u_xlat1.w = 1.0f;
  let x_504 : vec4<f32> = x_349.unity_SHAr;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_504, x_505);
  let x_510 : vec4<f32> = x_349.unity_SHAg;
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_510, x_511);
  let x_516 : vec4<f32> = x_349.unity_SHAb;
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_516, x_517);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_521.y, x_521.z, x_521.z, x_521.x) * vec4<f32>(x_523.x, x_523.y, x_523.z, x_523.z));
  let x_529 : vec4<f32> = x_349.unity_SHBr;
  let x_530 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHBg;
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHBb;
  let x_542 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_541, x_542);
  let x_546 : f32 = u_xlat1.y;
  let x_548 : f32 = u_xlat1.y;
  u_xlat75 = (x_546 * x_548);
  let x_551 : f32 = u_xlat1.x;
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat75;
  u_xlat75 = ((x_551 * x_553) + -(x_555));
  let x_560 : vec4<f32> = x_349.unity_SHC;
  let x_562 : f32 = u_xlat75;
  let x_565 : vec4<f32> = u_xlat6;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(x_562, x_562, x_562)) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat5;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = max(vec3<f32>(x_577.x, x_577.y, x_577.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
  let x_585 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_591 : vec2<f32> = clamp(vec2<f32>(x_587.x, x_587.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_595 : f32 = u_xlat2.x;
  u_xlat75 = ((-(x_595) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_601 : f32 = u_xlat75;
  let x_604 : f32 = u_xlat2.y;
  u_xlat76 = (-(x_601) + x_604);
  let x_606 : f32 = u_xlat75;
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat2.y;
  u_xlat75 = (-(x_631) + 1.0f);
  let x_634 : f32 = u_xlat75;
  let x_635 : f32 = u_xlat75;
  u_xlat2.x = (x_634 * x_635);
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_639, 0.0078125f);
  let x_645 : f32 = u_xlat2.x;
  let x_647 : f32 = u_xlat2.x;
  u_xlat27 = (x_645 * x_647);
  let x_649 : f32 = u_xlat76;
  u_xlat76 = (x_649 + 1.0f);
  let x_651 : f32 = u_xlat76;
  u_xlat76 = min(x_651, 1.0f);
  let x_654 : f32 = u_xlat2.x;
  u_xlat77 = ((x_654 * 4.0f) + 2.0f);
  let x_660 : f32 = u_xlat2.z;
  u_xlat52 = min(x_660, 1.0f);
  let x_673 : f32 = x_670.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_673);
  let x_675 : bool = u_xlatb78;
  if (x_675) {
    let x_679 : f32 = x_670.x_MainLightShadowParams.y;
    u_xlatb78 = (x_679 == 1.0f);
    let x_681 : bool = u_xlatb78;
    if (x_681) {
      let x_685 : vec4<f32> = vs_INTERP3;
      let x_688 : vec4<f32> = x_670.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) + x_688);
      let x_692 : vec4<f32> = u_xlat6;
      let x_693 : vec2<f32> = vec2<f32>(x_692.x, x_692.y);
      let x_695 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_693.x, x_693.y, x_695);
      let x_708 : vec3<f32> = txVec0;
      let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
      u_xlat7.x = x_710;
      let x_713 : vec4<f32> = u_xlat6;
      let x_714 : vec2<f32> = vec2<f32>(x_713.z, x_713.w);
      let x_716 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_714.x, x_714.y, x_716);
      let x_723 : vec3<f32> = txVec1;
      let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
      u_xlat7.y = x_725;
      let x_727 : vec4<f32> = vs_INTERP3;
      let x_731 : vec4<f32> = x_670.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y) + x_731);
      let x_734 : vec4<f32> = u_xlat6;
      let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
      let x_737 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_735.x, x_735.y, x_737);
      let x_744 : vec3<f32> = txVec2;
      let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
      u_xlat7.z = x_746;
      let x_749 : vec4<f32> = u_xlat6;
      let x_750 : vec2<f32> = vec2<f32>(x_749.z, x_749.w);
      let x_752 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_750.x, x_750.y, x_752);
      let x_759 : vec3<f32> = txVec3;
      let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_759.xy, x_759.z);
      u_xlat7.w = x_761;
      let x_764 : vec4<f32> = u_xlat7;
      u_xlat78 = dot(x_764, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_771 : f32 = x_670.x_MainLightShadowParams.y;
      u_xlatb79 = (x_771 == 2.0f);
      let x_773 : bool = u_xlatb79;
      if (x_773) {
        let x_776 : vec4<f32> = vs_INTERP3;
        let x_780 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_785 : vec2<f32> = ((vec2<f32>(x_776.x, x_776.y) * vec2<f32>(x_780.z, x_780.w)) + vec2<f32>(0.5f, 0.5f));
        let x_786 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat6;
        let x_790 : vec2<f32> = floor(vec2<f32>(x_788.x, x_788.y));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_794 : vec4<f32> = vs_INTERP3;
        let x_797 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_797.z, x_797.w)) + -(vec2<f32>(x_800.x, x_800.y)));
        let x_804 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_804.x, x_804.x, x_804.y, x_804.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_809 : vec4<f32> = u_xlat7;
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z) * vec4<f32>(x_811.x, x_811.x, x_811.z, x_811.z));
        let x_814 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = (vec2<f32>(x_814.y, x_814.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_818.x, x_819.y, x_818.y, x_819.w);
        let x_821 : vec4<f32> = u_xlat8;
        let x_824 : vec2<f32> = u_xlat56;
        let x_826 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.z) * vec2<f32>(0.5f, 0.5f)) + -(x_824));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_830 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_830) + vec2<f32>(1.0f, 1.0f));
        let x_835 : vec2<f32> = u_xlat56;
        let x_837 : vec2<f32> = min(x_835, vec2<f32>(0.0f, 0.0f));
        let x_838 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec4<f32> = u_xlat9;
        let x_843 : vec4<f32> = u_xlat9;
        let x_846 : vec2<f32> = u_xlat58;
        let x_847 : vec2<f32> = ((-(vec2<f32>(x_840.x, x_840.y)) * vec2<f32>(x_843.x, x_843.y)) + x_846);
        let x_848 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_850, vec2<f32>(0.0f, 0.0f));
        let x_852 : vec2<f32> = u_xlat56;
        let x_854 : vec2<f32> = u_xlat56;
        let x_856 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_852) * x_854) + vec2<f32>(x_856.y, x_856.w));
        let x_859 : vec4<f32> = u_xlat9;
        let x_861 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) + vec2<f32>(1.0f, 1.0f));
        let x_862 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_864 + vec2<f32>(1.0f, 1.0f));
        let x_867 : vec4<f32> = u_xlat8;
        let x_871 : vec2<f32> = (vec2<f32>(x_867.x, x_867.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_872 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec2<f32> = u_xlat58;
        let x_875 : vec2<f32> = (x_874 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat9;
        let x_880 : vec2<f32> = (vec2<f32>(x_878.x, x_878.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_881 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_884 : vec2<f32> = u_xlat56;
        let x_885 : vec2<f32> = (x_884 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_886 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_888.y, x_888.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_892 : f32 = u_xlat9.x;
        u_xlat10.z = x_892;
        let x_895 : f32 = u_xlat56.x;
        u_xlat10.w = x_895;
        let x_898 : f32 = u_xlat11.x;
        u_xlat8.z = x_898;
        let x_901 : f32 = u_xlat7.x;
        u_xlat8.w = x_901;
        let x_904 : vec4<f32> = u_xlat8;
        let x_906 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_904.z, x_904.w, x_904.x, x_904.z) + vec4<f32>(x_906.z, x_906.w, x_906.x, x_906.z));
        let x_910 : f32 = u_xlat10.y;
        u_xlat9.z = x_910;
        let x_913 : f32 = u_xlat56.y;
        u_xlat9.w = x_913;
        let x_916 : f32 = u_xlat8.y;
        u_xlat11.z = x_916;
        let x_919 : f32 = u_xlat7.z;
        u_xlat11.w = x_919;
        let x_921 : vec4<f32> = u_xlat9;
        let x_923 : vec4<f32> = u_xlat11;
        let x_925 : vec3<f32> = (vec3<f32>(x_921.z, x_921.y, x_921.w) + vec3<f32>(x_923.z, x_923.y, x_923.w));
        let x_926 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat8;
        let x_930 : vec4<f32> = u_xlat12;
        let x_932 : vec3<f32> = (vec3<f32>(x_928.x, x_928.z, x_928.w) / vec3<f32>(x_930.z, x_930.w, x_930.y));
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat8;
        let x_941 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat11;
        let x_946 : vec4<f32> = u_xlat7;
        let x_948 : vec3<f32> = (vec3<f32>(x_944.z, x_944.y, x_944.w) / vec3<f32>(x_946.x, x_946.y, x_946.z));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat9;
        let x_953 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_961 : vec3<f32> = (vec3<f32>(x_956.y, x_956.x, x_956.z) * vec3<f32>(x_959.x, x_959.x, x_959.x));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat9;
        let x_967 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_969 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_967.y, x_967.y, x_967.y));
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
        let x_973 : f32 = u_xlat9.x;
        u_xlat8.w = x_973;
        let x_975 : vec4<f32> = u_xlat6;
        let x_978 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.y, x_981.w, x_981.x, x_981.w));
        let x_984 : vec4<f32> = u_xlat6;
        let x_987 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.z, x_990.w));
        let x_994 : f32 = u_xlat8.y;
        u_xlat9.w = x_994;
        let x_996 : vec4<f32> = u_xlat9;
        let x_997 : vec2<f32> = vec2<f32>(x_996.y, x_996.z);
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat6;
        let x_1003 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1000.x, x_1000.y, x_1000.x, x_1000.y) * vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y)) + vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1012 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y) * vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y)) + vec4<f32>(x_1015.w, x_1015.y, x_1015.w, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1021 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y) * vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y)) + vec4<f32>(x_1024.x, x_1024.w, x_1024.z, x_1024.w));
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1030 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1028.x, x_1028.x, x_1028.x, x_1028.y) * vec4<f32>(x_1030.z, x_1030.w, x_1030.y, x_1030.z));
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1036 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1034.y, x_1034.y, x_1034.z, x_1034.z) * x_1036);
        let x_1040 : f32 = u_xlat7.z;
        let x_1042 : f32 = u_xlat12.y;
        u_xlat79 = (x_1040 * x_1042);
        let x_1045 : vec4<f32> = u_xlat10;
        let x_1046 : vec2<f32> = vec2<f32>(x_1045.x, x_1045.y);
        let x_1048 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
        let x_1056 : vec3<f32> = txVec4;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1056.xy, x_1056.z);
        u_xlat80 = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec5;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1070.xy, x_1070.z);
        u_xlat6.x = x_1072;
        let x_1075 : f32 = u_xlat6.x;
        let x_1077 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1075 * x_1077);
        let x_1081 : f32 = u_xlat13.x;
        let x_1082 : f32 = u_xlat80;
        let x_1085 : f32 = u_xlat6.x;
        u_xlat80 = ((x_1081 * x_1082) + x_1085);
        let x_1088 : vec2<f32> = u_xlat56;
        let x_1090 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec6;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat6.x = x_1099;
        let x_1102 : f32 = u_xlat13.z;
        let x_1104 : f32 = u_xlat6.x;
        let x_1106 : f32 = u_xlat80;
        u_xlat80 = ((x_1102 * x_1104) + x_1106);
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec7;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat6.x = x_1121;
        let x_1124 : f32 = u_xlat13.w;
        let x_1126 : f32 = u_xlat6.x;
        let x_1128 : f32 = u_xlat80;
        u_xlat80 = ((x_1124 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat11;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec8;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1141.xy, x_1141.z);
        u_xlat6.x = x_1143;
        let x_1146 : f32 = u_xlat14.x;
        let x_1148 : f32 = u_xlat6.x;
        let x_1150 : f32 = u_xlat80;
        u_xlat80 = ((x_1146 * x_1148) + x_1150);
        let x_1153 : vec4<f32> = u_xlat11;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.z, x_1153.w);
        let x_1156 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec9;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat6.x = x_1165;
        let x_1168 : f32 = u_xlat14.y;
        let x_1170 : f32 = u_xlat6.x;
        let x_1172 : f32 = u_xlat80;
        u_xlat80 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec10;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat6.x = x_1187;
        let x_1190 : f32 = u_xlat14.z;
        let x_1192 : f32 = u_xlat6.x;
        let x_1194 : f32 = u_xlat80;
        u_xlat80 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec11;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat6.x = x_1209;
        let x_1212 : f32 = u_xlat14.w;
        let x_1214 : f32 = u_xlat6.x;
        let x_1216 : f32 = u_xlat80;
        u_xlat80 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec12;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat6.x = x_1231;
        let x_1233 : f32 = u_xlat79;
        let x_1235 : f32 = u_xlat6.x;
        let x_1237 : f32 = u_xlat80;
        u_xlat78 = ((x_1233 * x_1235) + x_1237);
      } else {
        let x_1240 : vec4<f32> = vs_INTERP3;
        let x_1243 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.z, x_1243.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat6;
        let x_1251 : vec2<f32> = floor(vec2<f32>(x_1249.x, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        let x_1254 : vec4<f32> = vs_INTERP3;
        let x_1257 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.z, x_1257.w)) + -(vec2<f32>(x_1260.x, x_1260.y)));
        let x_1264 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1264.x, x_1264.x, x_1264.y, x_1264.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1269 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1267.x, x_1267.x, x_1267.z, x_1267.z) * vec4<f32>(x_1269.x, x_1269.x, x_1269.z, x_1269.z));
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1276 : vec2<f32> = (vec2<f32>(x_1272.y, x_1272.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1277.x, x_1276.x, x_1277.z, x_1276.y);
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1282 : vec2<f32> = u_xlat56;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1279.x, x_1279.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1282));
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1284.x, x_1285.y, x_1284.y, x_1285.w);
        let x_1287 : vec2<f32> = u_xlat56;
        let x_1289 : vec2<f32> = (-(x_1287) + vec2<f32>(1.0f, 1.0f));
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1292, vec2<f32>(0.0f, 0.0f));
        let x_1294 : vec2<f32> = u_xlat58;
        let x_1296 : vec2<f32> = u_xlat58;
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1300 : vec2<f32> = ((-(x_1294) * x_1296) + vec2<f32>(x_1298.x, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
        let x_1303 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1303, vec2<f32>(0.0f, 0.0f));
        let x_1306 : vec2<f32> = u_xlat58;
        let x_1308 : vec2<f32> = u_xlat58;
        let x_1310 : vec4<f32> = u_xlat7;
        let x_1312 : vec2<f32> = ((-(x_1306) * x_1308) + vec2<f32>(x_1310.y, x_1310.w));
        let x_1313 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1312.x, x_1313.y, x_1312.y);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1317 : vec2<f32> = (vec2<f32>(x_1315.x, x_1315.y) + vec2<f32>(2.0f, 2.0f));
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        let x_1320 : vec3<f32> = u_xlat32;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1320.x, x_1320.z) + vec2<f32>(2.0f, 2.0f));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1323.x, x_1322.x, x_1323.z, x_1322.y);
        let x_1326 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1326 * 0.08163200318813323975f);
        let x_1330 : vec4<f32> = u_xlat7;
        let x_1333 : vec3<f32> = (vec3<f32>(x_1330.z, x_1330.x, x_1330.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1339 : vec2<f32> = (vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1340 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1343 : f32 = u_xlat11.y;
        u_xlat10.x = x_1343;
        let x_1345 : vec2<f32> = u_xlat56;
        let x_1352 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1353.x, x_1352.x, x_1353.z, x_1352.y);
        let x_1355 : vec2<f32> = u_xlat56;
        let x_1359 : vec2<f32> = ((vec2<f32>(x_1355.x, x_1355.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1360.w);
        let x_1363 : f32 = u_xlat7.x;
        u_xlat8.y = x_1363;
        let x_1366 : f32 = u_xlat9.y;
        u_xlat8.w = x_1366;
        let x_1368 : vec4<f32> = u_xlat8;
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1368 + x_1369);
        let x_1371 : vec2<f32> = u_xlat56;
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1371.y, x_1371.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1375.x, x_1374.x, x_1375.z, x_1374.y);
        let x_1377 : vec2<f32> = u_xlat56;
        let x_1380 : vec2<f32> = ((vec2<f32>(x_1377.y, x_1377.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1380.x, x_1381.y, x_1380.y, x_1381.w);
        let x_1384 : f32 = u_xlat7.y;
        u_xlat9.y = x_1384;
        let x_1386 : vec4<f32> = u_xlat9;
        let x_1387 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1386 + x_1387);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1389 / x_1390);
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1392 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1399 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1398 / x_1399);
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1401 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1403 : vec4<f32> = u_xlat8;
        let x_1406 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1403.w, x_1403.x, x_1403.y, x_1403.z) * vec4<f32>(x_1406.x, x_1406.x, x_1406.x, x_1406.x));
        let x_1409 : vec4<f32> = u_xlat9;
        let x_1412 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1409.x, x_1409.w, x_1409.y, x_1409.z) * vec4<f32>(x_1412.y, x_1412.y, x_1412.y, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1416 : vec3<f32> = vec3<f32>(x_1415.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1416.x, x_1417.y, x_1416.y, x_1416.z);
        let x_1420 : f32 = u_xlat9.x;
        u_xlat11.y = x_1420;
        let x_1422 : vec4<f32> = u_xlat6;
        let x_1425 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1428 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1422.x, x_1422.y, x_1422.x, x_1422.y) * vec4<f32>(x_1425.x, x_1425.y, x_1425.x, x_1425.y)) + vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1428.y));
        let x_1431 : vec4<f32> = u_xlat6;
        let x_1434 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1434.x, x_1434.y)) + vec2<f32>(x_1437.w, x_1437.y));
        let x_1441 : f32 = u_xlat11.y;
        u_xlat8.y = x_1441;
        let x_1444 : f32 = u_xlat9.z;
        u_xlat11.y = x_1444;
        let x_1446 : vec4<f32> = u_xlat6;
        let x_1449 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.y) * vec4<f32>(x_1449.x, x_1449.y, x_1449.x, x_1449.y)) + vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1452.y));
        let x_1455 : vec4<f32> = u_xlat6;
        let x_1458 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat11;
        let x_1463 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.w, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1467 : f32 = u_xlat11.y;
        u_xlat8.z = x_1467;
        let x_1470 : vec4<f32> = u_xlat6;
        let x_1473 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1470.x, x_1470.y, x_1470.x, x_1470.y) * vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y)) + vec4<f32>(x_1476.x, x_1476.y, x_1476.x, x_1476.z));
        let x_1480 : f32 = u_xlat9.w;
        u_xlat11.y = x_1480;
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y) * vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) + vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1489.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat11.y;
        u_xlat8.w = x_1503;
        let x_1506 : vec4<f32> = u_xlat6;
        let x_1509 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1506.x, x_1506.y) * vec2<f32>(x_1509.x, x_1509.y)) + vec2<f32>(x_1512.x, x_1512.w));
        let x_1515 : vec4<f32> = u_xlat11;
        let x_1516 : vec3<f32> = vec3<f32>(x_1515.x, x_1515.z, x_1515.w);
        let x_1517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1516.x, x_1517.y, x_1516.y, x_1516.z);
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y) * vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y)) + vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1525.y));
        let x_1529 : vec4<f32> = u_xlat6;
        let x_1532 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1535 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1532.x, x_1532.y)) + vec2<f32>(x_1535.w, x_1535.y));
        let x_1539 : f32 = u_xlat8.x;
        u_xlat9.x = x_1539;
        let x_1541 : vec4<f32> = u_xlat6;
        let x_1544 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1547 : vec4<f32> = u_xlat9;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * vec2<f32>(x_1544.x, x_1544.y)) + vec2<f32>(x_1547.x, x_1547.y));
        let x_1550 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1549.x, x_1549.y, x_1550.z, x_1550.w);
        let x_1553 : vec4<f32> = u_xlat7;
        let x_1555 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1553.x, x_1553.x, x_1553.x, x_1553.x) * x_1555);
        let x_1558 : vec4<f32> = u_xlat7;
        let x_1560 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1558.y, x_1558.y, x_1558.y, x_1558.y) * x_1560);
        let x_1563 : vec4<f32> = u_xlat7;
        let x_1565 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1563.z, x_1563.z, x_1563.z, x_1563.z) * x_1565);
        let x_1567 : vec4<f32> = u_xlat7;
        let x_1569 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1567.w, x_1567.w, x_1567.w, x_1567.w) * x_1569);
        let x_1572 : vec4<f32> = u_xlat12;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.x, x_1572.y);
        let x_1575 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec13;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat79 = x_1584;
        let x_1586 : vec4<f32> = u_xlat12;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec14;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat80 = x_1598;
        let x_1599 : f32 = u_xlat80;
        let x_1601 : f32 = u_xlat17.y;
        u_xlat80 = (x_1599 * x_1601);
        let x_1604 : f32 = u_xlat17.x;
        let x_1605 : f32 = u_xlat79;
        let x_1607 : f32 = u_xlat80;
        u_xlat79 = ((x_1604 * x_1605) + x_1607);
        let x_1610 : vec2<f32> = u_xlat56;
        let x_1612 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec15;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1619.xy, x_1619.z);
        u_xlat80 = x_1621;
        let x_1623 : f32 = u_xlat17.z;
        let x_1624 : f32 = u_xlat80;
        let x_1626 : f32 = u_xlat79;
        u_xlat79 = ((x_1623 * x_1624) + x_1626);
        let x_1629 : vec4<f32> = u_xlat15;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec16;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat80 = x_1641;
        let x_1643 : f32 = u_xlat17.w;
        let x_1644 : f32 = u_xlat80;
        let x_1646 : f32 = u_xlat79;
        u_xlat79 = ((x_1643 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat13;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec17;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat80 = x_1661;
        let x_1663 : f32 = u_xlat18.x;
        let x_1664 : f32 = u_xlat80;
        let x_1666 : f32 = u_xlat79;
        u_xlat79 = ((x_1663 * x_1664) + x_1666);
        let x_1669 : vec4<f32> = u_xlat13;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.z, x_1669.w);
        let x_1672 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec18;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat80 = x_1681;
        let x_1683 : f32 = u_xlat18.y;
        let x_1684 : f32 = u_xlat80;
        let x_1686 : f32 = u_xlat79;
        u_xlat79 = ((x_1683 * x_1684) + x_1686);
        let x_1689 : vec4<f32> = u_xlat14;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
        let x_1692 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec19;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1699.xy, x_1699.z);
        u_xlat80 = x_1701;
        let x_1703 : f32 = u_xlat18.z;
        let x_1704 : f32 = u_xlat80;
        let x_1706 : f32 = u_xlat79;
        u_xlat79 = ((x_1703 * x_1704) + x_1706);
        let x_1709 : vec4<f32> = u_xlat15;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.z, x_1709.w);
        let x_1712 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec20;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat80 = x_1721;
        let x_1723 : f32 = u_xlat18.w;
        let x_1724 : f32 = u_xlat80;
        let x_1726 : f32 = u_xlat79;
        u_xlat79 = ((x_1723 * x_1724) + x_1726);
        let x_1729 : vec4<f32> = u_xlat16;
        let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
        let x_1732 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec21;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1739.xy, x_1739.z);
        u_xlat80 = x_1741;
        let x_1743 : f32 = u_xlat19.x;
        let x_1744 : f32 = u_xlat80;
        let x_1746 : f32 = u_xlat79;
        u_xlat79 = ((x_1743 * x_1744) + x_1746);
        let x_1749 : vec4<f32> = u_xlat16;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.z, x_1749.w);
        let x_1752 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec22;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
        u_xlat80 = x_1761;
        let x_1763 : f32 = u_xlat19.y;
        let x_1764 : f32 = u_xlat80;
        let x_1766 : f32 = u_xlat79;
        u_xlat79 = ((x_1763 * x_1764) + x_1766);
        let x_1769 : vec2<f32> = u_xlat33;
        let x_1771 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec23;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1778.xy, x_1778.z);
        u_xlat80 = x_1780;
        let x_1782 : f32 = u_xlat19.z;
        let x_1783 : f32 = u_xlat80;
        let x_1785 : f32 = u_xlat79;
        u_xlat79 = ((x_1782 * x_1783) + x_1785);
        let x_1788 : vec2<f32> = u_xlat64;
        let x_1790 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec24;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1797.xy, x_1797.z);
        u_xlat80 = x_1799;
        let x_1801 : f32 = u_xlat19.w;
        let x_1802 : f32 = u_xlat80;
        let x_1804 : f32 = u_xlat79;
        u_xlat79 = ((x_1801 * x_1802) + x_1804);
        let x_1807 : vec4<f32> = u_xlat11;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.x, x_1807.y);
        let x_1810 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec25;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat80 = x_1819;
        let x_1821 : f32 = u_xlat7.x;
        let x_1822 : f32 = u_xlat80;
        let x_1824 : f32 = u_xlat79;
        u_xlat79 = ((x_1821 * x_1822) + x_1824);
        let x_1827 : vec4<f32> = u_xlat11;
        let x_1828 : vec2<f32> = vec2<f32>(x_1827.z, x_1827.w);
        let x_1830 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec26;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1837.xy, x_1837.z);
        u_xlat80 = x_1839;
        let x_1841 : f32 = u_xlat7.y;
        let x_1842 : f32 = u_xlat80;
        let x_1844 : f32 = u_xlat79;
        u_xlat79 = ((x_1841 * x_1842) + x_1844);
        let x_1847 : vec2<f32> = u_xlat59;
        let x_1849 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec27;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1856.xy, x_1856.z);
        u_xlat80 = x_1858;
        let x_1860 : f32 = u_xlat7.z;
        let x_1861 : f32 = u_xlat80;
        let x_1863 : f32 = u_xlat79;
        u_xlat79 = ((x_1860 * x_1861) + x_1863);
        let x_1866 : vec4<f32> = u_xlat6;
        let x_1867 : vec2<f32> = vec2<f32>(x_1866.x, x_1866.y);
        let x_1869 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1867.x, x_1867.y, x_1869);
        let x_1876 : vec3<f32> = txVec28;
        let x_1878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1876.xy, x_1876.z);
        u_xlat80 = x_1878;
        let x_1880 : f32 = u_xlat7.w;
        let x_1881 : f32 = u_xlat80;
        let x_1883 : f32 = u_xlat79;
        u_xlat78 = ((x_1880 * x_1881) + x_1883);
      }
    }
  } else {
    let x_1887 : vec4<f32> = vs_INTERP3;
    let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
    let x_1890 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
    let x_1897 : vec3<f32> = txVec29;
    let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1897.xy, x_1897.z);
    u_xlat78 = x_1899;
  }
  let x_1901 : f32 = x_670.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_1901) + 1.0f);
  let x_1904 : f32 = u_xlat78;
  let x_1906 : f32 = x_670.x_MainLightShadowParams.x;
  let x_1908 : f32 = u_xlat79;
  u_xlat78 = ((x_1904 * x_1906) + x_1908);
  let x_1911 : f32 = vs_INTERP3.z;
  u_xlatb79 = (0.0f >= x_1911);
  let x_1915 : f32 = vs_INTERP3.z;
  u_xlatb80 = (x_1915 >= 1.0f);
  let x_1917 : bool = u_xlatb79;
  let x_1918 : bool = u_xlatb80;
  u_xlatb79 = (x_1917 | x_1918);
  let x_1920 : bool = u_xlatb79;
  let x_1921 : f32 = u_xlat78;
  u_xlat78 = select(x_1921, 1.0f, x_1920);
  let x_1923 : vec3<f32> = vs_INTERP7;
  let x_1925 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1927 : vec3<f32> = (x_1923 + -(x_1925));
  let x_1928 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1930 : vec4<f32> = u_xlat6;
  let x_1932 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1930.x, x_1930.y, x_1930.z), vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : f32 = u_xlat79;
  let x_1937 : f32 = x_670.x_MainLightShadowParams.z;
  let x_1940 : f32 = x_670.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1935 * x_1937) + x_1940);
  let x_1942 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1942, 0.0f, 1.0f);
  let x_1944 : f32 = u_xlat78;
  u_xlat6.x = (-(x_1944) + 1.0f);
  let x_1948 : f32 = u_xlat80;
  let x_1950 : f32 = u_xlat6.x;
  let x_1952 : f32 = u_xlat78;
  u_xlat78 = ((x_1948 * x_1950) + x_1952);
  let x_1954 : vec3<f32> = u_xlat4;
  let x_1956 : vec4<f32> = u_xlat1;
  u_xlat80 = dot(-(x_1954), vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
  let x_1959 : f32 = u_xlat80;
  let x_1960 : f32 = u_xlat80;
  u_xlat80 = (x_1959 + x_1960);
  let x_1962 : vec4<f32> = u_xlat1;
  let x_1964 : f32 = u_xlat80;
  let x_1968 : vec3<f32> = u_xlat4;
  let x_1970 : vec3<f32> = ((vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * -(vec3<f32>(x_1964, x_1964, x_1964))) + -(x_1968));
  let x_1971 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat1;
  let x_1975 : vec3<f32> = u_xlat4;
  u_xlat80 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), x_1975);
  let x_1977 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1977, 0.0f, 1.0f);
  let x_1979 : f32 = u_xlat80;
  u_xlat80 = (-(x_1979) + 1.0f);
  let x_1982 : f32 = u_xlat80;
  let x_1983 : f32 = u_xlat80;
  u_xlat80 = (x_1982 * x_1983);
  let x_1985 : f32 = u_xlat80;
  let x_1986 : f32 = u_xlat80;
  u_xlat80 = (x_1985 * x_1986);
  let x_1989 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1989) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1995 : f32 = u_xlat75;
  let x_1996 : f32 = u_xlat81;
  u_xlat75 = (x_1995 * x_1996);
  let x_1998 : f32 = u_xlat75;
  u_xlat75 = (x_1998 * 6.0f);
  let x_2008 : vec4<f32> = u_xlat6;
  let x_2010 : f32 = u_xlat75;
  let x_2011 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2008.x, x_2008.y, x_2008.z), x_2010);
  u_xlat6 = x_2011;
  let x_2013 : f32 = u_xlat6.w;
  u_xlat75 = (x_2013 + -1.0f);
  let x_2016 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2017 : f32 = u_xlat75;
  u_xlat75 = ((x_2016 * x_2017) + 1.0f);
  let x_2020 : f32 = u_xlat75;
  u_xlat75 = max(x_2020, 0.0f);
  let x_2022 : f32 = u_xlat75;
  u_xlat75 = log2(x_2022);
  let x_2024 : f32 = u_xlat75;
  let x_2026 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_2024 * x_2026);
  let x_2028 : f32 = u_xlat75;
  u_xlat75 = exp2(x_2028);
  let x_2030 : f32 = u_xlat75;
  let x_2032 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_2030 * x_2032);
  let x_2034 : vec4<f32> = u_xlat6;
  let x_2036 : f32 = u_xlat75;
  let x_2038 : vec3<f32> = (vec3<f32>(x_2034.x, x_2034.y, x_2034.z) * vec3<f32>(x_2036, x_2036, x_2036));
  let x_2039 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
  let x_2041 : vec4<f32> = u_xlat2;
  let x_2043 : vec4<f32> = u_xlat2;
  let x_2047 : vec2<f32> = ((vec2<f32>(x_2041.x, x_2041.x) * vec2<f32>(x_2043.x, x_2043.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2048 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2047.x, x_2047.y, x_2048.z, x_2048.w);
  let x_2051 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_2051);
  let x_2053 : vec4<f32> = u_xlat0;
  let x_2056 : f32 = u_xlat76;
  u_xlat32 = (-(vec3<f32>(x_2053.x, x_2053.y, x_2053.z)) + vec3<f32>(x_2056, x_2056, x_2056));
  let x_2059 : f32 = u_xlat80;
  let x_2061 : vec3<f32> = u_xlat32;
  let x_2063 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_2059, x_2059, x_2059) * x_2061) + vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
  let x_2066 : f32 = u_xlat75;
  let x_2068 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2066, x_2066, x_2066) * x_2068);
  let x_2070 : vec4<f32> = u_xlat6;
  let x_2072 : vec3<f32> = u_xlat32;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * x_2072);
  let x_2074 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec4<f32> = u_xlat3;
  let x_2078 : vec4<f32> = u_xlat5;
  let x_2081 : vec4<f32> = u_xlat6;
  let x_2083 : vec3<f32> = ((vec3<f32>(x_2076.x, x_2076.y, x_2076.z) * vec3<f32>(x_2078.x, x_2078.y, x_2078.z)) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2086 : f32 = u_xlat78;
  let x_2088 : f32 = x_349.unity_LightData.z;
  u_xlat75 = (x_2086 * x_2088);
  let x_2090 : vec4<f32> = u_xlat1;
  let x_2093 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_2090.x, x_2090.y, x_2090.z), vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2096, 0.0f, 1.0f);
  let x_2098 : f32 = u_xlat75;
  let x_2099 : f32 = u_xlat76;
  u_xlat75 = (x_2098 * x_2099);
  let x_2101 : f32 = u_xlat75;
  let x_2104 : vec4<f32> = x_29.x_MainLightColor;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2101, x_2101, x_2101) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2107 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
  let x_2109 : vec3<f32> = u_xlat4;
  let x_2111 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (x_2109 + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : vec3<f32> = u_xlat32;
  let x_2115 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_2114, x_2115);
  let x_2117 : f32 = u_xlat75;
  u_xlat75 = max(x_2117, 1.17549435e-38f);
  let x_2120 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2120);
  let x_2122 : f32 = u_xlat75;
  let x_2124 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2122, x_2122, x_2122) * x_2124);
  let x_2126 : vec4<f32> = u_xlat1;
  let x_2128 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), x_2128);
  let x_2130 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2130, 0.0f, 1.0f);
  let x_2133 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2135 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_2133.x, x_2133.y, x_2133.z), x_2135);
  let x_2137 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2137, 0.0f, 1.0f);
  let x_2139 : f32 = u_xlat75;
  let x_2140 : f32 = u_xlat75;
  u_xlat75 = (x_2139 * x_2140);
  let x_2142 : f32 = u_xlat75;
  let x_2144 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2142 * x_2144) + 1.00001001358032226562f);
  let x_2148 : f32 = u_xlat76;
  let x_2149 : f32 = u_xlat76;
  u_xlat76 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat75;
  let x_2152 : f32 = u_xlat75;
  u_xlat75 = (x_2151 * x_2152);
  let x_2154 : f32 = u_xlat76;
  u_xlat76 = max(x_2154, 0.10000000149011611938f);
  let x_2157 : f32 = u_xlat75;
  let x_2158 : f32 = u_xlat76;
  u_xlat75 = (x_2157 * x_2158);
  let x_2160 : f32 = u_xlat77;
  let x_2161 : f32 = u_xlat75;
  u_xlat75 = (x_2160 * x_2161);
  let x_2163 : f32 = u_xlat27;
  let x_2164 : f32 = u_xlat75;
  u_xlat75 = (x_2163 / x_2164);
  let x_2166 : vec4<f32> = u_xlat0;
  let x_2168 : f32 = u_xlat75;
  let x_2171 : vec4<f32> = u_xlat5;
  u_xlat32 = ((vec3<f32>(x_2166.x, x_2166.y, x_2166.z) * vec3<f32>(x_2168, x_2168, x_2168)) + vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec4<f32> = u_xlat6;
  let x_2176 : vec3<f32> = u_xlat32;
  let x_2177 : vec3<f32> = (vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * x_2176);
  let x_2178 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
  let x_2181 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2183 : f32 = x_349.unity_LightData.y;
  u_xlat75 = min(x_2181, x_2183);
  let x_2187 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2187));
  let x_2190 : f32 = u_xlat79;
  let x_2193 : f32 = x_670.x_AdditionalShadowFadeParams.x;
  let x_2196 : f32 = x_670.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2190 * x_2193) + x_2196);
  let x_2198 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2198, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2210 : u32 = u_xlatu_loop_1;
    let x_2211 : u32 = u_xlatu75;
    if ((x_2210 < x_2211)) {
    } else {
      break;
    }
    let x_2214 : u32 = u_xlatu_loop_1;
    u_xlatu78 = (x_2214 >> 2u);
    let x_2218 : u32 = u_xlatu_loop_1;
    u_xlati79 = bitcast<i32>((x_2218 & 3u));
    let x_2221 : u32 = u_xlatu78;
    let x_2224 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2221)];
    let x_2234 : i32 = u_xlati79;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2239 : vec4<u32> = indexable[x_2234];
    u_xlat78 = dot(x_2224, bitcast<vec4<f32>>(x_2239));
    let x_2243 : f32 = u_xlat78;
    u_xlati78 = i32(x_2243);
    let x_2245 : vec3<f32> = vs_INTERP7;
    let x_2256 : i32 = u_xlati78;
    let x_2258 : vec4<f32> = x_2255.x_AdditionalLightsPosition[x_2256];
    let x_2261 : i32 = u_xlati78;
    let x_2263 : vec4<f32> = x_2255.x_AdditionalLightsPosition[x_2261];
    let x_2265 : vec3<f32> = ((-(x_2245) * vec3<f32>(x_2258.w, x_2258.w, x_2258.w)) + vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
    let x_2266 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
    let x_2268 : vec4<f32> = u_xlat8;
    let x_2270 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
    let x_2273 : f32 = u_xlat79;
    u_xlat79 = max(x_2273, 0.00006103515625f);
    let x_2276 : f32 = u_xlat79;
    u_xlat80 = inverseSqrt(x_2276);
    let x_2278 : f32 = u_xlat80;
    let x_2280 : vec4<f32> = u_xlat8;
    let x_2282 : vec3<f32> = (vec3<f32>(x_2278, x_2278, x_2278) * vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
    let x_2283 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
    let x_2285 : f32 = u_xlat79;
    u_xlat81 = (1.0f / x_2285);
    let x_2287 : f32 = u_xlat79;
    let x_2288 : i32 = u_xlati78;
    let x_2290 : f32 = x_2255.x_AdditionalLightsAttenuation[x_2288].x;
    u_xlat79 = (x_2287 * x_2290);
    let x_2292 : f32 = u_xlat79;
    let x_2294 : f32 = u_xlat79;
    u_xlat79 = ((-(x_2292) * x_2294) + 1.0f);
    let x_2297 : f32 = u_xlat79;
    u_xlat79 = max(x_2297, 0.0f);
    let x_2299 : f32 = u_xlat79;
    let x_2300 : f32 = u_xlat79;
    u_xlat79 = (x_2299 * x_2300);
    let x_2302 : f32 = u_xlat79;
    let x_2303 : f32 = u_xlat81;
    u_xlat79 = (x_2302 * x_2303);
    let x_2305 : i32 = u_xlati78;
    let x_2307 : vec4<f32> = x_2255.x_AdditionalLightsSpotDir[x_2305];
    let x_2309 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
    let x_2312 : f32 = u_xlat81;
    let x_2313 : i32 = u_xlati78;
    let x_2315 : f32 = x_2255.x_AdditionalLightsAttenuation[x_2313].z;
    let x_2317 : i32 = u_xlati78;
    let x_2319 : f32 = x_2255.x_AdditionalLightsAttenuation[x_2317].w;
    u_xlat81 = ((x_2312 * x_2315) + x_2319);
    let x_2321 : f32 = u_xlat81;
    u_xlat81 = clamp(x_2321, 0.0f, 1.0f);
    let x_2323 : f32 = u_xlat81;
    let x_2324 : f32 = u_xlat81;
    u_xlat81 = (x_2323 * x_2324);
    let x_2326 : f32 = u_xlat79;
    let x_2327 : f32 = u_xlat81;
    u_xlat79 = (x_2326 * x_2327);
    let x_2331 : i32 = u_xlati78;
    let x_2333 : f32 = x_670.x_AdditionalShadowParams[x_2331].w;
    u_xlati81 = i32(x_2333);
    let x_2336 : i32 = u_xlati81;
    u_xlatb83 = (x_2336 >= 0i);
    let x_2338 : bool = u_xlatb83;
    if (x_2338) {
      let x_2342 : i32 = u_xlati78;
      let x_2344 : f32 = x_670.x_AdditionalShadowParams[x_2342].z;
      u_xlatb83 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2344, x_2344, x_2344, x_2344))));
      let x_2349 : bool = u_xlatb83;
      if (x_2349) {
        let x_2354 : vec4<f32> = u_xlat9;
        let x_2357 : vec4<f32> = u_xlat9;
        let x_2360 : vec4<bool> = (abs(vec4<f32>(x_2354.z, x_2354.z, x_2354.y, x_2354.z)) >= abs(vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.x)));
        let x_2362 : vec3<bool> = vec3<bool>(x_2360.x, x_2360.y, x_2360.z);
        let x_2363 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
        let x_2366 : bool = u_xlatb10.y;
        let x_2368 : bool = u_xlatb10.x;
        u_xlatb83 = (x_2366 & x_2368);
        let x_2370 : vec4<f32> = u_xlat9;
        let x_2373 : vec4<bool> = (-(vec4<f32>(x_2370.z, x_2370.y, x_2370.z, x_2370.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2374 : vec3<bool> = vec3<bool>(x_2373.x, x_2373.y, x_2373.w);
        let x_2375 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2374.x, x_2374.y, x_2375.z, x_2374.z);
        let x_2378 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2378);
        let x_2383 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2383);
        let x_2389 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2389);
        let x_2392 : bool = u_xlatb10.z;
        if (x_2392) {
          let x_2397 : f32 = u_xlat10.y;
          x_2393 = x_2397;
        } else {
          let x_2399 : f32 = u_xlat84;
          x_2393 = x_2399;
        }
        let x_2400 : f32 = x_2393;
        u_xlat84 = x_2400;
        let x_2402 : bool = u_xlatb83;
        if (x_2402) {
          let x_2407 : f32 = u_xlat10.x;
          x_2403 = x_2407;
        } else {
          let x_2409 : f32 = u_xlat84;
          x_2403 = x_2409;
        }
        let x_2410 : f32 = x_2403;
        u_xlat83 = x_2410;
        let x_2411 : i32 = u_xlati78;
        let x_2413 : f32 = x_670.x_AdditionalShadowParams[x_2411].w;
        u_xlat84 = trunc(x_2413);
        let x_2415 : f32 = u_xlat83;
        let x_2416 : f32 = u_xlat84;
        u_xlat83 = (x_2415 + x_2416);
        let x_2418 : f32 = u_xlat83;
        u_xlati81 = i32(x_2418);
      }
      let x_2420 : i32 = u_xlati81;
      u_xlati81 = (x_2420 << bitcast<u32>(2i));
      let x_2422 : vec3<f32> = vs_INTERP7;
      let x_2425 : i32 = u_xlati81;
      let x_2428 : i32 = u_xlati81;
      let x_2432 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[((x_2425 + 1i) / 4i)][((x_2428 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2422.y, x_2422.y, x_2422.y, x_2422.y) * x_2432);
      let x_2434 : i32 = u_xlati81;
      let x_2436 : i32 = u_xlati81;
      let x_2439 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[(x_2434 / 4i)][(x_2436 % 4i)];
      let x_2440 : vec3<f32> = vs_INTERP7;
      let x_2443 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2439 * vec4<f32>(x_2440.x, x_2440.x, x_2440.x, x_2440.x)) + x_2443);
      let x_2445 : i32 = u_xlati81;
      let x_2448 : i32 = u_xlati81;
      let x_2452 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[((x_2445 + 2i) / 4i)][((x_2448 + 2i) % 4i)];
      let x_2453 : vec3<f32> = vs_INTERP7;
      let x_2456 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2452 * vec4<f32>(x_2453.z, x_2453.z, x_2453.z, x_2453.z)) + x_2456);
      let x_2458 : vec4<f32> = u_xlat10;
      let x_2459 : i32 = u_xlati81;
      let x_2462 : i32 = u_xlati81;
      let x_2466 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[((x_2459 + 3i) / 4i)][((x_2462 + 3i) % 4i)];
      u_xlat10 = (x_2458 + x_2466);
      let x_2468 : vec4<f32> = u_xlat10;
      let x_2470 : vec4<f32> = u_xlat10;
      let x_2472 : vec3<f32> = (vec3<f32>(x_2468.x, x_2468.y, x_2468.z) / vec3<f32>(x_2470.w, x_2470.w, x_2470.w));
      let x_2473 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2472.x, x_2472.y, x_2472.z, x_2473.w);
      let x_2476 : i32 = u_xlati78;
      let x_2478 : f32 = x_670.x_AdditionalShadowParams[x_2476].y;
      u_xlatb81 = (0.0f < x_2478);
      let x_2480 : bool = u_xlatb81;
      if (x_2480) {
        let x_2483 : i32 = u_xlati78;
        let x_2485 : f32 = x_670.x_AdditionalShadowParams[x_2483].y;
        u_xlatb81 = (1.0f == x_2485);
        let x_2487 : bool = u_xlatb81;
        if (x_2487) {
          let x_2490 : vec4<f32> = u_xlat10;
          let x_2494 : vec4<f32> = x_670.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2490.x, x_2490.y, x_2490.x, x_2490.y) + x_2494);
          let x_2497 : vec4<f32> = u_xlat11;
          let x_2498 : vec2<f32> = vec2<f32>(x_2497.x, x_2497.y);
          let x_2500 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
          let x_2508 : vec3<f32> = txVec30;
          let x_2510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2508.xy, x_2508.z);
          u_xlat12.x = x_2510;
          let x_2513 : vec4<f32> = u_xlat11;
          let x_2514 : vec2<f32> = vec2<f32>(x_2513.z, x_2513.w);
          let x_2516 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2514.x, x_2514.y, x_2516);
          let x_2523 : vec3<f32> = txVec31;
          let x_2525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2523.xy, x_2523.z);
          u_xlat12.y = x_2525;
          let x_2527 : vec4<f32> = u_xlat10;
          let x_2531 : vec4<f32> = x_670.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2527.x, x_2527.y, x_2527.x, x_2527.y) + x_2531);
          let x_2534 : vec4<f32> = u_xlat11;
          let x_2535 : vec2<f32> = vec2<f32>(x_2534.x, x_2534.y);
          let x_2537 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
          let x_2544 : vec3<f32> = txVec32;
          let x_2546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
          u_xlat12.z = x_2546;
          let x_2549 : vec4<f32> = u_xlat11;
          let x_2550 : vec2<f32> = vec2<f32>(x_2549.z, x_2549.w);
          let x_2552 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
          let x_2559 : vec3<f32> = txVec33;
          let x_2561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
          u_xlat12.w = x_2561;
          let x_2563 : vec4<f32> = u_xlat12;
          u_xlat81 = dot(x_2563, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2566 : i32 = u_xlati78;
          let x_2568 : f32 = x_670.x_AdditionalShadowParams[x_2566].y;
          u_xlatb83 = (2.0f == x_2568);
          let x_2570 : bool = u_xlatb83;
          if (x_2570) {
            let x_2573 : vec4<f32> = u_xlat10;
            let x_2577 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2580 : vec2<f32> = ((vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(x_2577.z, x_2577.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2581 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
            let x_2583 : vec4<f32> = u_xlat11;
            let x_2585 : vec2<f32> = floor(vec2<f32>(x_2583.x, x_2583.y));
            let x_2586 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2585.x, x_2585.y, x_2586.z, x_2586.w);
            let x_2589 : vec4<f32> = u_xlat10;
            let x_2592 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2595 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2589.x, x_2589.y) * vec2<f32>(x_2592.z, x_2592.w)) + -(vec2<f32>(x_2595.x, x_2595.y)));
            let x_2599 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2599.x, x_2599.x, x_2599.y, x_2599.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2602 : vec4<f32> = u_xlat12;
            let x_2604 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2602.x, x_2602.x, x_2602.z, x_2602.z) * vec4<f32>(x_2604.x, x_2604.x, x_2604.z, x_2604.z));
            let x_2607 : vec4<f32> = u_xlat13;
            let x_2609 : vec2<f32> = (vec2<f32>(x_2607.y, x_2607.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2610 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2609.x, x_2610.y, x_2609.y, x_2610.w);
            let x_2612 : vec4<f32> = u_xlat13;
            let x_2615 : vec2<f32> = u_xlat61;
            let x_2617 : vec2<f32> = ((vec2<f32>(x_2612.x, x_2612.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2615));
            let x_2618 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
            let x_2621 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2621) + vec2<f32>(1.0f, 1.0f));
            let x_2624 : vec2<f32> = u_xlat61;
            let x_2625 : vec2<f32> = min(x_2624, vec2<f32>(0.0f, 0.0f));
            let x_2626 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2625.x, x_2625.y, x_2626.z, x_2626.w);
            let x_2628 : vec4<f32> = u_xlat14;
            let x_2631 : vec4<f32> = u_xlat14;
            let x_2634 : vec2<f32> = u_xlat63;
            let x_2635 : vec2<f32> = ((-(vec2<f32>(x_2628.x, x_2628.y)) * vec2<f32>(x_2631.x, x_2631.y)) + x_2634);
            let x_2636 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2638, vec2<f32>(0.0f, 0.0f));
            let x_2640 : vec2<f32> = u_xlat61;
            let x_2642 : vec2<f32> = u_xlat61;
            let x_2644 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2640) * x_2642) + vec2<f32>(x_2644.y, x_2644.w));
            let x_2647 : vec4<f32> = u_xlat14;
            let x_2649 : vec2<f32> = (vec2<f32>(x_2647.x, x_2647.y) + vec2<f32>(1.0f, 1.0f));
            let x_2650 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2649.x, x_2649.y, x_2650.z, x_2650.w);
            let x_2652 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2652 + vec2<f32>(1.0f, 1.0f));
            let x_2654 : vec4<f32> = u_xlat13;
            let x_2656 : vec2<f32> = (vec2<f32>(x_2654.x, x_2654.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2657 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2656.x, x_2656.y, x_2657.z, x_2657.w);
            let x_2659 : vec2<f32> = u_xlat63;
            let x_2660 : vec2<f32> = (x_2659 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2661 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2660.x, x_2660.y, x_2661.z, x_2661.w);
            let x_2663 : vec4<f32> = u_xlat14;
            let x_2665 : vec2<f32> = (vec2<f32>(x_2663.x, x_2663.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2666 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
            let x_2668 : vec2<f32> = u_xlat61;
            let x_2669 : vec2<f32> = (x_2668 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2670 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
            let x_2672 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2672.y, x_2672.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2676 : f32 = u_xlat14.x;
            u_xlat15.z = x_2676;
            let x_2679 : f32 = u_xlat61.x;
            u_xlat15.w = x_2679;
            let x_2682 : f32 = u_xlat16.x;
            u_xlat13.z = x_2682;
            let x_2685 : f32 = u_xlat12.x;
            u_xlat13.w = x_2685;
            let x_2687 : vec4<f32> = u_xlat13;
            let x_2689 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2687.z, x_2687.w, x_2687.x, x_2687.z) + vec4<f32>(x_2689.z, x_2689.w, x_2689.x, x_2689.z));
            let x_2693 : f32 = u_xlat15.y;
            u_xlat14.z = x_2693;
            let x_2696 : f32 = u_xlat61.y;
            u_xlat14.w = x_2696;
            let x_2699 : f32 = u_xlat13.y;
            u_xlat16.z = x_2699;
            let x_2702 : f32 = u_xlat12.z;
            u_xlat16.w = x_2702;
            let x_2704 : vec4<f32> = u_xlat14;
            let x_2706 : vec4<f32> = u_xlat16;
            let x_2708 : vec3<f32> = (vec3<f32>(x_2704.z, x_2704.y, x_2704.w) + vec3<f32>(x_2706.z, x_2706.y, x_2706.w));
            let x_2709 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
            let x_2711 : vec4<f32> = u_xlat13;
            let x_2713 : vec4<f32> = u_xlat17;
            let x_2715 : vec3<f32> = (vec3<f32>(x_2711.x, x_2711.z, x_2711.w) / vec3<f32>(x_2713.z, x_2713.w, x_2713.y));
            let x_2716 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat13;
            let x_2720 : vec3<f32> = (vec3<f32>(x_2718.x, x_2718.y, x_2718.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2721 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
            let x_2723 : vec4<f32> = u_xlat16;
            let x_2725 : vec4<f32> = u_xlat12;
            let x_2727 : vec3<f32> = (vec3<f32>(x_2723.z, x_2723.y, x_2723.w) / vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
            let x_2728 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
            let x_2730 : vec4<f32> = u_xlat14;
            let x_2732 : vec3<f32> = (vec3<f32>(x_2730.x, x_2730.y, x_2730.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2733 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
            let x_2735 : vec4<f32> = u_xlat13;
            let x_2738 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2740 : vec3<f32> = (vec3<f32>(x_2735.y, x_2735.x, x_2735.z) * vec3<f32>(x_2738.x, x_2738.x, x_2738.x));
            let x_2741 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2741.w);
            let x_2743 : vec4<f32> = u_xlat14;
            let x_2746 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2748 : vec3<f32> = (vec3<f32>(x_2743.x, x_2743.y, x_2743.z) * vec3<f32>(x_2746.y, x_2746.y, x_2746.y));
            let x_2749 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
            let x_2752 : f32 = u_xlat14.x;
            u_xlat13.w = x_2752;
            let x_2754 : vec4<f32> = u_xlat11;
            let x_2757 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2760 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2754.x, x_2754.y, x_2754.x, x_2754.y) * vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y)) + vec4<f32>(x_2760.y, x_2760.w, x_2760.x, x_2760.w));
            let x_2763 : vec4<f32> = u_xlat11;
            let x_2766 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(x_2766.x, x_2766.y)) + vec2<f32>(x_2769.z, x_2769.w));
            let x_2773 : f32 = u_xlat13.y;
            u_xlat14.w = x_2773;
            let x_2775 : vec4<f32> = u_xlat14;
            let x_2776 : vec2<f32> = vec2<f32>(x_2775.y, x_2775.z);
            let x_2777 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2777.x, x_2776.x, x_2777.z, x_2776.y);
            let x_2779 : vec4<f32> = u_xlat11;
            let x_2782 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y) * vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.y)) + vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2785.y));
            let x_2788 : vec4<f32> = u_xlat11;
            let x_2791 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2794 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y) * vec4<f32>(x_2791.x, x_2791.y, x_2791.x, x_2791.y)) + vec4<f32>(x_2794.w, x_2794.y, x_2794.w, x_2794.z));
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2800 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2803 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y) * vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y)) + vec4<f32>(x_2803.x, x_2803.w, x_2803.z, x_2803.w));
            let x_2806 : vec4<f32> = u_xlat12;
            let x_2808 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2806.x, x_2806.x, x_2806.x, x_2806.y) * vec4<f32>(x_2808.z, x_2808.w, x_2808.y, x_2808.z));
            let x_2811 : vec4<f32> = u_xlat12;
            let x_2813 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2811.y, x_2811.y, x_2811.z, x_2811.z) * x_2813);
            let x_2816 : f32 = u_xlat12.z;
            let x_2818 : f32 = u_xlat17.y;
            u_xlat83 = (x_2816 * x_2818);
            let x_2821 : vec4<f32> = u_xlat15;
            let x_2822 : vec2<f32> = vec2<f32>(x_2821.x, x_2821.y);
            let x_2824 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2822.x, x_2822.y, x_2824);
            let x_2831 : vec3<f32> = txVec34;
            let x_2833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2831.xy, x_2831.z);
            u_xlat84 = x_2833;
            let x_2835 : vec4<f32> = u_xlat15;
            let x_2836 : vec2<f32> = vec2<f32>(x_2835.z, x_2835.w);
            let x_2838 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2836.x, x_2836.y, x_2838);
            let x_2846 : vec3<f32> = txVec35;
            let x_2848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
            u_xlat85 = x_2848;
            let x_2849 : f32 = u_xlat85;
            let x_2851 : f32 = u_xlat18.y;
            u_xlat85 = (x_2849 * x_2851);
            let x_2854 : f32 = u_xlat18.x;
            let x_2855 : f32 = u_xlat84;
            let x_2857 : f32 = u_xlat85;
            u_xlat84 = ((x_2854 * x_2855) + x_2857);
            let x_2860 : vec2<f32> = u_xlat61;
            let x_2862 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec36;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat85 = x_2871;
            let x_2873 : f32 = u_xlat18.z;
            let x_2874 : f32 = u_xlat85;
            let x_2876 : f32 = u_xlat84;
            u_xlat84 = ((x_2873 * x_2874) + x_2876);
            let x_2879 : vec4<f32> = u_xlat14;
            let x_2880 : vec2<f32> = vec2<f32>(x_2879.x, x_2879.y);
            let x_2882 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
            let x_2889 : vec3<f32> = txVec37;
            let x_2891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2889.xy, x_2889.z);
            u_xlat85 = x_2891;
            let x_2893 : f32 = u_xlat18.w;
            let x_2894 : f32 = u_xlat85;
            let x_2896 : f32 = u_xlat84;
            u_xlat84 = ((x_2893 * x_2894) + x_2896);
            let x_2899 : vec4<f32> = u_xlat16;
            let x_2900 : vec2<f32> = vec2<f32>(x_2899.x, x_2899.y);
            let x_2902 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
            let x_2909 : vec3<f32> = txVec38;
            let x_2911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
            u_xlat85 = x_2911;
            let x_2913 : f32 = u_xlat19.x;
            let x_2914 : f32 = u_xlat85;
            let x_2916 : f32 = u_xlat84;
            u_xlat84 = ((x_2913 * x_2914) + x_2916);
            let x_2919 : vec4<f32> = u_xlat16;
            let x_2920 : vec2<f32> = vec2<f32>(x_2919.z, x_2919.w);
            let x_2922 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
            let x_2929 : vec3<f32> = txVec39;
            let x_2931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2929.xy, x_2929.z);
            u_xlat85 = x_2931;
            let x_2933 : f32 = u_xlat19.y;
            let x_2934 : f32 = u_xlat85;
            let x_2936 : f32 = u_xlat84;
            u_xlat84 = ((x_2933 * x_2934) + x_2936);
            let x_2939 : vec4<f32> = u_xlat14;
            let x_2940 : vec2<f32> = vec2<f32>(x_2939.z, x_2939.w);
            let x_2942 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2940.x, x_2940.y, x_2942);
            let x_2949 : vec3<f32> = txVec40;
            let x_2951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2949.xy, x_2949.z);
            u_xlat85 = x_2951;
            let x_2953 : f32 = u_xlat19.z;
            let x_2954 : f32 = u_xlat85;
            let x_2956 : f32 = u_xlat84;
            u_xlat84 = ((x_2953 * x_2954) + x_2956);
            let x_2959 : vec4<f32> = u_xlat13;
            let x_2960 : vec2<f32> = vec2<f32>(x_2959.x, x_2959.y);
            let x_2962 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2960.x, x_2960.y, x_2962);
            let x_2969 : vec3<f32> = txVec41;
            let x_2971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2969.xy, x_2969.z);
            u_xlat85 = x_2971;
            let x_2973 : f32 = u_xlat19.w;
            let x_2974 : f32 = u_xlat85;
            let x_2976 : f32 = u_xlat84;
            u_xlat84 = ((x_2973 * x_2974) + x_2976);
            let x_2979 : vec4<f32> = u_xlat13;
            let x_2980 : vec2<f32> = vec2<f32>(x_2979.z, x_2979.w);
            let x_2982 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2980.x, x_2980.y, x_2982);
            let x_2989 : vec3<f32> = txVec42;
            let x_2991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2989.xy, x_2989.z);
            u_xlat85 = x_2991;
            let x_2992 : f32 = u_xlat83;
            let x_2993 : f32 = u_xlat85;
            let x_2995 : f32 = u_xlat84;
            u_xlat81 = ((x_2992 * x_2993) + x_2995);
          } else {
            let x_2998 : vec4<f32> = u_xlat10;
            let x_3001 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3004 : vec2<f32> = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.z, x_3001.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3005 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
            let x_3007 : vec4<f32> = u_xlat11;
            let x_3009 : vec2<f32> = floor(vec2<f32>(x_3007.x, x_3007.y));
            let x_3010 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3009.x, x_3009.y, x_3010.z, x_3010.w);
            let x_3012 : vec4<f32> = u_xlat10;
            let x_3015 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3018 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3012.x, x_3012.y) * vec2<f32>(x_3015.z, x_3015.w)) + -(vec2<f32>(x_3018.x, x_3018.y)));
            let x_3022 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3022.x, x_3022.x, x_3022.y, x_3022.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3025 : vec4<f32> = u_xlat12;
            let x_3027 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3025.x, x_3025.x, x_3025.z, x_3025.z) * vec4<f32>(x_3027.x, x_3027.x, x_3027.z, x_3027.z));
            let x_3030 : vec4<f32> = u_xlat13;
            let x_3032 : vec2<f32> = (vec2<f32>(x_3030.y, x_3030.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3033 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3033.x, x_3032.x, x_3033.z, x_3032.y);
            let x_3035 : vec4<f32> = u_xlat13;
            let x_3038 : vec2<f32> = u_xlat61;
            let x_3040 : vec2<f32> = ((vec2<f32>(x_3035.x, x_3035.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3038));
            let x_3041 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3040.x, x_3041.y, x_3040.y, x_3041.w);
            let x_3043 : vec2<f32> = u_xlat61;
            let x_3045 : vec2<f32> = (-(x_3043) + vec2<f32>(1.0f, 1.0f));
            let x_3046 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3045.x, x_3045.y, x_3046.z, x_3046.w);
            let x_3048 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3048, vec2<f32>(0.0f, 0.0f));
            let x_3050 : vec2<f32> = u_xlat63;
            let x_3052 : vec2<f32> = u_xlat63;
            let x_3054 : vec4<f32> = u_xlat13;
            let x_3056 : vec2<f32> = ((-(x_3050) * x_3052) + vec2<f32>(x_3054.x, x_3054.y));
            let x_3057 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3056.x, x_3056.y, x_3057.z, x_3057.w);
            let x_3059 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3059, vec2<f32>(0.0f, 0.0f));
            let x_3062 : vec2<f32> = u_xlat63;
            let x_3064 : vec2<f32> = u_xlat63;
            let x_3066 : vec4<f32> = u_xlat12;
            let x_3068 : vec2<f32> = ((-(x_3062) * x_3064) + vec2<f32>(x_3066.y, x_3066.w));
            let x_3069 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3068.x, x_3069.y, x_3068.y);
            let x_3071 : vec4<f32> = u_xlat13;
            let x_3073 : vec2<f32> = (vec2<f32>(x_3071.x, x_3071.y) + vec2<f32>(2.0f, 2.0f));
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3073.x, x_3073.y, x_3074.z, x_3074.w);
            let x_3076 : vec3<f32> = u_xlat37;
            let x_3078 : vec2<f32> = (vec2<f32>(x_3076.x, x_3076.z) + vec2<f32>(2.0f, 2.0f));
            let x_3079 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3079.x, x_3078.x, x_3079.z, x_3078.y);
            let x_3082 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3082 * 0.08163200318813323975f);
            let x_3085 : vec4<f32> = u_xlat12;
            let x_3087 : vec3<f32> = (vec3<f32>(x_3085.z, x_3085.x, x_3085.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3088 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3087.x, x_3087.y, x_3087.z, x_3088.w);
            let x_3090 : vec4<f32> = u_xlat13;
            let x_3092 : vec2<f32> = (vec2<f32>(x_3090.x, x_3090.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3093 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3092.x, x_3092.y, x_3093.z, x_3093.w);
            let x_3096 : f32 = u_xlat16.y;
            u_xlat15.x = x_3096;
            let x_3098 : vec2<f32> = u_xlat61;
            let x_3101 : vec2<f32> = ((vec2<f32>(x_3098.x, x_3098.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3102 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3102.x, x_3101.x, x_3102.z, x_3101.y);
            let x_3104 : vec2<f32> = u_xlat61;
            let x_3107 : vec2<f32> = ((vec2<f32>(x_3104.x, x_3104.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3108 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3107.x, x_3108.y, x_3107.y, x_3108.w);
            let x_3111 : f32 = u_xlat12.x;
            u_xlat13.y = x_3111;
            let x_3114 : f32 = u_xlat14.y;
            u_xlat13.w = x_3114;
            let x_3116 : vec4<f32> = u_xlat13;
            let x_3117 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3116 + x_3117);
            let x_3119 : vec2<f32> = u_xlat61;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3119.y, x_3119.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3123 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3123.x, x_3122.x, x_3123.z, x_3122.y);
            let x_3125 : vec2<f32> = u_xlat61;
            let x_3128 : vec2<f32> = ((vec2<f32>(x_3125.y, x_3125.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3129 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3128.x, x_3129.y, x_3128.y, x_3129.w);
            let x_3132 : f32 = u_xlat12.y;
            u_xlat14.y = x_3132;
            let x_3134 : vec4<f32> = u_xlat14;
            let x_3135 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3134 + x_3135);
            let x_3137 : vec4<f32> = u_xlat13;
            let x_3138 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3137 / x_3138);
            let x_3140 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3140 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3142 : vec4<f32> = u_xlat14;
            let x_3143 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3142 / x_3143);
            let x_3145 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3145 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3150 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3147.w, x_3147.x, x_3147.y, x_3147.z) * vec4<f32>(x_3150.x, x_3150.x, x_3150.x, x_3150.x));
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3156 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3153.x, x_3153.w, x_3153.y, x_3153.z) * vec4<f32>(x_3156.y, x_3156.y, x_3156.y, x_3156.y));
            let x_3159 : vec4<f32> = u_xlat13;
            let x_3160 : vec3<f32> = vec3<f32>(x_3159.y, x_3159.z, x_3159.w);
            let x_3161 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3160.x, x_3161.y, x_3160.y, x_3160.z);
            let x_3164 : f32 = u_xlat14.x;
            u_xlat16.y = x_3164;
            let x_3166 : vec4<f32> = u_xlat11;
            let x_3169 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3172 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3166.x, x_3166.y, x_3166.x, x_3166.y) * vec4<f32>(x_3169.x, x_3169.y, x_3169.x, x_3169.y)) + vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3172.y));
            let x_3175 : vec4<f32> = u_xlat11;
            let x_3178 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3181 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3175.x, x_3175.y) * vec2<f32>(x_3178.x, x_3178.y)) + vec2<f32>(x_3181.w, x_3181.y));
            let x_3185 : f32 = u_xlat16.y;
            u_xlat13.y = x_3185;
            let x_3188 : f32 = u_xlat14.z;
            u_xlat16.y = x_3188;
            let x_3190 : vec4<f32> = u_xlat11;
            let x_3193 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3196 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y) * vec4<f32>(x_3193.x, x_3193.y, x_3193.x, x_3193.y)) + vec4<f32>(x_3196.x, x_3196.y, x_3196.z, x_3196.y));
            let x_3199 : vec4<f32> = u_xlat11;
            let x_3202 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3205 : vec4<f32> = u_xlat16;
            let x_3207 : vec2<f32> = ((vec2<f32>(x_3199.x, x_3199.y) * vec2<f32>(x_3202.x, x_3202.y)) + vec2<f32>(x_3205.w, x_3205.y));
            let x_3208 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3207.x, x_3207.y, x_3208.z, x_3208.w);
            let x_3211 : f32 = u_xlat16.y;
            u_xlat13.z = x_3211;
            let x_3214 : vec4<f32> = u_xlat11;
            let x_3217 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3220 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3214.x, x_3214.y, x_3214.x, x_3214.y) * vec4<f32>(x_3217.x, x_3217.y, x_3217.x, x_3217.y)) + vec4<f32>(x_3220.x, x_3220.y, x_3220.x, x_3220.z));
            let x_3224 : f32 = u_xlat14.w;
            u_xlat16.y = x_3224;
            let x_3227 : vec4<f32> = u_xlat11;
            let x_3230 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3233 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y) * vec4<f32>(x_3230.x, x_3230.y, x_3230.x, x_3230.y)) + vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3233.y));
            let x_3237 : vec4<f32> = u_xlat11;
            let x_3240 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3243 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3237.x, x_3237.y) * vec2<f32>(x_3240.x, x_3240.y)) + vec2<f32>(x_3243.w, x_3243.y));
            let x_3247 : f32 = u_xlat16.y;
            u_xlat13.w = x_3247;
            let x_3250 : vec4<f32> = u_xlat11;
            let x_3253 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3256 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3250.x, x_3250.y) * vec2<f32>(x_3253.x, x_3253.y)) + vec2<f32>(x_3256.x, x_3256.w));
            let x_3259 : vec4<f32> = u_xlat16;
            let x_3260 : vec3<f32> = vec3<f32>(x_3259.x, x_3259.z, x_3259.w);
            let x_3261 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3260.x, x_3261.y, x_3260.y, x_3260.z);
            let x_3263 : vec4<f32> = u_xlat11;
            let x_3266 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3269 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3263.x, x_3263.y, x_3263.x, x_3263.y) * vec4<f32>(x_3266.x, x_3266.y, x_3266.x, x_3266.y)) + vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3269.y));
            let x_3272 : vec4<f32> = u_xlat11;
            let x_3275 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3272.x, x_3272.y) * vec2<f32>(x_3275.x, x_3275.y)) + vec2<f32>(x_3278.w, x_3278.y));
            let x_3282 : f32 = u_xlat13.x;
            u_xlat14.x = x_3282;
            let x_3284 : vec4<f32> = u_xlat11;
            let x_3287 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3290 : vec4<f32> = u_xlat14;
            let x_3292 : vec2<f32> = ((vec2<f32>(x_3284.x, x_3284.y) * vec2<f32>(x_3287.x, x_3287.y)) + vec2<f32>(x_3290.x, x_3290.y));
            let x_3293 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3292.x, x_3292.y, x_3293.z, x_3293.w);
            let x_3296 : vec4<f32> = u_xlat12;
            let x_3298 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3296.x, x_3296.x, x_3296.x, x_3296.x) * x_3298);
            let x_3301 : vec4<f32> = u_xlat12;
            let x_3303 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3301.y, x_3301.y, x_3301.y, x_3301.y) * x_3303);
            let x_3306 : vec4<f32> = u_xlat12;
            let x_3308 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3306.z, x_3306.z, x_3306.z, x_3306.z) * x_3308);
            let x_3310 : vec4<f32> = u_xlat12;
            let x_3312 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3310.w, x_3310.w, x_3310.w, x_3310.w) * x_3312);
            let x_3315 : vec4<f32> = u_xlat17;
            let x_3316 : vec2<f32> = vec2<f32>(x_3315.x, x_3315.y);
            let x_3318 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3316.x, x_3316.y, x_3318);
            let x_3325 : vec3<f32> = txVec43;
            let x_3327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3325.xy, x_3325.z);
            u_xlat83 = x_3327;
            let x_3329 : vec4<f32> = u_xlat17;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.z, x_3329.w);
            let x_3332 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec44;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat84 = x_3341;
            let x_3342 : f32 = u_xlat84;
            let x_3344 : f32 = u_xlat22.y;
            u_xlat84 = (x_3342 * x_3344);
            let x_3347 : f32 = u_xlat22.x;
            let x_3348 : f32 = u_xlat83;
            let x_3350 : f32 = u_xlat84;
            u_xlat83 = ((x_3347 * x_3348) + x_3350);
            let x_3353 : vec2<f32> = u_xlat61;
            let x_3355 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec45;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat84 = x_3364;
            let x_3366 : f32 = u_xlat22.z;
            let x_3367 : f32 = u_xlat84;
            let x_3369 : f32 = u_xlat83;
            u_xlat83 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat20;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
            let x_3375 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec46;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat84 = x_3384;
            let x_3386 : f32 = u_xlat22.w;
            let x_3387 : f32 = u_xlat84;
            let x_3389 : f32 = u_xlat83;
            u_xlat83 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat18;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.x, x_3392.y);
            let x_3395 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec47;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat84 = x_3404;
            let x_3406 : f32 = u_xlat23.x;
            let x_3407 : f32 = u_xlat84;
            let x_3409 : f32 = u_xlat83;
            u_xlat83 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec4<f32> = u_xlat18;
            let x_3413 : vec2<f32> = vec2<f32>(x_3412.z, x_3412.w);
            let x_3415 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3413.x, x_3413.y, x_3415);
            let x_3422 : vec3<f32> = txVec48;
            let x_3424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3422.xy, x_3422.z);
            u_xlat84 = x_3424;
            let x_3426 : f32 = u_xlat23.y;
            let x_3427 : f32 = u_xlat84;
            let x_3429 : f32 = u_xlat83;
            u_xlat83 = ((x_3426 * x_3427) + x_3429);
            let x_3432 : vec4<f32> = u_xlat19;
            let x_3433 : vec2<f32> = vec2<f32>(x_3432.x, x_3432.y);
            let x_3435 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3433.x, x_3433.y, x_3435);
            let x_3442 : vec3<f32> = txVec49;
            let x_3444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3442.xy, x_3442.z);
            u_xlat84 = x_3444;
            let x_3446 : f32 = u_xlat23.z;
            let x_3447 : f32 = u_xlat84;
            let x_3449 : f32 = u_xlat83;
            u_xlat83 = ((x_3446 * x_3447) + x_3449);
            let x_3452 : vec4<f32> = u_xlat20;
            let x_3453 : vec2<f32> = vec2<f32>(x_3452.z, x_3452.w);
            let x_3455 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3453.x, x_3453.y, x_3455);
            let x_3462 : vec3<f32> = txVec50;
            let x_3464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3462.xy, x_3462.z);
            u_xlat84 = x_3464;
            let x_3466 : f32 = u_xlat23.w;
            let x_3467 : f32 = u_xlat84;
            let x_3469 : f32 = u_xlat83;
            u_xlat83 = ((x_3466 * x_3467) + x_3469);
            let x_3472 : vec4<f32> = u_xlat21;
            let x_3473 : vec2<f32> = vec2<f32>(x_3472.x, x_3472.y);
            let x_3475 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3473.x, x_3473.y, x_3475);
            let x_3482 : vec3<f32> = txVec51;
            let x_3484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3482.xy, x_3482.z);
            u_xlat84 = x_3484;
            let x_3486 : f32 = u_xlat24.x;
            let x_3487 : f32 = u_xlat84;
            let x_3489 : f32 = u_xlat83;
            u_xlat83 = ((x_3486 * x_3487) + x_3489);
            let x_3492 : vec4<f32> = u_xlat21;
            let x_3493 : vec2<f32> = vec2<f32>(x_3492.z, x_3492.w);
            let x_3495 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3493.x, x_3493.y, x_3495);
            let x_3502 : vec3<f32> = txVec52;
            let x_3504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3502.xy, x_3502.z);
            u_xlat84 = x_3504;
            let x_3506 : f32 = u_xlat24.y;
            let x_3507 : f32 = u_xlat84;
            let x_3509 : f32 = u_xlat83;
            u_xlat83 = ((x_3506 * x_3507) + x_3509);
            let x_3512 : vec2<f32> = u_xlat38;
            let x_3514 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3512.x, x_3512.y, x_3514);
            let x_3521 : vec3<f32> = txVec53;
            let x_3523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3521.xy, x_3521.z);
            u_xlat84 = x_3523;
            let x_3525 : f32 = u_xlat24.z;
            let x_3526 : f32 = u_xlat84;
            let x_3528 : f32 = u_xlat83;
            u_xlat83 = ((x_3525 * x_3526) + x_3528);
            let x_3531 : vec2<f32> = u_xlat69;
            let x_3533 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
            let x_3540 : vec3<f32> = txVec54;
            let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
            u_xlat84 = x_3542;
            let x_3544 : f32 = u_xlat24.w;
            let x_3545 : f32 = u_xlat84;
            let x_3547 : f32 = u_xlat83;
            u_xlat83 = ((x_3544 * x_3545) + x_3547);
            let x_3550 : vec4<f32> = u_xlat16;
            let x_3551 : vec2<f32> = vec2<f32>(x_3550.x, x_3550.y);
            let x_3553 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec55;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat84 = x_3562;
            let x_3564 : f32 = u_xlat12.x;
            let x_3565 : f32 = u_xlat84;
            let x_3567 : f32 = u_xlat83;
            u_xlat83 = ((x_3564 * x_3565) + x_3567);
            let x_3570 : vec4<f32> = u_xlat16;
            let x_3571 : vec2<f32> = vec2<f32>(x_3570.z, x_3570.w);
            let x_3573 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec56;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat84 = x_3582;
            let x_3584 : f32 = u_xlat12.y;
            let x_3585 : f32 = u_xlat84;
            let x_3587 : f32 = u_xlat83;
            u_xlat83 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec2<f32> = u_xlat64;
            let x_3592 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3590.x, x_3590.y, x_3592);
            let x_3599 : vec3<f32> = txVec57;
            let x_3601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3599.xy, x_3599.z);
            u_xlat84 = x_3601;
            let x_3603 : f32 = u_xlat12.z;
            let x_3604 : f32 = u_xlat84;
            let x_3606 : f32 = u_xlat83;
            u_xlat83 = ((x_3603 * x_3604) + x_3606);
            let x_3609 : vec4<f32> = u_xlat11;
            let x_3610 : vec2<f32> = vec2<f32>(x_3609.x, x_3609.y);
            let x_3612 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3610.x, x_3610.y, x_3612);
            let x_3619 : vec3<f32> = txVec58;
            let x_3621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3619.xy, x_3619.z);
            u_xlat84 = x_3621;
            let x_3623 : f32 = u_xlat12.w;
            let x_3624 : f32 = u_xlat84;
            let x_3626 : f32 = u_xlat83;
            u_xlat81 = ((x_3623 * x_3624) + x_3626);
          }
        }
      } else {
        let x_3630 : vec4<f32> = u_xlat10;
        let x_3631 : vec2<f32> = vec2<f32>(x_3630.x, x_3630.y);
        let x_3633 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
        let x_3640 : vec3<f32> = txVec59;
        let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
        u_xlat81 = x_3642;
      }
      let x_3643 : i32 = u_xlati78;
      let x_3645 : f32 = x_670.x_AdditionalShadowParams[x_3643].x;
      u_xlat83 = (1.0f + -(x_3645));
      let x_3648 : f32 = u_xlat81;
      let x_3649 : i32 = u_xlati78;
      let x_3651 : f32 = x_670.x_AdditionalShadowParams[x_3649].x;
      let x_3653 : f32 = u_xlat83;
      u_xlat81 = ((x_3648 * x_3651) + x_3653);
      let x_3656 : f32 = u_xlat10.z;
      u_xlatb83 = (0.0f >= x_3656);
      let x_3660 : f32 = u_xlat10.z;
      u_xlatb84 = (x_3660 >= 1.0f);
      let x_3662 : bool = u_xlatb83;
      let x_3663 : bool = u_xlatb84;
      u_xlatb83 = (x_3662 | x_3663);
      let x_3665 : bool = u_xlatb83;
      let x_3666 : f32 = u_xlat81;
      u_xlat81 = select(x_3666, 1.0f, x_3665);
    } else {
      u_xlat81 = 1.0f;
    }
    let x_3669 : f32 = u_xlat81;
    u_xlat83 = (-(x_3669) + 1.0f);
    let x_3672 : f32 = u_xlat76;
    let x_3673 : f32 = u_xlat83;
    let x_3675 : f32 = u_xlat81;
    u_xlat81 = ((x_3672 * x_3673) + x_3675);
    let x_3677 : f32 = u_xlat79;
    let x_3678 : f32 = u_xlat81;
    u_xlat79 = (x_3677 * x_3678);
    let x_3680 : vec4<f32> = u_xlat1;
    let x_3682 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_3680.x, x_3680.y, x_3680.z), vec3<f32>(x_3682.x, x_3682.y, x_3682.z));
    let x_3685 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3685, 0.0f, 1.0f);
    let x_3687 : f32 = u_xlat79;
    let x_3688 : f32 = u_xlat81;
    u_xlat79 = (x_3687 * x_3688);
    let x_3690 : f32 = u_xlat79;
    let x_3692 : i32 = u_xlati78;
    let x_3694 : vec4<f32> = x_2255.x_AdditionalLightsColor[x_3692];
    let x_3696 : vec3<f32> = (vec3<f32>(x_3690, x_3690, x_3690) * vec3<f32>(x_3694.x, x_3694.y, x_3694.z));
    let x_3697 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3696.x, x_3696.y, x_3696.z, x_3697.w);
    let x_3699 : vec4<f32> = u_xlat8;
    let x_3701 : f32 = u_xlat80;
    let x_3704 : vec3<f32> = u_xlat4;
    let x_3705 : vec3<f32> = ((vec3<f32>(x_3699.x, x_3699.y, x_3699.z) * vec3<f32>(x_3701, x_3701, x_3701)) + x_3704);
    let x_3706 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3705.x, x_3705.y, x_3705.z, x_3706.w);
    let x_3708 : vec4<f32> = u_xlat8;
    let x_3710 : vec4<f32> = u_xlat8;
    u_xlat78 = dot(vec3<f32>(x_3708.x, x_3708.y, x_3708.z), vec3<f32>(x_3710.x, x_3710.y, x_3710.z));
    let x_3713 : f32 = u_xlat78;
    u_xlat78 = max(x_3713, 1.17549435e-38f);
    let x_3715 : f32 = u_xlat78;
    u_xlat78 = inverseSqrt(x_3715);
    let x_3717 : f32 = u_xlat78;
    let x_3719 : vec4<f32> = u_xlat8;
    let x_3721 : vec3<f32> = (vec3<f32>(x_3717, x_3717, x_3717) * vec3<f32>(x_3719.x, x_3719.y, x_3719.z));
    let x_3722 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3722.w);
    let x_3724 : vec4<f32> = u_xlat1;
    let x_3726 : vec4<f32> = u_xlat8;
    u_xlat78 = dot(vec3<f32>(x_3724.x, x_3724.y, x_3724.z), vec3<f32>(x_3726.x, x_3726.y, x_3726.z));
    let x_3729 : f32 = u_xlat78;
    u_xlat78 = clamp(x_3729, 0.0f, 1.0f);
    let x_3731 : vec4<f32> = u_xlat9;
    let x_3733 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3731.x, x_3731.y, x_3731.z), vec3<f32>(x_3733.x, x_3733.y, x_3733.z));
    let x_3736 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3736, 0.0f, 1.0f);
    let x_3738 : f32 = u_xlat78;
    let x_3739 : f32 = u_xlat78;
    u_xlat78 = (x_3738 * x_3739);
    let x_3741 : f32 = u_xlat78;
    let x_3743 : f32 = u_xlat7.x;
    u_xlat78 = ((x_3741 * x_3743) + 1.00001001358032226562f);
    let x_3746 : f32 = u_xlat79;
    let x_3747 : f32 = u_xlat79;
    u_xlat79 = (x_3746 * x_3747);
    let x_3749 : f32 = u_xlat78;
    let x_3750 : f32 = u_xlat78;
    u_xlat78 = (x_3749 * x_3750);
    let x_3752 : f32 = u_xlat79;
    u_xlat79 = max(x_3752, 0.10000000149011611938f);
    let x_3754 : f32 = u_xlat78;
    let x_3755 : f32 = u_xlat79;
    u_xlat78 = (x_3754 * x_3755);
    let x_3757 : f32 = u_xlat77;
    let x_3758 : f32 = u_xlat78;
    u_xlat78 = (x_3757 * x_3758);
    let x_3760 : f32 = u_xlat27;
    let x_3761 : f32 = u_xlat78;
    u_xlat78 = (x_3760 / x_3761);
    let x_3763 : vec4<f32> = u_xlat0;
    let x_3765 : f32 = u_xlat78;
    let x_3768 : vec4<f32> = u_xlat5;
    let x_3770 : vec3<f32> = ((vec3<f32>(x_3763.x, x_3763.y, x_3763.z) * vec3<f32>(x_3765, x_3765, x_3765)) + vec3<f32>(x_3768.x, x_3768.y, x_3768.z));
    let x_3771 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3770.x, x_3770.y, x_3770.z, x_3771.w);
    let x_3773 : vec4<f32> = u_xlat8;
    let x_3775 : vec4<f32> = u_xlat10;
    let x_3778 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3773.x, x_3773.y, x_3773.z) * vec3<f32>(x_3775.x, x_3775.y, x_3775.z)) + x_3778);

    continuing {
      let x_3780 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3780 + bitcast<u32>(1i));
    }
  }
  let x_3782 : vec4<f32> = u_xlat3;
  let x_3784 : f32 = u_xlat52;
  let x_3787 : vec4<f32> = u_xlat6;
  let x_3789 : vec3<f32> = ((vec3<f32>(x_3782.x, x_3782.y, x_3782.z) * vec3<f32>(x_3784, x_3784, x_3784)) + vec3<f32>(x_3787.x, x_3787.y, x_3787.z));
  let x_3790 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3789.x, x_3789.y, x_3789.z, x_3790.w);
  let x_3794 : vec3<f32> = u_xlat32;
  let x_3795 : vec4<f32> = u_xlat0;
  let x_3797 : vec3<f32> = (x_3794 + vec3<f32>(x_3795.x, x_3795.y, x_3795.z));
  let x_3798 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3797.x, x_3797.y, x_3797.z, x_3798.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


