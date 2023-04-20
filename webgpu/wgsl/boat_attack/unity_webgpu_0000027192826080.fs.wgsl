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

var<private> u_xlatb11 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat12 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb33 : bool;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat33 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb23 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat23 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlati33 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu14 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati14 : i32;

@group(1) @binding(1) var<uniform> x_1218 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlati39 : i32;

var<private> u_xlatb40 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat40 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb42 : bool;

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
  var x_867 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1350 : f32;
  var x_1360 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlatb11 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb11;
  u_xlat11 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat11;
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
  u_xlatb11 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat22 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb11;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat22;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat11 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat12.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat22;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat22 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat22;
  u_xlatb33 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat22;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat22;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat12.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat22;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat22 = x_207;
  let x_208 : bool = u_xlatb33;
  if (x_208) {
    let x_213 : f32 = u_xlat12.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat22;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat22 = x_216;
  let x_217 : f32 = u_xlat22;
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
  let x_268 : f32 = u_xlat11;
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
  u_xlat33 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat33;
  u_xlat33 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat33;
  u_xlat33 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_319);
  let x_321 : f32 = u_xlat33;
  u_xlat33 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb23.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb23.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb23.x;
  u_xlat23.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb23.y;
  u_xlat23.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat23.y;
  let x_367 : f32 = u_xlat23.x;
  u_xlat23.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat23;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat12;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat33;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat33;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb33 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat34 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat34;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb33;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb33;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb33;
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
  u_xlat6 = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_534 : vec3<f32> = vs_INTERP7;
  let x_536 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_539 : vec3<f32> = (x_534 + -(vec3<f32>(x_536.x, x_536.y, x_536.z)));
  let x_540 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_548 : vec4<f32> = u_xlat5;
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_548.x, x_548.y, x_548.z), vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_554 : vec3<f32> = u_xlat6;
  let x_555 : vec3<f32> = u_xlat6;
  u_xlat3.z = dot(x_554, x_555);
  let x_558 : vec4<f32> = u_xlat7;
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_558.x, x_558.y, x_558.z), vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_567 : vec4<f32> = u_xlat3;
  let x_569 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_567 < x_569);
  let x_572 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_572);
  let x_576 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_588);
  let x_593 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_593);
  let x_597 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_597);
  let x_600 : vec4<f32> = u_xlat3;
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) + vec3<f32>(x_602.y, x_602.z, x_602.w));
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat3;
  let x_610 : vec3<f32> = max(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_611.x, x_610.x, x_610.y, x_610.z);
  let x_613 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_613, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_618 : f32 = u_xlat33;
  u_xlat33 = (-(x_618) + 4.0f);
  let x_623 : f32 = u_xlat33;
  u_xlatu33 = u32(x_623);
  let x_627 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_627) << bitcast<u32>(2i));
  let x_630 : vec3<f32> = vs_INTERP7;
  let x_632 : i32 = u_xlati33;
  let x_635 : i32 = u_xlati33;
  let x_639 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_632 + 1i) / 4i)][((x_635 + 1i) % 4i)];
  let x_641 : vec3<f32> = (vec3<f32>(x_630.y, x_630.y, x_630.y) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : i32 = u_xlati33;
  let x_646 : i32 = u_xlati33;
  let x_649 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_644 / 4i)][(x_646 % 4i)];
  let x_651 : vec3<f32> = vs_INTERP7;
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(x_651.x, x_651.x, x_651.x)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : i32 = u_xlati33;
  let x_662 : i32 = u_xlati33;
  let x_666 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_659 + 2i) / 4i)][((x_662 + 2i) % 4i)];
  let x_668 : vec3<f32> = vs_INTERP7;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_668.z, x_668.z, x_668.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : i32 = u_xlati33;
  let x_681 : i32 = u_xlati33;
  let x_685 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_678 + 3i) / 4i)][((x_681 + 3i) % 4i)];
  let x_687 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_697 : vec2<f32> = vs_INTERP0;
  let x_699 : f32 = x_29.x_GlobalMipBias.x;
  let x_700 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_697, x_699);
  u_xlat5 = x_700;
  let x_705 : vec2<f32> = vs_INTERP0;
  let x_707 : f32 = x_29.x_GlobalMipBias.x;
  let x_708 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_705, x_707);
  u_xlat6 = vec3<f32>(x_708.x, x_708.y, x_708.z);
  let x_710 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : f32 = u_xlat33;
  u_xlat33 = (x_722 + 0.5f);
  let x_725 : f32 = u_xlat33;
  let x_727 : vec3<f32> = u_xlat6;
  let x_728 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * x_727);
  let x_729 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat5.w;
  u_xlat33 = max(x_732, 0.00009999999747378752f);
  let x_735 : vec4<f32> = u_xlat5;
  let x_737 : f32 = u_xlat33;
  let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) / vec3<f32>(x_737, x_737, x_737));
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat2;
  let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
  let x_744 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat2;
  let x_750 : vec2<f32> = clamp(vec2<f32>(x_746.x, x_746.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
  let x_754 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_754) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_759 : f32 = u_xlat33;
  let x_762 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_759) + x_762);
  let x_764 : f32 = u_xlat33;
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = (vec3<f32>(x_769.x, x_769.y, x_769.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat2;
  let x_778 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.x, x_776.x) * vec3<f32>(x_778.x, x_778.y, x_778.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_787 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_787) + 1.0f);
  let x_790 : f32 = u_xlat33;
  let x_791 : f32 = u_xlat33;
  u_xlat2.x = (x_790 * x_791);
  let x_795 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_795, 0.0078125f);
  let x_801 : f32 = u_xlat2.x;
  let x_803 : f32 = u_xlat2.x;
  u_xlat13 = (x_801 * x_803);
  let x_805 : f32 = u_xlat34;
  u_xlat34 = (x_805 + 1.0f);
  let x_807 : f32 = u_xlat34;
  u_xlat34 = min(x_807, 1.0f);
  let x_811 : f32 = u_xlat2.x;
  u_xlat35 = ((x_811 * 4.0f) + 2.0f);
  let x_816 : f32 = u_xlat2.z;
  u_xlat24 = min(x_816, 1.0f);
  let x_820 : vec4<f32> = u_xlat3;
  let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
  let x_823 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_821.x, x_821.y, x_823);
  let x_835 : vec3<f32> = txVec0;
  let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
  u_xlat3.x = x_837;
  let x_842 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat3.x;
  let x_849 : f32 = x_508.x_MainLightShadowParams.x;
  let x_852 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_847 * x_849) + x_852);
  let x_857 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_857);
  let x_861 : f32 = u_xlat3.z;
  u_xlatb25 = (x_861 >= 1.0f);
  let x_863 : bool = u_xlatb25;
  let x_864 : bool = u_xlatb14;
  u_xlatb14 = (x_863 | x_864);
  let x_866 : bool = u_xlatb14;
  if (x_866) {
    x_867 = 1.0f;
  } else {
    let x_872 : f32 = u_xlat3.x;
    x_867 = x_872;
  }
  let x_873 : f32 = x_867;
  u_xlat3.x = x_873;
  let x_875 : vec3<f32> = vs_INTERP7;
  let x_877 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat14 = (x_875 + -(x_877));
  let x_880 : vec3<f32> = u_xlat14;
  let x_881 : vec3<f32> = u_xlat14;
  u_xlat14.x = dot(x_880, x_881);
  let x_886 : f32 = u_xlat14.x;
  let x_888 : f32 = x_508.x_MainLightShadowParams.z;
  let x_891 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat25 = ((x_886 * x_888) + x_891);
  let x_893 : f32 = u_xlat25;
  u_xlat25 = clamp(x_893, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat3.x;
  u_xlat36 = (-(x_897) + 1.0f);
  let x_900 : f32 = u_xlat25;
  let x_901 : f32 = u_xlat36;
  let x_904 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_900 * x_901) + x_904);
  let x_907 : vec3<f32> = u_xlat4;
  let x_909 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(-(x_907), vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : f32 = u_xlat25;
  let x_913 : f32 = u_xlat25;
  u_xlat25 = (x_912 + x_913);
  let x_915 : vec4<f32> = u_xlat1;
  let x_917 : f32 = u_xlat25;
  let x_921 : vec3<f32> = u_xlat4;
  let x_923 : vec3<f32> = ((vec3<f32>(x_915.x, x_915.y, x_915.z) * -(vec3<f32>(x_917, x_917, x_917))) + -(x_921));
  let x_924 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat1;
  let x_928 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_926.x, x_926.y, x_926.z), x_928);
  let x_930 : f32 = u_xlat25;
  u_xlat25 = clamp(x_930, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat25;
  u_xlat25 = (-(x_932) + 1.0f);
  let x_935 : f32 = u_xlat25;
  let x_936 : f32 = u_xlat25;
  u_xlat25 = (x_935 * x_936);
  let x_938 : f32 = u_xlat25;
  let x_939 : f32 = u_xlat25;
  u_xlat25 = (x_938 * x_939);
  let x_941 : f32 = u_xlat33;
  u_xlat36 = ((-(x_941) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_947 : f32 = u_xlat33;
  let x_948 : f32 = u_xlat36;
  u_xlat33 = (x_947 * x_948);
  let x_950 : f32 = u_xlat33;
  u_xlat33 = (x_950 * 6.0f);
  let x_960 : vec4<f32> = u_xlat7;
  let x_962 : f32 = u_xlat33;
  let x_963 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_960.x, x_960.y, x_960.z), x_962);
  u_xlat7 = x_963;
  let x_965 : f32 = u_xlat7.w;
  u_xlat33 = (x_965 + -1.0f);
  let x_968 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_969 : f32 = u_xlat33;
  u_xlat33 = ((x_968 * x_969) + 1.0f);
  let x_972 : f32 = u_xlat33;
  u_xlat33 = max(x_972, 0.0f);
  let x_974 : f32 = u_xlat33;
  u_xlat33 = log2(x_974);
  let x_976 : f32 = u_xlat33;
  let x_978 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_976 * x_978);
  let x_980 : f32 = u_xlat33;
  u_xlat33 = exp2(x_980);
  let x_982 : f32 = u_xlat33;
  let x_984 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_982 * x_984);
  let x_986 : vec4<f32> = u_xlat7;
  let x_988 : f32 = u_xlat33;
  let x_990 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(x_988, x_988, x_988));
  let x_991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_994.x, x_994.x) * vec2<f32>(x_996.x, x_996.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1002 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_1002);
  let x_1005 : vec4<f32> = u_xlat0;
  let x_1008 : f32 = u_xlat34;
  u_xlat19 = (-(vec3<f32>(x_1005.x, x_1005.y, x_1005.z)) + vec3<f32>(x_1008, x_1008, x_1008));
  let x_1011 : f32 = u_xlat25;
  let x_1013 : vec3<f32> = u_xlat19;
  let x_1015 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1011, x_1011, x_1011) * x_1013) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : f32 = u_xlat33;
  let x_1020 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1018, x_1018, x_1018) * x_1020);
  let x_1022 : vec4<f32> = u_xlat7;
  let x_1024 : vec3<f32> = u_xlat19;
  let x_1025 : vec3<f32> = (vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * x_1024);
  let x_1026 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat5;
  let x_1030 : vec3<f32> = u_xlat6;
  let x_1032 : vec4<f32> = u_xlat7;
  let x_1034 : vec3<f32> = ((vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * x_1030) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1038 : f32 = u_xlat3.x;
  let x_1040 : f32 = x_349.unity_LightData.z;
  u_xlat33 = (x_1038 * x_1040);
  let x_1042 : vec4<f32> = u_xlat1;
  let x_1045 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1048, 0.0f, 1.0f);
  let x_1050 : f32 = u_xlat33;
  let x_1051 : f32 = u_xlat34;
  u_xlat33 = (x_1050 * x_1051);
  let x_1053 : f32 = u_xlat33;
  let x_1056 : vec4<f32> = x_29.x_MainLightColor;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1058.x, x_1059.y, x_1058.y, x_1058.z);
  let x_1061 : vec3<f32> = u_xlat4;
  let x_1063 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1065 : vec3<f32> = (x_1061 + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec4<f32> = u_xlat7;
  let x_1070 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat33;
  u_xlat33 = max(x_1073, 1.17549435e-38f);
  let x_1076 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1076);
  let x_1078 : f32 = u_xlat33;
  let x_1080 : vec4<f32> = u_xlat7;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat1;
  let x_1087 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1085.x, x_1085.y, x_1085.z), vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1090, 0.0f, 1.0f);
  let x_1093 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1095 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1098, 0.0f, 1.0f);
  let x_1100 : f32 = u_xlat33;
  let x_1101 : f32 = u_xlat33;
  u_xlat33 = (x_1100 * x_1101);
  let x_1103 : f32 = u_xlat33;
  let x_1105 : f32 = u_xlat8.x;
  u_xlat33 = ((x_1103 * x_1105) + 1.00001001358032226562f);
  let x_1109 : f32 = u_xlat34;
  let x_1110 : f32 = u_xlat34;
  u_xlat34 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat33;
  let x_1113 : f32 = u_xlat33;
  u_xlat33 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat34;
  u_xlat34 = max(x_1115, 0.10000000149011611938f);
  let x_1118 : f32 = u_xlat33;
  let x_1119 : f32 = u_xlat34;
  u_xlat33 = (x_1118 * x_1119);
  let x_1121 : f32 = u_xlat35;
  let x_1122 : f32 = u_xlat33;
  u_xlat33 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat13;
  let x_1125 : f32 = u_xlat33;
  u_xlat33 = (x_1124 / x_1125);
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1129 : f32 = u_xlat33;
  let x_1132 : vec3<f32> = u_xlat6;
  let x_1133 : vec3<f32> = ((vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * vec3<f32>(x_1129, x_1129, x_1129)) + x_1132);
  let x_1134 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : vec4<f32> = u_xlat3;
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1140 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.z, x_1136.w) * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1140.z);
  let x_1144 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1146 : f32 = x_349.unity_LightData.y;
  u_xlat33 = min(x_1144, x_1146);
  let x_1148 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1148));
  let x_1152 : f32 = u_xlat14.x;
  let x_1155 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_1158 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_1152 * x_1155) + x_1158);
  let x_1160 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1160, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1172 : u32 = u_xlatu_loop_1;
    let x_1173 : u32 = u_xlatu33;
    if ((x_1172 < x_1173)) {
    } else {
      break;
    }
    let x_1176 : u32 = u_xlatu_loop_1;
    u_xlatu14 = (x_1176 >> 2u);
    let x_1179 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1179 & 3u));
    let x_1182 : u32 = u_xlatu14;
    let x_1185 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1182)];
    let x_1195 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1200 : vec4<u32> = indexable[x_1195];
    u_xlat14.x = dot(x_1185, bitcast<vec4<f32>>(x_1200));
    let x_1206 : f32 = u_xlat14.x;
    u_xlati14 = i32(x_1206);
    let x_1208 : vec3<f32> = vs_INTERP7;
    let x_1219 : i32 = u_xlati14;
    let x_1221 : vec4<f32> = x_1218.x_AdditionalLightsPosition[x_1219];
    let x_1224 : i32 = u_xlati14;
    let x_1226 : vec4<f32> = x_1218.x_AdditionalLightsPosition[x_1224];
    u_xlat19 = ((-(x_1208) * vec3<f32>(x_1221.w, x_1221.w, x_1221.w)) + vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
    let x_1230 : vec3<f32> = u_xlat19;
    let x_1231 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1230, x_1231);
    let x_1233 : f32 = u_xlat37;
    u_xlat37 = max(x_1233, 0.00006103515625f);
    let x_1237 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_1237);
    let x_1240 : f32 = u_xlat38;
    let x_1242 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1240, x_1240, x_1240) * x_1242);
    let x_1245 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_1245);
    let x_1247 : f32 = u_xlat37;
    let x_1248 : i32 = u_xlati14;
    let x_1250 : f32 = x_1218.x_AdditionalLightsAttenuation[x_1248].x;
    u_xlat37 = (x_1247 * x_1250);
    let x_1252 : f32 = u_xlat37;
    let x_1254 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1252) * x_1254) + 1.0f);
    let x_1257 : f32 = u_xlat37;
    u_xlat37 = max(x_1257, 0.0f);
    let x_1259 : f32 = u_xlat37;
    let x_1260 : f32 = u_xlat37;
    u_xlat37 = (x_1259 * x_1260);
    let x_1262 : f32 = u_xlat37;
    let x_1263 : f32 = u_xlat39;
    u_xlat37 = (x_1262 * x_1263);
    let x_1265 : i32 = u_xlati14;
    let x_1267 : vec4<f32> = x_1218.x_AdditionalLightsSpotDir[x_1265];
    let x_1269 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), x_1269);
    let x_1271 : f32 = u_xlat39;
    let x_1272 : i32 = u_xlati14;
    let x_1274 : f32 = x_1218.x_AdditionalLightsAttenuation[x_1272].z;
    let x_1276 : i32 = u_xlati14;
    let x_1278 : f32 = x_1218.x_AdditionalLightsAttenuation[x_1276].w;
    u_xlat39 = ((x_1271 * x_1274) + x_1278);
    let x_1280 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1280, 0.0f, 1.0f);
    let x_1282 : f32 = u_xlat39;
    let x_1283 : f32 = u_xlat39;
    u_xlat39 = (x_1282 * x_1283);
    let x_1285 : f32 = u_xlat37;
    let x_1286 : f32 = u_xlat39;
    u_xlat37 = (x_1285 * x_1286);
    let x_1290 : i32 = u_xlati14;
    let x_1292 : f32 = x_508.x_AdditionalShadowParams[x_1290].w;
    u_xlati39 = i32(x_1292);
    let x_1295 : i32 = u_xlati39;
    u_xlatb40 = (x_1295 >= 0i);
    let x_1297 : bool = u_xlatb40;
    if (x_1297) {
      let x_1301 : i32 = u_xlati14;
      let x_1303 : f32 = x_508.x_AdditionalShadowParams[x_1301].z;
      u_xlatb40 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1303, x_1303, x_1303, x_1303))));
      let x_1307 : bool = u_xlatb40;
      if (x_1307) {
        let x_1311 : vec3<f32> = u_xlat9;
        let x_1314 : vec3<f32> = u_xlat9;
        let x_1317 : vec4<bool> = (abs(vec4<f32>(x_1311.z, x_1311.z, x_1311.y, x_1311.z)) >= abs(vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.x)));
        let x_1319 : vec3<bool> = vec3<bool>(x_1317.x, x_1317.y, x_1317.z);
        let x_1320 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
        let x_1323 : bool = u_xlatb10.y;
        let x_1325 : bool = u_xlatb10.x;
        u_xlatb40 = (x_1323 & x_1325);
        let x_1327 : vec3<f32> = u_xlat9;
        let x_1330 : vec4<bool> = (-(vec4<f32>(x_1327.z, x_1327.y, x_1327.z, x_1327.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1331 : vec3<bool> = vec3<bool>(x_1330.x, x_1330.y, x_1330.w);
        let x_1332 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1331.x, x_1331.y, x_1332.z, x_1331.z);
        let x_1336 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1336);
        let x_1341 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1341);
        let x_1346 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1346);
        let x_1349 : bool = u_xlatb10.z;
        if (x_1349) {
          let x_1354 : f32 = u_xlat10.y;
          x_1350 = x_1354;
        } else {
          let x_1356 : f32 = u_xlat42;
          x_1350 = x_1356;
        }
        let x_1357 : f32 = x_1350;
        u_xlat42 = x_1357;
        let x_1359 : bool = u_xlatb40;
        if (x_1359) {
          let x_1364 : f32 = u_xlat10.x;
          x_1360 = x_1364;
        } else {
          let x_1366 : f32 = u_xlat42;
          x_1360 = x_1366;
        }
        let x_1367 : f32 = x_1360;
        u_xlat40 = x_1367;
        let x_1368 : i32 = u_xlati14;
        let x_1370 : f32 = x_508.x_AdditionalShadowParams[x_1368].w;
        u_xlat42 = trunc(x_1370);
        let x_1372 : f32 = u_xlat40;
        let x_1373 : f32 = u_xlat42;
        u_xlat40 = (x_1372 + x_1373);
        let x_1375 : f32 = u_xlat40;
        u_xlati39 = i32(x_1375);
      }
      let x_1377 : i32 = u_xlati39;
      u_xlati39 = (x_1377 << bitcast<u32>(2i));
      let x_1379 : vec3<f32> = vs_INTERP7;
      let x_1382 : i32 = u_xlati39;
      let x_1385 : i32 = u_xlati39;
      let x_1389 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1382 + 1i) / 4i)][((x_1385 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1379.y, x_1379.y, x_1379.y, x_1379.y) * x_1389);
      let x_1391 : i32 = u_xlati39;
      let x_1393 : i32 = u_xlati39;
      let x_1396 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_1391 / 4i)][(x_1393 % 4i)];
      let x_1397 : vec3<f32> = vs_INTERP7;
      let x_1400 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1396 * vec4<f32>(x_1397.x, x_1397.x, x_1397.x, x_1397.x)) + x_1400);
      let x_1402 : i32 = u_xlati39;
      let x_1405 : i32 = u_xlati39;
      let x_1409 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1402 + 2i) / 4i)][((x_1405 + 2i) % 4i)];
      let x_1410 : vec3<f32> = vs_INTERP7;
      let x_1413 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1409 * vec4<f32>(x_1410.z, x_1410.z, x_1410.z, x_1410.z)) + x_1413);
      let x_1415 : vec4<f32> = u_xlat10;
      let x_1416 : i32 = u_xlati39;
      let x_1419 : i32 = u_xlati39;
      let x_1423 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1416 + 3i) / 4i)][((x_1419 + 3i) % 4i)];
      u_xlat10 = (x_1415 + x_1423);
      let x_1425 : vec4<f32> = u_xlat10;
      let x_1427 : vec4<f32> = u_xlat10;
      let x_1429 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) / vec3<f32>(x_1427.w, x_1427.w, x_1427.w));
      let x_1430 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
      let x_1433 : vec4<f32> = u_xlat10;
      let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
      let x_1436 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
      let x_1444 : vec3<f32> = txVec1;
      let x_1446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
      u_xlat39 = x_1446;
      let x_1447 : i32 = u_xlati14;
      let x_1449 : f32 = x_508.x_AdditionalShadowParams[x_1447].x;
      u_xlat40 = (1.0f + -(x_1449));
      let x_1452 : f32 = u_xlat39;
      let x_1453 : i32 = u_xlati14;
      let x_1455 : f32 = x_508.x_AdditionalShadowParams[x_1453].x;
      let x_1457 : f32 = u_xlat40;
      u_xlat39 = ((x_1452 * x_1455) + x_1457);
      let x_1460 : f32 = u_xlat10.z;
      u_xlatb40 = (0.0f >= x_1460);
      let x_1464 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1464 >= 1.0f);
      let x_1466 : bool = u_xlatb40;
      let x_1467 : bool = u_xlatb42;
      u_xlatb40 = (x_1466 | x_1467);
      let x_1469 : bool = u_xlatb40;
      let x_1470 : f32 = u_xlat39;
      u_xlat39 = select(x_1470, 1.0f, x_1469);
    } else {
      u_xlat39 = 1.0f;
    }
    let x_1473 : f32 = u_xlat39;
    u_xlat40 = (-(x_1473) + 1.0f);
    let x_1476 : f32 = u_xlat34;
    let x_1477 : f32 = u_xlat40;
    let x_1479 : f32 = u_xlat39;
    u_xlat39 = ((x_1476 * x_1477) + x_1479);
    let x_1481 : f32 = u_xlat37;
    let x_1482 : f32 = u_xlat39;
    u_xlat37 = (x_1481 * x_1482);
    let x_1484 : vec4<f32> = u_xlat1;
    let x_1486 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1484.x, x_1484.y, x_1484.z), x_1486);
    let x_1488 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1488, 0.0f, 1.0f);
    let x_1490 : f32 = u_xlat37;
    let x_1491 : f32 = u_xlat39;
    u_xlat37 = (x_1490 * x_1491);
    let x_1493 : f32 = u_xlat37;
    let x_1495 : i32 = u_xlati14;
    let x_1497 : vec4<f32> = x_1218.x_AdditionalLightsColor[x_1495];
    let x_1499 : vec3<f32> = (vec3<f32>(x_1493, x_1493, x_1493) * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
    let x_1502 : vec3<f32> = u_xlat19;
    let x_1503 : f32 = u_xlat38;
    let x_1506 : vec3<f32> = u_xlat4;
    u_xlat19 = ((x_1502 * vec3<f32>(x_1503, x_1503, x_1503)) + x_1506);
    let x_1508 : vec3<f32> = u_xlat19;
    let x_1509 : vec3<f32> = u_xlat19;
    u_xlat14.x = dot(x_1508, x_1509);
    let x_1513 : f32 = u_xlat14.x;
    u_xlat14.x = max(x_1513, 1.17549435e-38f);
    let x_1517 : f32 = u_xlat14.x;
    u_xlat14.x = inverseSqrt(x_1517);
    let x_1520 : vec3<f32> = u_xlat14;
    let x_1522 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1520.x, x_1520.x, x_1520.x) * x_1522);
    let x_1524 : vec4<f32> = u_xlat1;
    let x_1526 : vec3<f32> = u_xlat19;
    u_xlat14.x = dot(vec3<f32>(x_1524.x, x_1524.y, x_1524.z), x_1526);
    let x_1530 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_1530, 0.0f, 1.0f);
    let x_1533 : vec3<f32> = u_xlat9;
    let x_1534 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1533, x_1534);
    let x_1536 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1536, 0.0f, 1.0f);
    let x_1539 : f32 = u_xlat14.x;
    let x_1541 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1539 * x_1541);
    let x_1545 : f32 = u_xlat14.x;
    let x_1547 : f32 = u_xlat8.x;
    u_xlat14.x = ((x_1545 * x_1547) + 1.00001001358032226562f);
    let x_1551 : f32 = u_xlat37;
    let x_1552 : f32 = u_xlat37;
    u_xlat37 = (x_1551 * x_1552);
    let x_1555 : f32 = u_xlat14.x;
    let x_1557 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1555 * x_1557);
    let x_1560 : f32 = u_xlat37;
    u_xlat37 = max(x_1560, 0.10000000149011611938f);
    let x_1563 : f32 = u_xlat14.x;
    let x_1564 : f32 = u_xlat37;
    u_xlat14.x = (x_1563 * x_1564);
    let x_1567 : f32 = u_xlat35;
    let x_1569 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1567 * x_1569);
    let x_1572 : f32 = u_xlat13;
    let x_1574 : f32 = u_xlat14.x;
    u_xlat14.x = (x_1572 / x_1574);
    let x_1577 : vec4<f32> = u_xlat0;
    let x_1579 : vec3<f32> = u_xlat14;
    let x_1582 : vec3<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1577.x, x_1577.y, x_1577.z) * vec3<f32>(x_1579.x, x_1579.x, x_1579.x)) + x_1582);
    let x_1584 : vec3<f32> = u_xlat19;
    let x_1585 : vec4<f32> = u_xlat10;
    let x_1588 : vec4<f32> = u_xlat7;
    let x_1590 : vec3<f32> = ((x_1584 * vec3<f32>(x_1585.x, x_1585.y, x_1585.z)) + vec3<f32>(x_1588.x, x_1588.y, x_1588.z));
    let x_1591 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1590.x, x_1590.y, x_1590.z, x_1591.w);

    continuing {
      let x_1593 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1593 + bitcast<u32>(1i));
    }
  }
  let x_1595 : vec4<f32> = u_xlat5;
  let x_1597 : f32 = u_xlat24;
  let x_1600 : vec4<f32> = u_xlat3;
  let x_1602 : vec3<f32> = ((vec3<f32>(x_1595.x, x_1595.y, x_1595.z) * vec3<f32>(x_1597, x_1597, x_1597)) + vec3<f32>(x_1600.x, x_1600.z, x_1600.w));
  let x_1603 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1607 : vec4<f32> = u_xlat7;
  let x_1609 : vec4<f32> = u_xlat0;
  let x_1611 : vec3<f32> = (vec3<f32>(x_1607.x, x_1607.y, x_1607.z) + vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
  let x_1612 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
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


