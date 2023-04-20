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

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat77 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb78 : bool;

@group(1) @binding(3) var<uniform> x_638 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu78 : u32;

var<private> u_xlati79 : i32;

var<private> u_xlati78 : i32;

@group(1) @binding(1) var<uniform> x_2221 : AdditionalLights;

var<private> u_xlati81 : i32;

var<private> u_xlatb83 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb81 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2359 : f32;
  var x_2369 : f32;
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
  let x_507 : vec2<f32> = vs_INTERP0;
  let x_509 : f32 = x_29.x_GlobalMipBias.x;
  let x_510 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_507, x_509);
  u_xlat3 = x_510;
  let x_516 : vec2<f32> = vs_INTERP0;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_516, x_518);
  u_xlat5 = vec3<f32>(x_519.x, x_519.y, x_519.z);
  let x_521 : vec4<f32> = u_xlat3;
  let x_525 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat75 = dot(vec3<f32>(x_528.x, x_528.y, x_528.z), vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : f32 = u_xlat75;
  u_xlat75 = (x_533 + 0.5f);
  let x_536 : f32 = u_xlat75;
  let x_538 : vec3<f32> = u_xlat5;
  let x_539 : vec3<f32> = (vec3<f32>(x_536, x_536, x_536) * x_538);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : f32 = u_xlat3.w;
  u_xlat75 = max(x_543, 0.00009999999747378752f);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : f32 = u_xlat75;
  let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) / vec3<f32>(x_548, x_548, x_548));
  let x_551 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat2;
  let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
  let x_555 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat2;
  let x_561 : vec2<f32> = clamp(vec2<f32>(x_557.x, x_557.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_565 : f32 = u_xlat2.x;
  u_xlat75 = ((-(x_565) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_570 : f32 = u_xlat75;
  let x_573 : f32 = u_xlat2.y;
  u_xlat76 = (-(x_570) + x_573);
  let x_575 : f32 = u_xlat75;
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_575, x_575, x_575) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat0;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_589 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.x, x_587.x) * vec3<f32>(x_589.x, x_589.y, x_589.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_598 : f32 = u_xlat2.y;
  u_xlat75 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat75;
  let x_602 : f32 = u_xlat75;
  u_xlat2.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_606, 0.0078125f);
  let x_612 : f32 = u_xlat2.x;
  let x_614 : f32 = u_xlat2.x;
  u_xlat27 = (x_612 * x_614);
  let x_616 : f32 = u_xlat76;
  u_xlat76 = (x_616 + 1.0f);
  let x_618 : f32 = u_xlat76;
  u_xlat76 = min(x_618, 1.0f);
  let x_622 : f32 = u_xlat2.x;
  u_xlat77 = ((x_622 * 4.0f) + 2.0f);
  let x_628 : f32 = u_xlat2.z;
  u_xlat52 = min(x_628, 1.0f);
  let x_641 : f32 = x_638.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_641);
  let x_643 : bool = u_xlatb78;
  if (x_643) {
    let x_647 : f32 = x_638.x_MainLightShadowParams.y;
    u_xlatb78 = (x_647 == 1.0f);
    let x_649 : bool = u_xlatb78;
    if (x_649) {
      let x_654 : vec4<f32> = vs_INTERP3;
      let x_658 : vec4<f32> = x_638.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) + x_658);
      let x_662 : vec4<f32> = u_xlat6;
      let x_663 : vec2<f32> = vec2<f32>(x_662.x, x_662.y);
      let x_665 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_663.x, x_663.y, x_665);
      let x_678 : vec3<f32> = txVec0;
      let x_680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_678.xy, x_678.z);
      u_xlat7.x = x_680;
      let x_683 : vec4<f32> = u_xlat6;
      let x_684 : vec2<f32> = vec2<f32>(x_683.z, x_683.w);
      let x_686 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_684.x, x_684.y, x_686);
      let x_693 : vec3<f32> = txVec1;
      let x_695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_693.xy, x_693.z);
      u_xlat7.y = x_695;
      let x_697 : vec4<f32> = vs_INTERP3;
      let x_701 : vec4<f32> = x_638.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_697.x, x_697.y, x_697.x, x_697.y) + x_701);
      let x_704 : vec4<f32> = u_xlat6;
      let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
      let x_707 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_705.x, x_705.y, x_707);
      let x_714 : vec3<f32> = txVec2;
      let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
      u_xlat7.z = x_716;
      let x_719 : vec4<f32> = u_xlat6;
      let x_720 : vec2<f32> = vec2<f32>(x_719.z, x_719.w);
      let x_722 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_720.x, x_720.y, x_722);
      let x_729 : vec3<f32> = txVec3;
      let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_729.xy, x_729.z);
      u_xlat7.w = x_731;
      let x_734 : vec4<f32> = u_xlat7;
      u_xlat78 = dot(x_734, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_741 : f32 = x_638.x_MainLightShadowParams.y;
      u_xlatb79 = (x_741 == 2.0f);
      let x_743 : bool = u_xlatb79;
      if (x_743) {
        let x_746 : vec4<f32> = vs_INTERP3;
        let x_750 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_754 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_750.z, x_750.w)) + vec2<f32>(0.5f, 0.5f));
        let x_755 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat6;
        let x_759 : vec2<f32> = floor(vec2<f32>(x_757.x, x_757.y));
        let x_760 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_763 : vec4<f32> = vs_INTERP3;
        let x_766 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_769 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_763.x, x_763.y) * vec2<f32>(x_766.z, x_766.w)) + -(vec2<f32>(x_769.x, x_769.y)));
        let x_773 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_773.x, x_773.x, x_773.y, x_773.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_778 : vec4<f32> = u_xlat7;
        let x_780 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_778.x, x_778.x, x_778.z, x_778.z) * vec4<f32>(x_780.x, x_780.x, x_780.z, x_780.z));
        let x_783 : vec4<f32> = u_xlat8;
        let x_787 : vec2<f32> = (vec2<f32>(x_783.y, x_783.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_787.x, x_788.y, x_787.y, x_788.w);
        let x_790 : vec4<f32> = u_xlat8;
        let x_793 : vec2<f32> = u_xlat56;
        let x_795 : vec2<f32> = ((vec2<f32>(x_790.x, x_790.z) * vec2<f32>(0.5f, 0.5f)) + -(x_793));
        let x_796 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_799 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_799) + vec2<f32>(1.0f, 1.0f));
        let x_804 : vec2<f32> = u_xlat56;
        let x_806 : vec2<f32> = min(x_804, vec2<f32>(0.0f, 0.0f));
        let x_807 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_812 : vec4<f32> = u_xlat9;
        let x_815 : vec2<f32> = u_xlat58;
        let x_816 : vec2<f32> = ((-(vec2<f32>(x_809.x, x_809.y)) * vec2<f32>(x_812.x, x_812.y)) + x_815);
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_819 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_819, vec2<f32>(0.0f, 0.0f));
        let x_821 : vec2<f32> = u_xlat56;
        let x_823 : vec2<f32> = u_xlat56;
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_821) * x_823) + vec2<f32>(x_825.y, x_825.w));
        let x_828 : vec4<f32> = u_xlat9;
        let x_830 : vec2<f32> = (vec2<f32>(x_828.x, x_828.y) + vec2<f32>(1.0f, 1.0f));
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_833 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_833 + vec2<f32>(1.0f, 1.0f));
        let x_836 : vec4<f32> = u_xlat8;
        let x_840 : vec2<f32> = (vec2<f32>(x_836.x, x_836.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_843 : vec2<f32> = u_xlat58;
        let x_844 : vec2<f32> = (x_843 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_845 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_845.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = (vec2<f32>(x_847.x, x_847.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_853 : vec2<f32> = u_xlat56;
        let x_854 : vec2<f32> = (x_853 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_855 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_857.y, x_857.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_861 : f32 = u_xlat9.x;
        u_xlat10.z = x_861;
        let x_864 : f32 = u_xlat56.x;
        u_xlat10.w = x_864;
        let x_867 : f32 = u_xlat11.x;
        u_xlat8.z = x_867;
        let x_870 : f32 = u_xlat7.x;
        u_xlat8.w = x_870;
        let x_873 : vec4<f32> = u_xlat8;
        let x_875 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_873.z, x_873.w, x_873.x, x_873.z) + vec4<f32>(x_875.z, x_875.w, x_875.x, x_875.z));
        let x_879 : f32 = u_xlat10.y;
        u_xlat9.z = x_879;
        let x_882 : f32 = u_xlat56.y;
        u_xlat9.w = x_882;
        let x_885 : f32 = u_xlat8.y;
        u_xlat11.z = x_885;
        let x_888 : f32 = u_xlat7.z;
        u_xlat11.w = x_888;
        let x_890 : vec4<f32> = u_xlat9;
        let x_892 : vec4<f32> = u_xlat11;
        let x_894 : vec3<f32> = (vec3<f32>(x_890.z, x_890.y, x_890.w) + vec3<f32>(x_892.z, x_892.y, x_892.w));
        let x_895 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat8;
        let x_899 : vec4<f32> = u_xlat12;
        let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.z, x_897.w) / vec3<f32>(x_899.z, x_899.w, x_899.y));
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat8;
        let x_909 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_910 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
        let x_912 : vec4<f32> = u_xlat11;
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec3<f32> = (vec3<f32>(x_912.z, x_912.y, x_912.w) / vec3<f32>(x_914.x, x_914.y, x_914.z));
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat9;
        let x_921 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat8;
        let x_927 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_929 : vec3<f32> = (vec3<f32>(x_924.y, x_924.x, x_924.z) * vec3<f32>(x_927.x, x_927.x, x_927.x));
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat9;
        let x_935 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_937 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(x_935.y, x_935.y, x_935.y));
        let x_938 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_941 : f32 = u_xlat9.x;
        u_xlat8.w = x_941;
        let x_943 : vec4<f32> = u_xlat6;
        let x_946 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.y) * vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y)) + vec4<f32>(x_949.y, x_949.w, x_949.x, x_949.w));
        let x_952 : vec4<f32> = u_xlat6;
        let x_955 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_955.x, x_955.y)) + vec2<f32>(x_958.z, x_958.w));
        let x_962 : f32 = u_xlat8.y;
        u_xlat9.w = x_962;
        let x_964 : vec4<f32> = u_xlat9;
        let x_965 : vec2<f32> = vec2<f32>(x_964.y, x_964.z);
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_974 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.y) * vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y)) + vec4<f32>(x_974.x, x_974.y, x_974.z, x_974.y));
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_977.x, x_977.y, x_977.x, x_977.y) * vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y)) + vec4<f32>(x_983.w, x_983.y, x_983.w, x_983.z));
        let x_986 : vec4<f32> = u_xlat6;
        let x_989 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y) * vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y)) + vec4<f32>(x_992.x, x_992.w, x_992.z, x_992.w));
        let x_996 : vec4<f32> = u_xlat7;
        let x_998 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_996.x, x_996.x, x_996.x, x_996.y) * vec4<f32>(x_998.z, x_998.w, x_998.y, x_998.z));
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1004 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1002.y, x_1002.y, x_1002.z, x_1002.z) * x_1004);
        let x_1008 : f32 = u_xlat7.z;
        let x_1010 : f32 = u_xlat12.y;
        u_xlat79 = (x_1008 * x_1010);
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.x, x_1013.y);
        let x_1016 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1024 : vec3<f32> = txVec4;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat80 = x_1026;
        let x_1028 : vec4<f32> = u_xlat10;
        let x_1029 : vec2<f32> = vec2<f32>(x_1028.z, x_1028.w);
        let x_1031 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1029.x, x_1029.y, x_1031);
        let x_1038 : vec3<f32> = txVec5;
        let x_1040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1038.xy, x_1038.z);
        u_xlat6.x = x_1040;
        let x_1043 : f32 = u_xlat6.x;
        let x_1045 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1043 * x_1045);
        let x_1049 : f32 = u_xlat13.x;
        let x_1050 : f32 = u_xlat80;
        let x_1053 : f32 = u_xlat6.x;
        u_xlat80 = ((x_1049 * x_1050) + x_1053);
        let x_1056 : vec2<f32> = u_xlat56;
        let x_1058 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
        let x_1065 : vec3<f32> = txVec6;
        let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
        u_xlat6.x = x_1067;
        let x_1070 : f32 = u_xlat13.z;
        let x_1072 : f32 = u_xlat6.x;
        let x_1074 : f32 = u_xlat80;
        u_xlat80 = ((x_1070 * x_1072) + x_1074);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
        let x_1080 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec7;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1087.xy, x_1087.z);
        u_xlat6.x = x_1089;
        let x_1092 : f32 = u_xlat13.w;
        let x_1094 : f32 = u_xlat6.x;
        let x_1096 : f32 = u_xlat80;
        u_xlat80 = ((x_1092 * x_1094) + x_1096);
        let x_1099 : vec4<f32> = u_xlat11;
        let x_1100 : vec2<f32> = vec2<f32>(x_1099.x, x_1099.y);
        let x_1102 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1100.x, x_1100.y, x_1102);
        let x_1109 : vec3<f32> = txVec8;
        let x_1111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1109.xy, x_1109.z);
        u_xlat6.x = x_1111;
        let x_1114 : f32 = u_xlat14.x;
        let x_1116 : f32 = u_xlat6.x;
        let x_1118 : f32 = u_xlat80;
        u_xlat80 = ((x_1114 * x_1116) + x_1118);
        let x_1121 : vec4<f32> = u_xlat11;
        let x_1122 : vec2<f32> = vec2<f32>(x_1121.z, x_1121.w);
        let x_1124 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1122.x, x_1122.y, x_1124);
        let x_1131 : vec3<f32> = txVec9;
        let x_1133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1131.xy, x_1131.z);
        u_xlat6.x = x_1133;
        let x_1136 : f32 = u_xlat14.y;
        let x_1138 : f32 = u_xlat6.x;
        let x_1140 : f32 = u_xlat80;
        u_xlat80 = ((x_1136 * x_1138) + x_1140);
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1144 : vec2<f32> = vec2<f32>(x_1143.z, x_1143.w);
        let x_1146 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1144.x, x_1144.y, x_1146);
        let x_1153 : vec3<f32> = txVec10;
        let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1153.xy, x_1153.z);
        u_xlat6.x = x_1155;
        let x_1158 : f32 = u_xlat14.z;
        let x_1160 : f32 = u_xlat6.x;
        let x_1162 : f32 = u_xlat80;
        u_xlat80 = ((x_1158 * x_1160) + x_1162);
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.x, x_1165.y);
        let x_1168 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1175 : vec3<f32> = txVec11;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
        u_xlat6.x = x_1177;
        let x_1180 : f32 = u_xlat14.w;
        let x_1182 : f32 = u_xlat6.x;
        let x_1184 : f32 = u_xlat80;
        u_xlat80 = ((x_1180 * x_1182) + x_1184);
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1188 : vec2<f32> = vec2<f32>(x_1187.z, x_1187.w);
        let x_1190 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
        let x_1197 : vec3<f32> = txVec12;
        let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
        u_xlat6.x = x_1199;
        let x_1201 : f32 = u_xlat79;
        let x_1203 : f32 = u_xlat6.x;
        let x_1205 : f32 = u_xlat80;
        u_xlat78 = ((x_1201 * x_1203) + x_1205);
      } else {
        let x_1208 : vec4<f32> = vs_INTERP3;
        let x_1211 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1214 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1211.z, x_1211.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1215 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1219 : vec2<f32> = floor(vec2<f32>(x_1217.x, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = vs_INTERP3;
        let x_1225 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1225.z, x_1225.w)) + -(vec2<f32>(x_1228.x, x_1228.y)));
        let x_1232 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1232.x, x_1232.x, x_1232.y, x_1232.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1235 : vec4<f32> = u_xlat7;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1235.x, x_1235.x, x_1235.z, x_1235.z) * vec4<f32>(x_1237.x, x_1237.x, x_1237.z, x_1237.z));
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1244 : vec2<f32> = (vec2<f32>(x_1240.y, x_1240.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1245.x, x_1244.x, x_1245.z, x_1244.y);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1250 : vec2<f32> = u_xlat56;
        let x_1252 : vec2<f32> = ((vec2<f32>(x_1247.x, x_1247.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1250));
        let x_1253 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1252.x, x_1253.y, x_1252.y, x_1253.w);
        let x_1255 : vec2<f32> = u_xlat56;
        let x_1257 : vec2<f32> = (-(x_1255) + vec2<f32>(1.0f, 1.0f));
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1260 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1260, vec2<f32>(0.0f, 0.0f));
        let x_1262 : vec2<f32> = u_xlat58;
        let x_1264 : vec2<f32> = u_xlat58;
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1268 : vec2<f32> = ((-(x_1262) * x_1264) + vec2<f32>(x_1266.x, x_1266.y));
        let x_1269 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
        let x_1271 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1271, vec2<f32>(0.0f, 0.0f));
        let x_1274 : vec2<f32> = u_xlat58;
        let x_1276 : vec2<f32> = u_xlat58;
        let x_1278 : vec4<f32> = u_xlat7;
        let x_1280 : vec2<f32> = ((-(x_1274) * x_1276) + vec2<f32>(x_1278.y, x_1278.w));
        let x_1281 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1280.x, x_1281.y, x_1280.y);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1285 : vec2<f32> = (vec2<f32>(x_1283.x, x_1283.y) + vec2<f32>(2.0f, 2.0f));
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1288 : vec3<f32> = u_xlat32;
        let x_1290 : vec2<f32> = (vec2<f32>(x_1288.x, x_1288.z) + vec2<f32>(2.0f, 2.0f));
        let x_1291 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1291.x, x_1290.x, x_1291.z, x_1290.y);
        let x_1294 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1294 * 0.08163200318813323975f);
        let x_1298 : vec4<f32> = u_xlat7;
        let x_1301 : vec3<f32> = (vec3<f32>(x_1298.z, x_1298.x, x_1298.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
        let x_1304 : vec4<f32> = u_xlat8;
        let x_1307 : vec2<f32> = (vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1308 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat11.y;
        u_xlat10.x = x_1311;
        let x_1313 : vec2<f32> = u_xlat56;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1321 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1323 : vec2<f32> = u_xlat56;
        let x_1327 : vec2<f32> = ((vec2<f32>(x_1323.x, x_1323.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1328.w);
        let x_1331 : f32 = u_xlat7.x;
        u_xlat8.y = x_1331;
        let x_1334 : f32 = u_xlat9.y;
        u_xlat8.w = x_1334;
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1337 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1336 + x_1337);
        let x_1339 : vec2<f32> = u_xlat56;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1339.y, x_1339.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1343.x, x_1342.x, x_1343.z, x_1342.y);
        let x_1345 : vec2<f32> = u_xlat56;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1345.y, x_1345.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1349.y, x_1348.y, x_1349.w);
        let x_1352 : f32 = u_xlat7.y;
        u_xlat9.y = x_1352;
        let x_1354 : vec4<f32> = u_xlat9;
        let x_1355 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1354 + x_1355);
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1357 / x_1358);
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1360 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1367 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1366 / x_1367);
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1369 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1374 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1371.w, x_1371.x, x_1371.y, x_1371.z) * vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.x));
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1380 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1377.x, x_1377.w, x_1377.y, x_1377.z) * vec4<f32>(x_1380.y, x_1380.y, x_1380.y, x_1380.y));
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1384 : vec3<f32> = vec3<f32>(x_1383.y, x_1383.z, x_1383.w);
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1384.x, x_1385.y, x_1384.y, x_1384.z);
        let x_1388 : f32 = u_xlat9.x;
        u_xlat11.y = x_1388;
        let x_1390 : vec4<f32> = u_xlat6;
        let x_1393 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1390.x, x_1390.y, x_1390.x, x_1390.y) * vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y)) + vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1396.y));
        let x_1399 : vec4<f32> = u_xlat6;
        let x_1402 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1405 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1399.x, x_1399.y) * vec2<f32>(x_1402.x, x_1402.y)) + vec2<f32>(x_1405.w, x_1405.y));
        let x_1409 : f32 = u_xlat11.y;
        u_xlat8.y = x_1409;
        let x_1412 : f32 = u_xlat9.z;
        u_xlat11.y = x_1412;
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y) * vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.y)) + vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1420.y));
        let x_1423 : vec4<f32> = u_xlat6;
        let x_1426 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat11;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1429.w, x_1429.y));
        let x_1432 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
        let x_1435 : f32 = u_xlat11.y;
        u_xlat8.z = x_1435;
        let x_1438 : vec4<f32> = u_xlat6;
        let x_1441 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y) * vec4<f32>(x_1441.x, x_1441.y, x_1441.x, x_1441.y)) + vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.z));
        let x_1448 : f32 = u_xlat9.w;
        u_xlat11.y = x_1448;
        let x_1451 : vec4<f32> = u_xlat6;
        let x_1454 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1451.x, x_1451.y, x_1451.x, x_1451.y) * vec4<f32>(x_1454.x, x_1454.y, x_1454.x, x_1454.y)) + vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1457.y));
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1461.x, x_1461.y) * vec2<f32>(x_1464.x, x_1464.y)) + vec2<f32>(x_1467.w, x_1467.y));
        let x_1471 : f32 = u_xlat11.y;
        u_xlat8.w = x_1471;
        let x_1474 : vec4<f32> = u_xlat6;
        let x_1477 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1477.x, x_1477.y)) + vec2<f32>(x_1480.x, x_1480.w));
        let x_1483 : vec4<f32> = u_xlat11;
        let x_1484 : vec3<f32> = vec3<f32>(x_1483.x, x_1483.z, x_1483.w);
        let x_1485 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1484.x, x_1485.y, x_1484.y, x_1484.z);
        let x_1487 : vec4<f32> = u_xlat6;
        let x_1490 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1493 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y) * vec4<f32>(x_1490.x, x_1490.y, x_1490.x, x_1490.y)) + vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1493.y));
        let x_1497 : vec4<f32> = u_xlat6;
        let x_1500 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.x, x_1500.y)) + vec2<f32>(x_1503.w, x_1503.y));
        let x_1507 : f32 = u_xlat8.x;
        u_xlat9.x = x_1507;
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1517 : vec2<f32> = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1515.x, x_1515.y));
        let x_1518 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1517.x, x_1517.y, x_1518.z, x_1518.w);
        let x_1521 : vec4<f32> = u_xlat7;
        let x_1523 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1521.x, x_1521.x, x_1521.x, x_1521.x) * x_1523);
        let x_1526 : vec4<f32> = u_xlat7;
        let x_1528 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1526.y, x_1526.y, x_1526.y, x_1526.y) * x_1528);
        let x_1531 : vec4<f32> = u_xlat7;
        let x_1533 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1531.z, x_1531.z, x_1531.z, x_1531.z) * x_1533);
        let x_1535 : vec4<f32> = u_xlat7;
        let x_1537 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1535.w, x_1535.w, x_1535.w, x_1535.w) * x_1537);
        let x_1540 : vec4<f32> = u_xlat12;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.x, x_1540.y);
        let x_1543 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec13;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat79 = x_1552;
        let x_1554 : vec4<f32> = u_xlat12;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.z, x_1554.w);
        let x_1557 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec14;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat80 = x_1566;
        let x_1567 : f32 = u_xlat80;
        let x_1569 : f32 = u_xlat17.y;
        u_xlat80 = (x_1567 * x_1569);
        let x_1572 : f32 = u_xlat17.x;
        let x_1573 : f32 = u_xlat79;
        let x_1575 : f32 = u_xlat80;
        u_xlat79 = ((x_1572 * x_1573) + x_1575);
        let x_1578 : vec2<f32> = u_xlat56;
        let x_1580 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec15;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1587.xy, x_1587.z);
        u_xlat80 = x_1589;
        let x_1591 : f32 = u_xlat17.z;
        let x_1592 : f32 = u_xlat80;
        let x_1594 : f32 = u_xlat79;
        u_xlat79 = ((x_1591 * x_1592) + x_1594);
        let x_1597 : vec4<f32> = u_xlat15;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
        let x_1600 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec16;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat80 = x_1609;
        let x_1611 : f32 = u_xlat17.w;
        let x_1612 : f32 = u_xlat80;
        let x_1614 : f32 = u_xlat79;
        u_xlat79 = ((x_1611 * x_1612) + x_1614);
        let x_1617 : vec4<f32> = u_xlat13;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.x, x_1617.y);
        let x_1620 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec17;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat80 = x_1629;
        let x_1631 : f32 = u_xlat18.x;
        let x_1632 : f32 = u_xlat80;
        let x_1634 : f32 = u_xlat79;
        u_xlat79 = ((x_1631 * x_1632) + x_1634);
        let x_1637 : vec4<f32> = u_xlat13;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.z, x_1637.w);
        let x_1640 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec18;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1647.xy, x_1647.z);
        u_xlat80 = x_1649;
        let x_1651 : f32 = u_xlat18.y;
        let x_1652 : f32 = u_xlat80;
        let x_1654 : f32 = u_xlat79;
        u_xlat79 = ((x_1651 * x_1652) + x_1654);
        let x_1657 : vec4<f32> = u_xlat14;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.x, x_1657.y);
        let x_1660 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec19;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1667.xy, x_1667.z);
        u_xlat80 = x_1669;
        let x_1671 : f32 = u_xlat18.z;
        let x_1672 : f32 = u_xlat80;
        let x_1674 : f32 = u_xlat79;
        u_xlat79 = ((x_1671 * x_1672) + x_1674);
        let x_1677 : vec4<f32> = u_xlat15;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.z, x_1677.w);
        let x_1680 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec20;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat80 = x_1689;
        let x_1691 : f32 = u_xlat18.w;
        let x_1692 : f32 = u_xlat80;
        let x_1694 : f32 = u_xlat79;
        u_xlat79 = ((x_1691 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat16;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec21;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat80 = x_1709;
        let x_1711 : f32 = u_xlat19.x;
        let x_1712 : f32 = u_xlat80;
        let x_1714 : f32 = u_xlat79;
        u_xlat79 = ((x_1711 * x_1712) + x_1714);
        let x_1717 : vec4<f32> = u_xlat16;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.z, x_1717.w);
        let x_1720 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec22;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1727.xy, x_1727.z);
        u_xlat80 = x_1729;
        let x_1731 : f32 = u_xlat19.y;
        let x_1732 : f32 = u_xlat80;
        let x_1734 : f32 = u_xlat79;
        u_xlat79 = ((x_1731 * x_1732) + x_1734);
        let x_1737 : vec2<f32> = u_xlat33;
        let x_1739 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec23;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1746.xy, x_1746.z);
        u_xlat80 = x_1748;
        let x_1750 : f32 = u_xlat19.z;
        let x_1751 : f32 = u_xlat80;
        let x_1753 : f32 = u_xlat79;
        u_xlat79 = ((x_1750 * x_1751) + x_1753);
        let x_1756 : vec2<f32> = u_xlat64;
        let x_1758 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec24;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat80 = x_1767;
        let x_1769 : f32 = u_xlat19.w;
        let x_1770 : f32 = u_xlat80;
        let x_1772 : f32 = u_xlat79;
        u_xlat79 = ((x_1769 * x_1770) + x_1772);
        let x_1775 : vec4<f32> = u_xlat11;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
        let x_1778 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec25;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat80 = x_1787;
        let x_1789 : f32 = u_xlat7.x;
        let x_1790 : f32 = u_xlat80;
        let x_1792 : f32 = u_xlat79;
        u_xlat79 = ((x_1789 * x_1790) + x_1792);
        let x_1795 : vec4<f32> = u_xlat11;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.z, x_1795.w);
        let x_1798 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec26;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1805.xy, x_1805.z);
        u_xlat80 = x_1807;
        let x_1809 : f32 = u_xlat7.y;
        let x_1810 : f32 = u_xlat80;
        let x_1812 : f32 = u_xlat79;
        u_xlat79 = ((x_1809 * x_1810) + x_1812);
        let x_1815 : vec2<f32> = u_xlat59;
        let x_1817 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1815.x, x_1815.y, x_1817);
        let x_1824 : vec3<f32> = txVec27;
        let x_1826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1824.xy, x_1824.z);
        u_xlat80 = x_1826;
        let x_1828 : f32 = u_xlat7.z;
        let x_1829 : f32 = u_xlat80;
        let x_1831 : f32 = u_xlat79;
        u_xlat79 = ((x_1828 * x_1829) + x_1831);
        let x_1834 : vec4<f32> = u_xlat6;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
        let x_1837 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec28;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1844.xy, x_1844.z);
        u_xlat80 = x_1846;
        let x_1848 : f32 = u_xlat7.w;
        let x_1849 : f32 = u_xlat80;
        let x_1851 : f32 = u_xlat79;
        u_xlat78 = ((x_1848 * x_1849) + x_1851);
      }
    }
  } else {
    let x_1855 : vec4<f32> = vs_INTERP3;
    let x_1856 : vec2<f32> = vec2<f32>(x_1855.x, x_1855.y);
    let x_1858 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1856.x, x_1856.y, x_1858);
    let x_1865 : vec3<f32> = txVec29;
    let x_1867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1865.xy, x_1865.z);
    u_xlat78 = x_1867;
  }
  let x_1869 : f32 = x_638.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_1869) + 1.0f);
  let x_1872 : f32 = u_xlat78;
  let x_1874 : f32 = x_638.x_MainLightShadowParams.x;
  let x_1876 : f32 = u_xlat79;
  u_xlat78 = ((x_1872 * x_1874) + x_1876);
  let x_1879 : f32 = vs_INTERP3.z;
  u_xlatb79 = (0.0f >= x_1879);
  let x_1883 : f32 = vs_INTERP3.z;
  u_xlatb80 = (x_1883 >= 1.0f);
  let x_1885 : bool = u_xlatb79;
  let x_1886 : bool = u_xlatb80;
  u_xlatb79 = (x_1885 | x_1886);
  let x_1888 : bool = u_xlatb79;
  let x_1889 : f32 = u_xlat78;
  u_xlat78 = select(x_1889, 1.0f, x_1888);
  let x_1891 : vec3<f32> = vs_INTERP7;
  let x_1893 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1895 : vec3<f32> = (x_1891 + -(x_1893));
  let x_1896 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat6;
  let x_1900 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.z), vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : f32 = u_xlat79;
  let x_1905 : f32 = x_638.x_MainLightShadowParams.z;
  let x_1908 : f32 = x_638.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1903 * x_1905) + x_1908);
  let x_1910 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1910, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat78;
  u_xlat6.x = (-(x_1912) + 1.0f);
  let x_1916 : f32 = u_xlat80;
  let x_1918 : f32 = u_xlat6.x;
  let x_1920 : f32 = u_xlat78;
  u_xlat78 = ((x_1916 * x_1918) + x_1920);
  let x_1922 : vec3<f32> = u_xlat4;
  let x_1924 : vec4<f32> = u_xlat1;
  u_xlat80 = dot(-(x_1922), vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat80;
  let x_1928 : f32 = u_xlat80;
  u_xlat80 = (x_1927 + x_1928);
  let x_1930 : vec4<f32> = u_xlat1;
  let x_1932 : f32 = u_xlat80;
  let x_1936 : vec3<f32> = u_xlat4;
  let x_1938 : vec3<f32> = ((vec3<f32>(x_1930.x, x_1930.y, x_1930.z) * -(vec3<f32>(x_1932, x_1932, x_1932))) + -(x_1936));
  let x_1939 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1941 : vec4<f32> = u_xlat1;
  let x_1943 : vec3<f32> = u_xlat4;
  u_xlat80 = dot(vec3<f32>(x_1941.x, x_1941.y, x_1941.z), x_1943);
  let x_1945 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1945, 0.0f, 1.0f);
  let x_1947 : f32 = u_xlat80;
  u_xlat80 = (-(x_1947) + 1.0f);
  let x_1950 : f32 = u_xlat80;
  let x_1951 : f32 = u_xlat80;
  u_xlat80 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat80;
  let x_1954 : f32 = u_xlat80;
  u_xlat80 = (x_1953 * x_1954);
  let x_1957 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1957) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1963 : f32 = u_xlat75;
  let x_1964 : f32 = u_xlat81;
  u_xlat75 = (x_1963 * x_1964);
  let x_1966 : f32 = u_xlat75;
  u_xlat75 = (x_1966 * 6.0f);
  let x_1976 : vec4<f32> = u_xlat6;
  let x_1978 : f32 = u_xlat75;
  let x_1979 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1976.x, x_1976.y, x_1976.z), x_1978);
  u_xlat6 = x_1979;
  let x_1981 : f32 = u_xlat6.w;
  u_xlat75 = (x_1981 + -1.0f);
  let x_1984 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1985 : f32 = u_xlat75;
  u_xlat75 = ((x_1984 * x_1985) + 1.0f);
  let x_1988 : f32 = u_xlat75;
  u_xlat75 = max(x_1988, 0.0f);
  let x_1990 : f32 = u_xlat75;
  u_xlat75 = log2(x_1990);
  let x_1992 : f32 = u_xlat75;
  let x_1994 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1992 * x_1994);
  let x_1996 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1996);
  let x_1998 : f32 = u_xlat75;
  let x_2000 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1998 * x_2000);
  let x_2002 : vec4<f32> = u_xlat6;
  let x_2004 : f32 = u_xlat75;
  let x_2006 : vec3<f32> = (vec3<f32>(x_2002.x, x_2002.y, x_2002.z) * vec3<f32>(x_2004, x_2004, x_2004));
  let x_2007 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2007.w);
  let x_2009 : vec4<f32> = u_xlat2;
  let x_2011 : vec4<f32> = u_xlat2;
  let x_2015 : vec2<f32> = ((vec2<f32>(x_2009.x, x_2009.x) * vec2<f32>(x_2011.x, x_2011.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2015.x, x_2015.y, x_2016.z, x_2016.w);
  let x_2019 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_2019);
  let x_2021 : vec4<f32> = u_xlat0;
  let x_2024 : f32 = u_xlat76;
  u_xlat32 = (-(vec3<f32>(x_2021.x, x_2021.y, x_2021.z)) + vec3<f32>(x_2024, x_2024, x_2024));
  let x_2027 : f32 = u_xlat80;
  let x_2029 : vec3<f32> = u_xlat32;
  let x_2031 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_2027, x_2027, x_2027) * x_2029) + vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2034 : f32 = u_xlat75;
  let x_2036 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2034, x_2034, x_2034) * x_2036);
  let x_2038 : vec4<f32> = u_xlat6;
  let x_2040 : vec3<f32> = u_xlat32;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2038.x, x_2038.y, x_2038.z) * x_2040);
  let x_2042 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2044 : vec4<f32> = u_xlat3;
  let x_2046 : vec3<f32> = u_xlat5;
  let x_2048 : vec4<f32> = u_xlat6;
  let x_2050 : vec3<f32> = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * x_2046) + vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : f32 = u_xlat78;
  let x_2055 : f32 = x_349.unity_LightData.z;
  u_xlat75 = (x_2053 * x_2055);
  let x_2057 : vec4<f32> = u_xlat1;
  let x_2060 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_2057.x, x_2057.y, x_2057.z), vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2063, 0.0f, 1.0f);
  let x_2065 : f32 = u_xlat75;
  let x_2066 : f32 = u_xlat76;
  u_xlat75 = (x_2065 * x_2066);
  let x_2068 : f32 = u_xlat75;
  let x_2071 : vec4<f32> = x_29.x_MainLightColor;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2068, x_2068, x_2068) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec3<f32> = u_xlat4;
  let x_2078 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (x_2076 + vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
  let x_2081 : vec3<f32> = u_xlat32;
  let x_2082 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_2081, x_2082);
  let x_2084 : f32 = u_xlat75;
  u_xlat75 = max(x_2084, 1.17549435e-38f);
  let x_2087 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2087);
  let x_2089 : f32 = u_xlat75;
  let x_2091 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2089, x_2089, x_2089) * x_2091);
  let x_2093 : vec4<f32> = u_xlat1;
  let x_2095 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_2093.x, x_2093.y, x_2093.z), x_2095);
  let x_2097 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2097, 0.0f, 1.0f);
  let x_2100 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2102 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), x_2102);
  let x_2104 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2104, 0.0f, 1.0f);
  let x_2106 : f32 = u_xlat75;
  let x_2107 : f32 = u_xlat75;
  u_xlat75 = (x_2106 * x_2107);
  let x_2109 : f32 = u_xlat75;
  let x_2111 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2109 * x_2111) + 1.00001001358032226562f);
  let x_2115 : f32 = u_xlat76;
  let x_2116 : f32 = u_xlat76;
  u_xlat76 = (x_2115 * x_2116);
  let x_2118 : f32 = u_xlat75;
  let x_2119 : f32 = u_xlat75;
  u_xlat75 = (x_2118 * x_2119);
  let x_2121 : f32 = u_xlat76;
  u_xlat76 = max(x_2121, 0.10000000149011611938f);
  let x_2124 : f32 = u_xlat75;
  let x_2125 : f32 = u_xlat76;
  u_xlat75 = (x_2124 * x_2125);
  let x_2127 : f32 = u_xlat77;
  let x_2128 : f32 = u_xlat75;
  u_xlat75 = (x_2127 * x_2128);
  let x_2130 : f32 = u_xlat27;
  let x_2131 : f32 = u_xlat75;
  u_xlat75 = (x_2130 / x_2131);
  let x_2133 : vec4<f32> = u_xlat0;
  let x_2135 : f32 = u_xlat75;
  let x_2138 : vec3<f32> = u_xlat5;
  u_xlat32 = ((vec3<f32>(x_2133.x, x_2133.y, x_2133.z) * vec3<f32>(x_2135, x_2135, x_2135)) + x_2138);
  let x_2140 : vec4<f32> = u_xlat6;
  let x_2142 : vec3<f32> = u_xlat32;
  let x_2143 : vec3<f32> = (vec3<f32>(x_2140.x, x_2140.y, x_2140.z) * x_2142);
  let x_2144 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
  let x_2147 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2149 : f32 = x_349.unity_LightData.y;
  u_xlat75 = min(x_2147, x_2149);
  let x_2153 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2153));
  let x_2156 : f32 = u_xlat79;
  let x_2159 : f32 = x_638.x_AdditionalShadowFadeParams.x;
  let x_2162 : f32 = x_638.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2156 * x_2159) + x_2162);
  let x_2164 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2164, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2176 : u32 = u_xlatu_loop_1;
    let x_2177 : u32 = u_xlatu75;
    if ((x_2176 < x_2177)) {
    } else {
      break;
    }
    let x_2180 : u32 = u_xlatu_loop_1;
    u_xlatu78 = (x_2180 >> 2u);
    let x_2184 : u32 = u_xlatu_loop_1;
    u_xlati79 = bitcast<i32>((x_2184 & 3u));
    let x_2187 : u32 = u_xlatu78;
    let x_2190 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2187)];
    let x_2200 : i32 = u_xlati79;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2205 : vec4<u32> = indexable[x_2200];
    u_xlat78 = dot(x_2190, bitcast<vec4<f32>>(x_2205));
    let x_2209 : f32 = u_xlat78;
    u_xlati78 = i32(x_2209);
    let x_2211 : vec3<f32> = vs_INTERP7;
    let x_2222 : i32 = u_xlati78;
    let x_2224 : vec4<f32> = x_2221.x_AdditionalLightsPosition[x_2222];
    let x_2227 : i32 = u_xlati78;
    let x_2229 : vec4<f32> = x_2221.x_AdditionalLightsPosition[x_2227];
    let x_2231 : vec3<f32> = ((-(x_2211) * vec3<f32>(x_2224.w, x_2224.w, x_2224.w)) + vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
    let x_2232 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
    let x_2234 : vec4<f32> = u_xlat8;
    let x_2236 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_2234.x, x_2234.y, x_2234.z), vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
    let x_2239 : f32 = u_xlat79;
    u_xlat79 = max(x_2239, 0.00006103515625f);
    let x_2242 : f32 = u_xlat79;
    u_xlat80 = inverseSqrt(x_2242);
    let x_2244 : f32 = u_xlat80;
    let x_2246 : vec4<f32> = u_xlat8;
    let x_2248 : vec3<f32> = (vec3<f32>(x_2244, x_2244, x_2244) * vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
    let x_2249 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
    let x_2251 : f32 = u_xlat79;
    u_xlat81 = (1.0f / x_2251);
    let x_2253 : f32 = u_xlat79;
    let x_2254 : i32 = u_xlati78;
    let x_2256 : f32 = x_2221.x_AdditionalLightsAttenuation[x_2254].x;
    u_xlat79 = (x_2253 * x_2256);
    let x_2258 : f32 = u_xlat79;
    let x_2260 : f32 = u_xlat79;
    u_xlat79 = ((-(x_2258) * x_2260) + 1.0f);
    let x_2263 : f32 = u_xlat79;
    u_xlat79 = max(x_2263, 0.0f);
    let x_2265 : f32 = u_xlat79;
    let x_2266 : f32 = u_xlat79;
    u_xlat79 = (x_2265 * x_2266);
    let x_2268 : f32 = u_xlat79;
    let x_2269 : f32 = u_xlat81;
    u_xlat79 = (x_2268 * x_2269);
    let x_2271 : i32 = u_xlati78;
    let x_2273 : vec4<f32> = x_2221.x_AdditionalLightsSpotDir[x_2271];
    let x_2275 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
    let x_2278 : f32 = u_xlat81;
    let x_2279 : i32 = u_xlati78;
    let x_2281 : f32 = x_2221.x_AdditionalLightsAttenuation[x_2279].z;
    let x_2283 : i32 = u_xlati78;
    let x_2285 : f32 = x_2221.x_AdditionalLightsAttenuation[x_2283].w;
    u_xlat81 = ((x_2278 * x_2281) + x_2285);
    let x_2287 : f32 = u_xlat81;
    u_xlat81 = clamp(x_2287, 0.0f, 1.0f);
    let x_2289 : f32 = u_xlat81;
    let x_2290 : f32 = u_xlat81;
    u_xlat81 = (x_2289 * x_2290);
    let x_2292 : f32 = u_xlat79;
    let x_2293 : f32 = u_xlat81;
    u_xlat79 = (x_2292 * x_2293);
    let x_2297 : i32 = u_xlati78;
    let x_2299 : f32 = x_638.x_AdditionalShadowParams[x_2297].w;
    u_xlati81 = i32(x_2299);
    let x_2302 : i32 = u_xlati81;
    u_xlatb83 = (x_2302 >= 0i);
    let x_2304 : bool = u_xlatb83;
    if (x_2304) {
      let x_2308 : i32 = u_xlati78;
      let x_2310 : f32 = x_638.x_AdditionalShadowParams[x_2308].z;
      u_xlatb83 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2310, x_2310, x_2310, x_2310))));
      let x_2315 : bool = u_xlatb83;
      if (x_2315) {
        let x_2320 : vec4<f32> = u_xlat9;
        let x_2323 : vec4<f32> = u_xlat9;
        let x_2326 : vec4<bool> = (abs(vec4<f32>(x_2320.z, x_2320.z, x_2320.y, x_2320.z)) >= abs(vec4<f32>(x_2323.x, x_2323.y, x_2323.x, x_2323.x)));
        let x_2328 : vec3<bool> = vec3<bool>(x_2326.x, x_2326.y, x_2326.z);
        let x_2329 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
        let x_2332 : bool = u_xlatb10.y;
        let x_2334 : bool = u_xlatb10.x;
        u_xlatb83 = (x_2332 & x_2334);
        let x_2336 : vec4<f32> = u_xlat9;
        let x_2339 : vec4<bool> = (-(vec4<f32>(x_2336.z, x_2336.y, x_2336.z, x_2336.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2340 : vec3<bool> = vec3<bool>(x_2339.x, x_2339.y, x_2339.w);
        let x_2341 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2340.x, x_2340.y, x_2341.z, x_2340.z);
        let x_2344 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2344);
        let x_2349 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2349);
        let x_2355 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2355);
        let x_2358 : bool = u_xlatb10.z;
        if (x_2358) {
          let x_2363 : f32 = u_xlat10.y;
          x_2359 = x_2363;
        } else {
          let x_2365 : f32 = u_xlat84;
          x_2359 = x_2365;
        }
        let x_2366 : f32 = x_2359;
        u_xlat84 = x_2366;
        let x_2368 : bool = u_xlatb83;
        if (x_2368) {
          let x_2373 : f32 = u_xlat10.x;
          x_2369 = x_2373;
        } else {
          let x_2375 : f32 = u_xlat84;
          x_2369 = x_2375;
        }
        let x_2376 : f32 = x_2369;
        u_xlat83 = x_2376;
        let x_2377 : i32 = u_xlati78;
        let x_2379 : f32 = x_638.x_AdditionalShadowParams[x_2377].w;
        u_xlat84 = trunc(x_2379);
        let x_2381 : f32 = u_xlat83;
        let x_2382 : f32 = u_xlat84;
        u_xlat83 = (x_2381 + x_2382);
        let x_2384 : f32 = u_xlat83;
        u_xlati81 = i32(x_2384);
      }
      let x_2386 : i32 = u_xlati81;
      u_xlati81 = (x_2386 << bitcast<u32>(2i));
      let x_2388 : vec3<f32> = vs_INTERP7;
      let x_2391 : i32 = u_xlati81;
      let x_2394 : i32 = u_xlati81;
      let x_2398 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[((x_2391 + 1i) / 4i)][((x_2394 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2388.y, x_2388.y, x_2388.y, x_2388.y) * x_2398);
      let x_2400 : i32 = u_xlati81;
      let x_2402 : i32 = u_xlati81;
      let x_2405 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[(x_2400 / 4i)][(x_2402 % 4i)];
      let x_2406 : vec3<f32> = vs_INTERP7;
      let x_2409 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2405 * vec4<f32>(x_2406.x, x_2406.x, x_2406.x, x_2406.x)) + x_2409);
      let x_2411 : i32 = u_xlati81;
      let x_2414 : i32 = u_xlati81;
      let x_2418 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[((x_2411 + 2i) / 4i)][((x_2414 + 2i) % 4i)];
      let x_2419 : vec3<f32> = vs_INTERP7;
      let x_2422 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2418 * vec4<f32>(x_2419.z, x_2419.z, x_2419.z, x_2419.z)) + x_2422);
      let x_2424 : vec4<f32> = u_xlat10;
      let x_2425 : i32 = u_xlati81;
      let x_2428 : i32 = u_xlati81;
      let x_2432 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[((x_2425 + 3i) / 4i)][((x_2428 + 3i) % 4i)];
      u_xlat10 = (x_2424 + x_2432);
      let x_2434 : vec4<f32> = u_xlat10;
      let x_2436 : vec4<f32> = u_xlat10;
      let x_2438 : vec3<f32> = (vec3<f32>(x_2434.x, x_2434.y, x_2434.z) / vec3<f32>(x_2436.w, x_2436.w, x_2436.w));
      let x_2439 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
      let x_2442 : i32 = u_xlati78;
      let x_2444 : f32 = x_638.x_AdditionalShadowParams[x_2442].y;
      u_xlatb81 = (0.0f < x_2444);
      let x_2446 : bool = u_xlatb81;
      if (x_2446) {
        let x_2449 : i32 = u_xlati78;
        let x_2451 : f32 = x_638.x_AdditionalShadowParams[x_2449].y;
        u_xlatb81 = (1.0f == x_2451);
        let x_2453 : bool = u_xlatb81;
        if (x_2453) {
          let x_2456 : vec4<f32> = u_xlat10;
          let x_2460 : vec4<f32> = x_638.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2456.x, x_2456.y, x_2456.x, x_2456.y) + x_2460);
          let x_2463 : vec4<f32> = u_xlat11;
          let x_2464 : vec2<f32> = vec2<f32>(x_2463.x, x_2463.y);
          let x_2466 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2464.x, x_2464.y, x_2466);
          let x_2474 : vec3<f32> = txVec30;
          let x_2476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2474.xy, x_2474.z);
          u_xlat12.x = x_2476;
          let x_2479 : vec4<f32> = u_xlat11;
          let x_2480 : vec2<f32> = vec2<f32>(x_2479.z, x_2479.w);
          let x_2482 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2480.x, x_2480.y, x_2482);
          let x_2489 : vec3<f32> = txVec31;
          let x_2491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2489.xy, x_2489.z);
          u_xlat12.y = x_2491;
          let x_2493 : vec4<f32> = u_xlat10;
          let x_2497 : vec4<f32> = x_638.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2493.x, x_2493.y, x_2493.x, x_2493.y) + x_2497);
          let x_2500 : vec4<f32> = u_xlat11;
          let x_2501 : vec2<f32> = vec2<f32>(x_2500.x, x_2500.y);
          let x_2503 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
          let x_2510 : vec3<f32> = txVec32;
          let x_2512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
          u_xlat12.z = x_2512;
          let x_2515 : vec4<f32> = u_xlat11;
          let x_2516 : vec2<f32> = vec2<f32>(x_2515.z, x_2515.w);
          let x_2518 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2516.x, x_2516.y, x_2518);
          let x_2525 : vec3<f32> = txVec33;
          let x_2527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2525.xy, x_2525.z);
          u_xlat12.w = x_2527;
          let x_2529 : vec4<f32> = u_xlat12;
          u_xlat81 = dot(x_2529, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2532 : i32 = u_xlati78;
          let x_2534 : f32 = x_638.x_AdditionalShadowParams[x_2532].y;
          u_xlatb83 = (2.0f == x_2534);
          let x_2536 : bool = u_xlatb83;
          if (x_2536) {
            let x_2539 : vec4<f32> = u_xlat10;
            let x_2543 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2546 : vec2<f32> = ((vec2<f32>(x_2539.x, x_2539.y) * vec2<f32>(x_2543.z, x_2543.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2547 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2546.x, x_2546.y, x_2547.z, x_2547.w);
            let x_2549 : vec4<f32> = u_xlat11;
            let x_2551 : vec2<f32> = floor(vec2<f32>(x_2549.x, x_2549.y));
            let x_2552 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2551.x, x_2551.y, x_2552.z, x_2552.w);
            let x_2555 : vec4<f32> = u_xlat10;
            let x_2558 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2561 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2555.x, x_2555.y) * vec2<f32>(x_2558.z, x_2558.w)) + -(vec2<f32>(x_2561.x, x_2561.y)));
            let x_2565 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2565.x, x_2565.x, x_2565.y, x_2565.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2568 : vec4<f32> = u_xlat12;
            let x_2570 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2568.x, x_2568.x, x_2568.z, x_2568.z) * vec4<f32>(x_2570.x, x_2570.x, x_2570.z, x_2570.z));
            let x_2573 : vec4<f32> = u_xlat13;
            let x_2575 : vec2<f32> = (vec2<f32>(x_2573.y, x_2573.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2576 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2575.x, x_2576.y, x_2575.y, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat13;
            let x_2581 : vec2<f32> = u_xlat61;
            let x_2583 : vec2<f32> = ((vec2<f32>(x_2578.x, x_2578.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2581));
            let x_2584 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2587 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2587) + vec2<f32>(1.0f, 1.0f));
            let x_2590 : vec2<f32> = u_xlat61;
            let x_2591 : vec2<f32> = min(x_2590, vec2<f32>(0.0f, 0.0f));
            let x_2592 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2591.x, x_2591.y, x_2592.z, x_2592.w);
            let x_2594 : vec4<f32> = u_xlat14;
            let x_2597 : vec4<f32> = u_xlat14;
            let x_2600 : vec2<f32> = u_xlat63;
            let x_2601 : vec2<f32> = ((-(vec2<f32>(x_2594.x, x_2594.y)) * vec2<f32>(x_2597.x, x_2597.y)) + x_2600);
            let x_2602 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
            let x_2604 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2604, vec2<f32>(0.0f, 0.0f));
            let x_2606 : vec2<f32> = u_xlat61;
            let x_2608 : vec2<f32> = u_xlat61;
            let x_2610 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2606) * x_2608) + vec2<f32>(x_2610.y, x_2610.w));
            let x_2613 : vec4<f32> = u_xlat14;
            let x_2615 : vec2<f32> = (vec2<f32>(x_2613.x, x_2613.y) + vec2<f32>(1.0f, 1.0f));
            let x_2616 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2615.x, x_2615.y, x_2616.z, x_2616.w);
            let x_2618 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2618 + vec2<f32>(1.0f, 1.0f));
            let x_2620 : vec4<f32> = u_xlat13;
            let x_2622 : vec2<f32> = (vec2<f32>(x_2620.x, x_2620.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2623 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2622.x, x_2622.y, x_2623.z, x_2623.w);
            let x_2625 : vec2<f32> = u_xlat63;
            let x_2626 : vec2<f32> = (x_2625 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2627 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2626.x, x_2626.y, x_2627.z, x_2627.w);
            let x_2629 : vec4<f32> = u_xlat14;
            let x_2631 : vec2<f32> = (vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2632 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2634 : vec2<f32> = u_xlat61;
            let x_2635 : vec2<f32> = (x_2634 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2636 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2638.y, x_2638.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2642 : f32 = u_xlat14.x;
            u_xlat15.z = x_2642;
            let x_2645 : f32 = u_xlat61.x;
            u_xlat15.w = x_2645;
            let x_2648 : f32 = u_xlat16.x;
            u_xlat13.z = x_2648;
            let x_2651 : f32 = u_xlat12.x;
            u_xlat13.w = x_2651;
            let x_2653 : vec4<f32> = u_xlat13;
            let x_2655 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2653.z, x_2653.w, x_2653.x, x_2653.z) + vec4<f32>(x_2655.z, x_2655.w, x_2655.x, x_2655.z));
            let x_2659 : f32 = u_xlat15.y;
            u_xlat14.z = x_2659;
            let x_2662 : f32 = u_xlat61.y;
            u_xlat14.w = x_2662;
            let x_2665 : f32 = u_xlat13.y;
            u_xlat16.z = x_2665;
            let x_2668 : f32 = u_xlat12.z;
            u_xlat16.w = x_2668;
            let x_2670 : vec4<f32> = u_xlat14;
            let x_2672 : vec4<f32> = u_xlat16;
            let x_2674 : vec3<f32> = (vec3<f32>(x_2670.z, x_2670.y, x_2670.w) + vec3<f32>(x_2672.z, x_2672.y, x_2672.w));
            let x_2675 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
            let x_2677 : vec4<f32> = u_xlat13;
            let x_2679 : vec4<f32> = u_xlat17;
            let x_2681 : vec3<f32> = (vec3<f32>(x_2677.x, x_2677.z, x_2677.w) / vec3<f32>(x_2679.z, x_2679.w, x_2679.y));
            let x_2682 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
            let x_2684 : vec4<f32> = u_xlat13;
            let x_2686 : vec3<f32> = (vec3<f32>(x_2684.x, x_2684.y, x_2684.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2687 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
            let x_2689 : vec4<f32> = u_xlat16;
            let x_2691 : vec4<f32> = u_xlat12;
            let x_2693 : vec3<f32> = (vec3<f32>(x_2689.z, x_2689.y, x_2689.w) / vec3<f32>(x_2691.x, x_2691.y, x_2691.z));
            let x_2694 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2693.x, x_2693.y, x_2693.z, x_2694.w);
            let x_2696 : vec4<f32> = u_xlat14;
            let x_2698 : vec3<f32> = (vec3<f32>(x_2696.x, x_2696.y, x_2696.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2699 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
            let x_2701 : vec4<f32> = u_xlat13;
            let x_2704 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2706 : vec3<f32> = (vec3<f32>(x_2701.y, x_2701.x, x_2701.z) * vec3<f32>(x_2704.x, x_2704.x, x_2704.x));
            let x_2707 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
            let x_2709 : vec4<f32> = u_xlat14;
            let x_2712 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2714 : vec3<f32> = (vec3<f32>(x_2709.x, x_2709.y, x_2709.z) * vec3<f32>(x_2712.y, x_2712.y, x_2712.y));
            let x_2715 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2715.w);
            let x_2718 : f32 = u_xlat14.x;
            u_xlat13.w = x_2718;
            let x_2720 : vec4<f32> = u_xlat11;
            let x_2723 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2726 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y) * vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.y)) + vec4<f32>(x_2726.y, x_2726.w, x_2726.x, x_2726.w));
            let x_2729 : vec4<f32> = u_xlat11;
            let x_2732 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2735 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2729.x, x_2729.y) * vec2<f32>(x_2732.x, x_2732.y)) + vec2<f32>(x_2735.z, x_2735.w));
            let x_2739 : f32 = u_xlat13.y;
            u_xlat14.w = x_2739;
            let x_2741 : vec4<f32> = u_xlat14;
            let x_2742 : vec2<f32> = vec2<f32>(x_2741.y, x_2741.z);
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2743.x, x_2742.x, x_2743.z, x_2742.y);
            let x_2745 : vec4<f32> = u_xlat11;
            let x_2748 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2751.y));
            let x_2754 : vec4<f32> = u_xlat11;
            let x_2757 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2760 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2754.x, x_2754.y, x_2754.x, x_2754.y) * vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y)) + vec4<f32>(x_2760.w, x_2760.y, x_2760.w, x_2760.z));
            let x_2763 : vec4<f32> = u_xlat11;
            let x_2766 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y) * vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y)) + vec4<f32>(x_2769.x, x_2769.w, x_2769.z, x_2769.w));
            let x_2772 : vec4<f32> = u_xlat12;
            let x_2774 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2772.x, x_2772.x, x_2772.x, x_2772.y) * vec4<f32>(x_2774.z, x_2774.w, x_2774.y, x_2774.z));
            let x_2777 : vec4<f32> = u_xlat12;
            let x_2779 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2777.y, x_2777.y, x_2777.z, x_2777.z) * x_2779);
            let x_2782 : f32 = u_xlat12.z;
            let x_2784 : f32 = u_xlat17.y;
            u_xlat83 = (x_2782 * x_2784);
            let x_2787 : vec4<f32> = u_xlat15;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.x, x_2787.y);
            let x_2790 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec34;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat84 = x_2799;
            let x_2801 : vec4<f32> = u_xlat15;
            let x_2802 : vec2<f32> = vec2<f32>(x_2801.z, x_2801.w);
            let x_2804 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2802.x, x_2802.y, x_2804);
            let x_2812 : vec3<f32> = txVec35;
            let x_2814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2812.xy, x_2812.z);
            u_xlat85 = x_2814;
            let x_2815 : f32 = u_xlat85;
            let x_2817 : f32 = u_xlat18.y;
            u_xlat85 = (x_2815 * x_2817);
            let x_2820 : f32 = u_xlat18.x;
            let x_2821 : f32 = u_xlat84;
            let x_2823 : f32 = u_xlat85;
            u_xlat84 = ((x_2820 * x_2821) + x_2823);
            let x_2826 : vec2<f32> = u_xlat61;
            let x_2828 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
            let x_2835 : vec3<f32> = txVec36;
            let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
            u_xlat85 = x_2837;
            let x_2839 : f32 = u_xlat18.z;
            let x_2840 : f32 = u_xlat85;
            let x_2842 : f32 = u_xlat84;
            u_xlat84 = ((x_2839 * x_2840) + x_2842);
            let x_2845 : vec4<f32> = u_xlat14;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.x, x_2845.y);
            let x_2848 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec37;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat85 = x_2857;
            let x_2859 : f32 = u_xlat18.w;
            let x_2860 : f32 = u_xlat85;
            let x_2862 : f32 = u_xlat84;
            u_xlat84 = ((x_2859 * x_2860) + x_2862);
            let x_2865 : vec4<f32> = u_xlat16;
            let x_2866 : vec2<f32> = vec2<f32>(x_2865.x, x_2865.y);
            let x_2868 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
            let x_2875 : vec3<f32> = txVec38;
            let x_2877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2875.xy, x_2875.z);
            u_xlat85 = x_2877;
            let x_2879 : f32 = u_xlat19.x;
            let x_2880 : f32 = u_xlat85;
            let x_2882 : f32 = u_xlat84;
            u_xlat84 = ((x_2879 * x_2880) + x_2882);
            let x_2885 : vec4<f32> = u_xlat16;
            let x_2886 : vec2<f32> = vec2<f32>(x_2885.z, x_2885.w);
            let x_2888 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
            let x_2895 : vec3<f32> = txVec39;
            let x_2897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
            u_xlat85 = x_2897;
            let x_2899 : f32 = u_xlat19.y;
            let x_2900 : f32 = u_xlat85;
            let x_2902 : f32 = u_xlat84;
            u_xlat84 = ((x_2899 * x_2900) + x_2902);
            let x_2905 : vec4<f32> = u_xlat14;
            let x_2906 : vec2<f32> = vec2<f32>(x_2905.z, x_2905.w);
            let x_2908 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
            let x_2915 : vec3<f32> = txVec40;
            let x_2917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
            u_xlat85 = x_2917;
            let x_2919 : f32 = u_xlat19.z;
            let x_2920 : f32 = u_xlat85;
            let x_2922 : f32 = u_xlat84;
            u_xlat84 = ((x_2919 * x_2920) + x_2922);
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2926 : vec2<f32> = vec2<f32>(x_2925.x, x_2925.y);
            let x_2928 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2926.x, x_2926.y, x_2928);
            let x_2935 : vec3<f32> = txVec41;
            let x_2937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2935.xy, x_2935.z);
            u_xlat85 = x_2937;
            let x_2939 : f32 = u_xlat19.w;
            let x_2940 : f32 = u_xlat85;
            let x_2942 : f32 = u_xlat84;
            u_xlat84 = ((x_2939 * x_2940) + x_2942);
            let x_2945 : vec4<f32> = u_xlat13;
            let x_2946 : vec2<f32> = vec2<f32>(x_2945.z, x_2945.w);
            let x_2948 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
            let x_2955 : vec3<f32> = txVec42;
            let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
            u_xlat85 = x_2957;
            let x_2958 : f32 = u_xlat83;
            let x_2959 : f32 = u_xlat85;
            let x_2961 : f32 = u_xlat84;
            u_xlat81 = ((x_2958 * x_2959) + x_2961);
          } else {
            let x_2964 : vec4<f32> = u_xlat10;
            let x_2967 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2970 : vec2<f32> = ((vec2<f32>(x_2964.x, x_2964.y) * vec2<f32>(x_2967.z, x_2967.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2971 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2970.x, x_2970.y, x_2971.z, x_2971.w);
            let x_2973 : vec4<f32> = u_xlat11;
            let x_2975 : vec2<f32> = floor(vec2<f32>(x_2973.x, x_2973.y));
            let x_2976 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec4<f32> = u_xlat10;
            let x_2981 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2984 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2978.x, x_2978.y) * vec2<f32>(x_2981.z, x_2981.w)) + -(vec2<f32>(x_2984.x, x_2984.y)));
            let x_2988 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2988.x, x_2988.x, x_2988.y, x_2988.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2991 : vec4<f32> = u_xlat12;
            let x_2993 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2991.x, x_2991.x, x_2991.z, x_2991.z) * vec4<f32>(x_2993.x, x_2993.x, x_2993.z, x_2993.z));
            let x_2996 : vec4<f32> = u_xlat13;
            let x_2998 : vec2<f32> = (vec2<f32>(x_2996.y, x_2996.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2999.x, x_2998.x, x_2999.z, x_2998.y);
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3004 : vec2<f32> = u_xlat61;
            let x_3006 : vec2<f32> = ((vec2<f32>(x_3001.x, x_3001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3004));
            let x_3007 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3006.x, x_3007.y, x_3006.y, x_3007.w);
            let x_3009 : vec2<f32> = u_xlat61;
            let x_3011 : vec2<f32> = (-(x_3009) + vec2<f32>(1.0f, 1.0f));
            let x_3012 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3014 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3014, vec2<f32>(0.0f, 0.0f));
            let x_3016 : vec2<f32> = u_xlat63;
            let x_3018 : vec2<f32> = u_xlat63;
            let x_3020 : vec4<f32> = u_xlat13;
            let x_3022 : vec2<f32> = ((-(x_3016) * x_3018) + vec2<f32>(x_3020.x, x_3020.y));
            let x_3023 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
            let x_3025 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3025, vec2<f32>(0.0f, 0.0f));
            let x_3028 : vec2<f32> = u_xlat63;
            let x_3030 : vec2<f32> = u_xlat63;
            let x_3032 : vec4<f32> = u_xlat12;
            let x_3034 : vec2<f32> = ((-(x_3028) * x_3030) + vec2<f32>(x_3032.y, x_3032.w));
            let x_3035 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3034.x, x_3035.y, x_3034.y);
            let x_3037 : vec4<f32> = u_xlat13;
            let x_3039 : vec2<f32> = (vec2<f32>(x_3037.x, x_3037.y) + vec2<f32>(2.0f, 2.0f));
            let x_3040 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3039.x, x_3039.y, x_3040.z, x_3040.w);
            let x_3042 : vec3<f32> = u_xlat37;
            let x_3044 : vec2<f32> = (vec2<f32>(x_3042.x, x_3042.z) + vec2<f32>(2.0f, 2.0f));
            let x_3045 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3045.x, x_3044.x, x_3045.z, x_3044.y);
            let x_3048 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3048 * 0.08163200318813323975f);
            let x_3051 : vec4<f32> = u_xlat12;
            let x_3053 : vec3<f32> = (vec3<f32>(x_3051.z, x_3051.x, x_3051.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3054 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3053.x, x_3053.y, x_3053.z, x_3054.w);
            let x_3056 : vec4<f32> = u_xlat13;
            let x_3058 : vec2<f32> = (vec2<f32>(x_3056.x, x_3056.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3059 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3058.x, x_3058.y, x_3059.z, x_3059.w);
            let x_3062 : f32 = u_xlat16.y;
            u_xlat15.x = x_3062;
            let x_3064 : vec2<f32> = u_xlat61;
            let x_3067 : vec2<f32> = ((vec2<f32>(x_3064.x, x_3064.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3068 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3068.x, x_3067.x, x_3068.z, x_3067.y);
            let x_3070 : vec2<f32> = u_xlat61;
            let x_3073 : vec2<f32> = ((vec2<f32>(x_3070.x, x_3070.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3073.x, x_3074.y, x_3073.y, x_3074.w);
            let x_3077 : f32 = u_xlat12.x;
            u_xlat13.y = x_3077;
            let x_3080 : f32 = u_xlat14.y;
            u_xlat13.w = x_3080;
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3083 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3082 + x_3083);
            let x_3085 : vec2<f32> = u_xlat61;
            let x_3088 : vec2<f32> = ((vec2<f32>(x_3085.y, x_3085.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3089 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3089.x, x_3088.x, x_3089.z, x_3088.y);
            let x_3091 : vec2<f32> = u_xlat61;
            let x_3094 : vec2<f32> = ((vec2<f32>(x_3091.y, x_3091.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3095 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3094.x, x_3095.y, x_3094.y, x_3095.w);
            let x_3098 : f32 = u_xlat12.y;
            u_xlat14.y = x_3098;
            let x_3100 : vec4<f32> = u_xlat14;
            let x_3101 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3100 + x_3101);
            let x_3103 : vec4<f32> = u_xlat13;
            let x_3104 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3103 / x_3104);
            let x_3106 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3106 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3108 : vec4<f32> = u_xlat14;
            let x_3109 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3108 / x_3109);
            let x_3111 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3111 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3113 : vec4<f32> = u_xlat13;
            let x_3116 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3113.w, x_3113.x, x_3113.y, x_3113.z) * vec4<f32>(x_3116.x, x_3116.x, x_3116.x, x_3116.x));
            let x_3119 : vec4<f32> = u_xlat14;
            let x_3122 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3119.x, x_3119.w, x_3119.y, x_3119.z) * vec4<f32>(x_3122.y, x_3122.y, x_3122.y, x_3122.y));
            let x_3125 : vec4<f32> = u_xlat13;
            let x_3126 : vec3<f32> = vec3<f32>(x_3125.y, x_3125.z, x_3125.w);
            let x_3127 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3126.x, x_3127.y, x_3126.y, x_3126.z);
            let x_3130 : f32 = u_xlat14.x;
            u_xlat16.y = x_3130;
            let x_3132 : vec4<f32> = u_xlat11;
            let x_3135 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3138 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3132.x, x_3132.y, x_3132.x, x_3132.y) * vec4<f32>(x_3135.x, x_3135.y, x_3135.x, x_3135.y)) + vec4<f32>(x_3138.x, x_3138.y, x_3138.z, x_3138.y));
            let x_3141 : vec4<f32> = u_xlat11;
            let x_3144 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3147 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3141.x, x_3141.y) * vec2<f32>(x_3144.x, x_3144.y)) + vec2<f32>(x_3147.w, x_3147.y));
            let x_3151 : f32 = u_xlat16.y;
            u_xlat13.y = x_3151;
            let x_3154 : f32 = u_xlat14.z;
            u_xlat16.y = x_3154;
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y) * vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y)) + vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3162.y));
            let x_3165 : vec4<f32> = u_xlat11;
            let x_3168 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3171 : vec4<f32> = u_xlat16;
            let x_3173 : vec2<f32> = ((vec2<f32>(x_3165.x, x_3165.y) * vec2<f32>(x_3168.x, x_3168.y)) + vec2<f32>(x_3171.w, x_3171.y));
            let x_3174 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3173.x, x_3173.y, x_3174.z, x_3174.w);
            let x_3177 : f32 = u_xlat16.y;
            u_xlat13.z = x_3177;
            let x_3180 : vec4<f32> = u_xlat11;
            let x_3183 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3186 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3180.x, x_3180.y, x_3180.x, x_3180.y) * vec4<f32>(x_3183.x, x_3183.y, x_3183.x, x_3183.y)) + vec4<f32>(x_3186.x, x_3186.y, x_3186.x, x_3186.z));
            let x_3190 : f32 = u_xlat14.w;
            u_xlat16.y = x_3190;
            let x_3193 : vec4<f32> = u_xlat11;
            let x_3196 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3199 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3193.x, x_3193.y, x_3193.x, x_3193.y) * vec4<f32>(x_3196.x, x_3196.y, x_3196.x, x_3196.y)) + vec4<f32>(x_3199.x, x_3199.y, x_3199.z, x_3199.y));
            let x_3203 : vec4<f32> = u_xlat11;
            let x_3206 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3209 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(x_3206.x, x_3206.y)) + vec2<f32>(x_3209.w, x_3209.y));
            let x_3213 : f32 = u_xlat16.y;
            u_xlat13.w = x_3213;
            let x_3216 : vec4<f32> = u_xlat11;
            let x_3219 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3222 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3216.x, x_3216.y) * vec2<f32>(x_3219.x, x_3219.y)) + vec2<f32>(x_3222.x, x_3222.w));
            let x_3225 : vec4<f32> = u_xlat16;
            let x_3226 : vec3<f32> = vec3<f32>(x_3225.x, x_3225.z, x_3225.w);
            let x_3227 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3226.x, x_3227.y, x_3226.y, x_3226.z);
            let x_3229 : vec4<f32> = u_xlat11;
            let x_3232 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3229.x, x_3229.y, x_3229.x, x_3229.y) * vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y)) + vec4<f32>(x_3235.x, x_3235.y, x_3235.z, x_3235.y));
            let x_3238 : vec4<f32> = u_xlat11;
            let x_3241 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3244 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3238.x, x_3238.y) * vec2<f32>(x_3241.x, x_3241.y)) + vec2<f32>(x_3244.w, x_3244.y));
            let x_3248 : f32 = u_xlat13.x;
            u_xlat14.x = x_3248;
            let x_3250 : vec4<f32> = u_xlat11;
            let x_3253 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3256 : vec4<f32> = u_xlat14;
            let x_3258 : vec2<f32> = ((vec2<f32>(x_3250.x, x_3250.y) * vec2<f32>(x_3253.x, x_3253.y)) + vec2<f32>(x_3256.x, x_3256.y));
            let x_3259 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3258.x, x_3258.y, x_3259.z, x_3259.w);
            let x_3262 : vec4<f32> = u_xlat12;
            let x_3264 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3262.x, x_3262.x, x_3262.x, x_3262.x) * x_3264);
            let x_3267 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3267.y, x_3267.y, x_3267.y, x_3267.y) * x_3269);
            let x_3272 : vec4<f32> = u_xlat12;
            let x_3274 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3272.z, x_3272.z, x_3272.z, x_3272.z) * x_3274);
            let x_3276 : vec4<f32> = u_xlat12;
            let x_3278 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3276.w, x_3276.w, x_3276.w, x_3276.w) * x_3278);
            let x_3281 : vec4<f32> = u_xlat17;
            let x_3282 : vec2<f32> = vec2<f32>(x_3281.x, x_3281.y);
            let x_3284 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec43;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat83 = x_3293;
            let x_3295 : vec4<f32> = u_xlat17;
            let x_3296 : vec2<f32> = vec2<f32>(x_3295.z, x_3295.w);
            let x_3298 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3305 : vec3<f32> = txVec44;
            let x_3307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3305.xy, x_3305.z);
            u_xlat84 = x_3307;
            let x_3308 : f32 = u_xlat84;
            let x_3310 : f32 = u_xlat22.y;
            u_xlat84 = (x_3308 * x_3310);
            let x_3313 : f32 = u_xlat22.x;
            let x_3314 : f32 = u_xlat83;
            let x_3316 : f32 = u_xlat84;
            u_xlat83 = ((x_3313 * x_3314) + x_3316);
            let x_3319 : vec2<f32> = u_xlat61;
            let x_3321 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
            let x_3328 : vec3<f32> = txVec45;
            let x_3330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
            u_xlat84 = x_3330;
            let x_3332 : f32 = u_xlat22.z;
            let x_3333 : f32 = u_xlat84;
            let x_3335 : f32 = u_xlat83;
            u_xlat83 = ((x_3332 * x_3333) + x_3335);
            let x_3338 : vec4<f32> = u_xlat20;
            let x_3339 : vec2<f32> = vec2<f32>(x_3338.x, x_3338.y);
            let x_3341 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec46;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat84 = x_3350;
            let x_3352 : f32 = u_xlat22.w;
            let x_3353 : f32 = u_xlat84;
            let x_3355 : f32 = u_xlat83;
            u_xlat83 = ((x_3352 * x_3353) + x_3355);
            let x_3358 : vec4<f32> = u_xlat18;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.x, x_3358.y);
            let x_3361 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec47;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat84 = x_3370;
            let x_3372 : f32 = u_xlat23.x;
            let x_3373 : f32 = u_xlat84;
            let x_3375 : f32 = u_xlat83;
            u_xlat83 = ((x_3372 * x_3373) + x_3375);
            let x_3378 : vec4<f32> = u_xlat18;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.z, x_3378.w);
            let x_3381 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec48;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat84 = x_3390;
            let x_3392 : f32 = u_xlat23.y;
            let x_3393 : f32 = u_xlat84;
            let x_3395 : f32 = u_xlat83;
            u_xlat83 = ((x_3392 * x_3393) + x_3395);
            let x_3398 : vec4<f32> = u_xlat19;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec49;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat84 = x_3410;
            let x_3412 : f32 = u_xlat23.z;
            let x_3413 : f32 = u_xlat84;
            let x_3415 : f32 = u_xlat83;
            u_xlat83 = ((x_3412 * x_3413) + x_3415);
            let x_3418 : vec4<f32> = u_xlat20;
            let x_3419 : vec2<f32> = vec2<f32>(x_3418.z, x_3418.w);
            let x_3421 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3419.x, x_3419.y, x_3421);
            let x_3428 : vec3<f32> = txVec50;
            let x_3430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3428.xy, x_3428.z);
            u_xlat84 = x_3430;
            let x_3432 : f32 = u_xlat23.w;
            let x_3433 : f32 = u_xlat84;
            let x_3435 : f32 = u_xlat83;
            u_xlat83 = ((x_3432 * x_3433) + x_3435);
            let x_3438 : vec4<f32> = u_xlat21;
            let x_3439 : vec2<f32> = vec2<f32>(x_3438.x, x_3438.y);
            let x_3441 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3439.x, x_3439.y, x_3441);
            let x_3448 : vec3<f32> = txVec51;
            let x_3450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3448.xy, x_3448.z);
            u_xlat84 = x_3450;
            let x_3452 : f32 = u_xlat24.x;
            let x_3453 : f32 = u_xlat84;
            let x_3455 : f32 = u_xlat83;
            u_xlat83 = ((x_3452 * x_3453) + x_3455);
            let x_3458 : vec4<f32> = u_xlat21;
            let x_3459 : vec2<f32> = vec2<f32>(x_3458.z, x_3458.w);
            let x_3461 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3459.x, x_3459.y, x_3461);
            let x_3468 : vec3<f32> = txVec52;
            let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
            u_xlat84 = x_3470;
            let x_3472 : f32 = u_xlat24.y;
            let x_3473 : f32 = u_xlat84;
            let x_3475 : f32 = u_xlat83;
            u_xlat83 = ((x_3472 * x_3473) + x_3475);
            let x_3478 : vec2<f32> = u_xlat38;
            let x_3480 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec53;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat84 = x_3489;
            let x_3491 : f32 = u_xlat24.z;
            let x_3492 : f32 = u_xlat84;
            let x_3494 : f32 = u_xlat83;
            u_xlat83 = ((x_3491 * x_3492) + x_3494);
            let x_3497 : vec2<f32> = u_xlat69;
            let x_3499 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3497.x, x_3497.y, x_3499);
            let x_3506 : vec3<f32> = txVec54;
            let x_3508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3506.xy, x_3506.z);
            u_xlat84 = x_3508;
            let x_3510 : f32 = u_xlat24.w;
            let x_3511 : f32 = u_xlat84;
            let x_3513 : f32 = u_xlat83;
            u_xlat83 = ((x_3510 * x_3511) + x_3513);
            let x_3516 : vec4<f32> = u_xlat16;
            let x_3517 : vec2<f32> = vec2<f32>(x_3516.x, x_3516.y);
            let x_3519 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec55;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat84 = x_3528;
            let x_3530 : f32 = u_xlat12.x;
            let x_3531 : f32 = u_xlat84;
            let x_3533 : f32 = u_xlat83;
            u_xlat83 = ((x_3530 * x_3531) + x_3533);
            let x_3536 : vec4<f32> = u_xlat16;
            let x_3537 : vec2<f32> = vec2<f32>(x_3536.z, x_3536.w);
            let x_3539 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3537.x, x_3537.y, x_3539);
            let x_3546 : vec3<f32> = txVec56;
            let x_3548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3546.xy, x_3546.z);
            u_xlat84 = x_3548;
            let x_3550 : f32 = u_xlat12.y;
            let x_3551 : f32 = u_xlat84;
            let x_3553 : f32 = u_xlat83;
            u_xlat83 = ((x_3550 * x_3551) + x_3553);
            let x_3556 : vec2<f32> = u_xlat64;
            let x_3558 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3556.x, x_3556.y, x_3558);
            let x_3565 : vec3<f32> = txVec57;
            let x_3567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3565.xy, x_3565.z);
            u_xlat84 = x_3567;
            let x_3569 : f32 = u_xlat12.z;
            let x_3570 : f32 = u_xlat84;
            let x_3572 : f32 = u_xlat83;
            u_xlat83 = ((x_3569 * x_3570) + x_3572);
            let x_3575 : vec4<f32> = u_xlat11;
            let x_3576 : vec2<f32> = vec2<f32>(x_3575.x, x_3575.y);
            let x_3578 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec58;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat84 = x_3587;
            let x_3589 : f32 = u_xlat12.w;
            let x_3590 : f32 = u_xlat84;
            let x_3592 : f32 = u_xlat83;
            u_xlat81 = ((x_3589 * x_3590) + x_3592);
          }
        }
      } else {
        let x_3596 : vec4<f32> = u_xlat10;
        let x_3597 : vec2<f32> = vec2<f32>(x_3596.x, x_3596.y);
        let x_3599 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3597.x, x_3597.y, x_3599);
        let x_3606 : vec3<f32> = txVec59;
        let x_3608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3606.xy, x_3606.z);
        u_xlat81 = x_3608;
      }
      let x_3609 : i32 = u_xlati78;
      let x_3611 : f32 = x_638.x_AdditionalShadowParams[x_3609].x;
      u_xlat83 = (1.0f + -(x_3611));
      let x_3614 : f32 = u_xlat81;
      let x_3615 : i32 = u_xlati78;
      let x_3617 : f32 = x_638.x_AdditionalShadowParams[x_3615].x;
      let x_3619 : f32 = u_xlat83;
      u_xlat81 = ((x_3614 * x_3617) + x_3619);
      let x_3622 : f32 = u_xlat10.z;
      u_xlatb83 = (0.0f >= x_3622);
      let x_3626 : f32 = u_xlat10.z;
      u_xlatb84 = (x_3626 >= 1.0f);
      let x_3628 : bool = u_xlatb83;
      let x_3629 : bool = u_xlatb84;
      u_xlatb83 = (x_3628 | x_3629);
      let x_3631 : bool = u_xlatb83;
      let x_3632 : f32 = u_xlat81;
      u_xlat81 = select(x_3632, 1.0f, x_3631);
    } else {
      u_xlat81 = 1.0f;
    }
    let x_3635 : f32 = u_xlat81;
    u_xlat83 = (-(x_3635) + 1.0f);
    let x_3638 : f32 = u_xlat76;
    let x_3639 : f32 = u_xlat83;
    let x_3641 : f32 = u_xlat81;
    u_xlat81 = ((x_3638 * x_3639) + x_3641);
    let x_3643 : f32 = u_xlat79;
    let x_3644 : f32 = u_xlat81;
    u_xlat79 = (x_3643 * x_3644);
    let x_3646 : vec4<f32> = u_xlat1;
    let x_3648 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_3646.x, x_3646.y, x_3646.z), vec3<f32>(x_3648.x, x_3648.y, x_3648.z));
    let x_3651 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3651, 0.0f, 1.0f);
    let x_3653 : f32 = u_xlat79;
    let x_3654 : f32 = u_xlat81;
    u_xlat79 = (x_3653 * x_3654);
    let x_3656 : f32 = u_xlat79;
    let x_3658 : i32 = u_xlati78;
    let x_3660 : vec4<f32> = x_2221.x_AdditionalLightsColor[x_3658];
    let x_3662 : vec3<f32> = (vec3<f32>(x_3656, x_3656, x_3656) * vec3<f32>(x_3660.x, x_3660.y, x_3660.z));
    let x_3663 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3662.x, x_3662.y, x_3662.z, x_3663.w);
    let x_3665 : vec4<f32> = u_xlat8;
    let x_3667 : f32 = u_xlat80;
    let x_3670 : vec3<f32> = u_xlat4;
    let x_3671 : vec3<f32> = ((vec3<f32>(x_3665.x, x_3665.y, x_3665.z) * vec3<f32>(x_3667, x_3667, x_3667)) + x_3670);
    let x_3672 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3671.x, x_3671.y, x_3671.z, x_3672.w);
    let x_3674 : vec4<f32> = u_xlat8;
    let x_3676 : vec4<f32> = u_xlat8;
    u_xlat78 = dot(vec3<f32>(x_3674.x, x_3674.y, x_3674.z), vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
    let x_3679 : f32 = u_xlat78;
    u_xlat78 = max(x_3679, 1.17549435e-38f);
    let x_3681 : f32 = u_xlat78;
    u_xlat78 = inverseSqrt(x_3681);
    let x_3683 : f32 = u_xlat78;
    let x_3685 : vec4<f32> = u_xlat8;
    let x_3687 : vec3<f32> = (vec3<f32>(x_3683, x_3683, x_3683) * vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
    let x_3688 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3687.x, x_3687.y, x_3687.z, x_3688.w);
    let x_3690 : vec4<f32> = u_xlat1;
    let x_3692 : vec4<f32> = u_xlat8;
    u_xlat78 = dot(vec3<f32>(x_3690.x, x_3690.y, x_3690.z), vec3<f32>(x_3692.x, x_3692.y, x_3692.z));
    let x_3695 : f32 = u_xlat78;
    u_xlat78 = clamp(x_3695, 0.0f, 1.0f);
    let x_3697 : vec4<f32> = u_xlat9;
    let x_3699 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3697.x, x_3697.y, x_3697.z), vec3<f32>(x_3699.x, x_3699.y, x_3699.z));
    let x_3702 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3702, 0.0f, 1.0f);
    let x_3704 : f32 = u_xlat78;
    let x_3705 : f32 = u_xlat78;
    u_xlat78 = (x_3704 * x_3705);
    let x_3707 : f32 = u_xlat78;
    let x_3709 : f32 = u_xlat7.x;
    u_xlat78 = ((x_3707 * x_3709) + 1.00001001358032226562f);
    let x_3712 : f32 = u_xlat79;
    let x_3713 : f32 = u_xlat79;
    u_xlat79 = (x_3712 * x_3713);
    let x_3715 : f32 = u_xlat78;
    let x_3716 : f32 = u_xlat78;
    u_xlat78 = (x_3715 * x_3716);
    let x_3718 : f32 = u_xlat79;
    u_xlat79 = max(x_3718, 0.10000000149011611938f);
    let x_3720 : f32 = u_xlat78;
    let x_3721 : f32 = u_xlat79;
    u_xlat78 = (x_3720 * x_3721);
    let x_3723 : f32 = u_xlat77;
    let x_3724 : f32 = u_xlat78;
    u_xlat78 = (x_3723 * x_3724);
    let x_3726 : f32 = u_xlat27;
    let x_3727 : f32 = u_xlat78;
    u_xlat78 = (x_3726 / x_3727);
    let x_3729 : vec4<f32> = u_xlat0;
    let x_3731 : f32 = u_xlat78;
    let x_3734 : vec3<f32> = u_xlat5;
    let x_3735 : vec3<f32> = ((vec3<f32>(x_3729.x, x_3729.y, x_3729.z) * vec3<f32>(x_3731, x_3731, x_3731)) + x_3734);
    let x_3736 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3735.x, x_3735.y, x_3735.z, x_3736.w);
    let x_3738 : vec4<f32> = u_xlat8;
    let x_3740 : vec4<f32> = u_xlat10;
    let x_3743 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3738.x, x_3738.y, x_3738.z) * vec3<f32>(x_3740.x, x_3740.y, x_3740.z)) + x_3743);

    continuing {
      let x_3745 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3745 + bitcast<u32>(1i));
    }
  }
  let x_3747 : vec4<f32> = u_xlat3;
  let x_3749 : f32 = u_xlat52;
  let x_3752 : vec4<f32> = u_xlat6;
  let x_3754 : vec3<f32> = ((vec3<f32>(x_3747.x, x_3747.y, x_3747.z) * vec3<f32>(x_3749, x_3749, x_3749)) + vec3<f32>(x_3752.x, x_3752.y, x_3752.z));
  let x_3755 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3754.x, x_3754.y, x_3754.z, x_3755.w);
  let x_3759 : vec3<f32> = u_xlat32;
  let x_3760 : vec4<f32> = u_xlat0;
  let x_3762 : vec3<f32> = (x_3759 + vec3<f32>(x_3760.x, x_3760.y, x_3760.z));
  let x_3763 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3762.x, x_3762.y, x_3762.z, x_3763.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


