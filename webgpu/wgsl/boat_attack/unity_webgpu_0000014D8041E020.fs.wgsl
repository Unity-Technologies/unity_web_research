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

var<private> u_xlatb11 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat12 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb33 : bool;

@group(0) @binding(5) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat33 : f32;

@group(0) @binding(4) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb23 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat23 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlati33 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatu15 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati15 : i32;

@group(1) @binding(1) var<uniform> x_1300 : AdditionalLights;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu13 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_926 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1433 : f32;
  var x_1443 : f32;
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
  u_xlat35 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat35;
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
  let x_476 : bool = u_xlatb33;
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
  u_xlat33 = dot(x_607, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_612 : f32 = u_xlat33;
  u_xlat33 = (-(x_612) + 4.0f);
  let x_617 : f32 = u_xlat33;
  u_xlatu33 = u32(x_617);
  let x_621 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_621) << bitcast<u32>(2i));
  let x_624 : vec3<f32> = vs_INTERP7;
  let x_626 : i32 = u_xlati33;
  let x_629 : i32 = u_xlati33;
  let x_633 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_626 + 1i) / 4i)][((x_629 + 1i) % 4i)];
  let x_635 : vec3<f32> = (vec3<f32>(x_624.y, x_624.y, x_624.y) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : i32 = u_xlati33;
  let x_640 : i32 = u_xlati33;
  let x_643 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_638 / 4i)][(x_640 % 4i)];
  let x_645 : vec3<f32> = vs_INTERP7;
  let x_648 : vec4<f32> = u_xlat4;
  let x_650 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645.x, x_645.x, x_645.x)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati33;
  let x_656 : i32 = u_xlati33;
  let x_660 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_653 + 2i) / 4i)][((x_656 + 2i) % 4i)];
  let x_662 : vec3<f32> = vs_INTERP7;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662.z, x_662.z, x_662.z)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat4;
  let x_672 : i32 = u_xlati33;
  let x_675 : i32 = u_xlati33;
  let x_679 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_672 + 3i) / 4i)][((x_675 + 3i) % 4i)];
  let x_681 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = vs_INTERP7.y;
  let x_687 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat33 = (x_685 * x_687);
  let x_690 : f32 = x_29.unity_MatrixV[0i].z;
  let x_692 : f32 = vs_INTERP7.x;
  let x_694 : f32 = u_xlat33;
  u_xlat33 = ((x_690 * x_692) + x_694);
  let x_697 : f32 = x_29.unity_MatrixV[2i].z;
  let x_699 : f32 = vs_INTERP7.z;
  let x_701 : f32 = u_xlat33;
  u_xlat33 = ((x_697 * x_699) + x_701);
  let x_703 : f32 = u_xlat33;
  let x_705 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat33 = (x_703 + x_705);
  let x_707 : f32 = u_xlat33;
  let x_710 : f32 = x_29.x_ProjectionParams.y;
  u_xlat33 = (-(x_707) + -(x_710));
  let x_713 : f32 = u_xlat33;
  u_xlat33 = max(x_713, 0.0f);
  let x_715 : f32 = u_xlat33;
  let x_718 : f32 = x_29.unity_FogParams.x;
  u_xlat33 = (x_715 * x_718);
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
  u_xlat34 = (x_764 * x_766);
  let x_769 : f32 = u_xlat1.x;
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat34;
  u_xlat34 = ((x_769 * x_771) + -(x_773));
  let x_778 : vec4<f32> = x_349.unity_SHC;
  let x_780 : f32 = u_xlat34;
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
  u_xlat34 = ((-(x_812) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_817 : f32 = u_xlat34;
  u_xlat35 = (-(x_817) + 1.0f);
  let x_820 : vec4<f32> = u_xlat0;
  let x_822 : f32 = u_xlat34;
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
  u_xlat34 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat34;
  let x_849 : f32 = u_xlat34;
  u_xlat2.x = (x_848 * x_849);
  let x_853 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_853, 0.0078125f);
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat2.x;
  u_xlat36 = (x_859 * x_861);
  let x_864 : f32 = u_xlat35;
  let x_866 : f32 = u_xlat2.y;
  u_xlat13 = (x_864 + x_866);
  let x_868 : f32 = u_xlat13;
  u_xlat13 = min(x_868, 1.0f);
  let x_871 : f32 = u_xlat2.x;
  u_xlat35 = ((x_871 * 4.0f) + 2.0f);
  let x_876 : f32 = u_xlat2.z;
  u_xlat24 = min(x_876, 1.0f);
  let x_879 : vec4<f32> = u_xlat4;
  let x_880 : vec2<f32> = vec2<f32>(x_879.x, x_879.y);
  let x_882 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_880.x, x_880.y, x_882);
  let x_894 : vec3<f32> = txVec0;
  let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
  u_xlat4.x = x_896;
  let x_901 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_901) + 1.0f);
  let x_906 : f32 = u_xlat4.x;
  let x_908 : f32 = x_497.x_MainLightShadowParams.x;
  let x_911 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_906 * x_908) + x_911);
  let x_916 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_916);
  let x_920 : f32 = u_xlat4.z;
  u_xlatb26 = (x_920 >= 1.0f);
  let x_922 : bool = u_xlatb26;
  let x_923 : bool = u_xlatb15;
  u_xlatb15 = (x_922 | x_923);
  let x_925 : bool = u_xlatb15;
  if (x_925) {
    x_926 = 1.0f;
  } else {
    let x_931 : f32 = u_xlat4.x;
    x_926 = x_931;
  }
  let x_932 : f32 = x_926;
  u_xlat4.x = x_932;
  let x_934 : vec3<f32> = vs_INTERP7;
  let x_936 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (x_934 + -(x_936));
  let x_939 : vec3<f32> = u_xlat15;
  let x_940 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_939, x_940);
  let x_945 : f32 = u_xlat15.x;
  let x_947 : f32 = x_497.x_MainLightShadowParams.z;
  let x_950 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat26 = ((x_945 * x_947) + x_950);
  let x_952 : f32 = u_xlat26;
  u_xlat26 = clamp(x_952, 0.0f, 1.0f);
  let x_956 : f32 = u_xlat4.x;
  u_xlat37 = (-(x_956) + 1.0f);
  let x_959 : f32 = u_xlat26;
  let x_960 : f32 = u_xlat37;
  let x_963 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_959 * x_960) + x_963);
  let x_966 : vec4<f32> = u_xlat3;
  let x_969 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(-(vec3<f32>(x_966.x, x_966.y, x_966.z)), vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : f32 = u_xlat26;
  let x_973 : f32 = u_xlat26;
  u_xlat26 = (x_972 + x_973);
  let x_975 : vec4<f32> = u_xlat1;
  let x_977 : f32 = u_xlat26;
  let x_981 : vec4<f32> = u_xlat3;
  let x_984 : vec3<f32> = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * -(vec3<f32>(x_977, x_977, x_977))) + -(vec3<f32>(x_981.x, x_981.y, x_981.z)));
  let x_985 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat1;
  let x_989 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_987.x, x_987.y, x_987.z), vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : f32 = u_xlat26;
  u_xlat26 = clamp(x_992, 0.0f, 1.0f);
  let x_994 : f32 = u_xlat26;
  u_xlat26 = (-(x_994) + 1.0f);
  let x_997 : f32 = u_xlat26;
  let x_998 : f32 = u_xlat26;
  u_xlat26 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat26;
  let x_1001 : f32 = u_xlat26;
  u_xlat26 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat34;
  u_xlat37 = ((-(x_1003) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1009 : f32 = u_xlat34;
  let x_1010 : f32 = u_xlat37;
  u_xlat34 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat34;
  u_xlat34 = (x_1012 * 6.0f);
  let x_1022 : vec4<f32> = u_xlat7;
  let x_1024 : f32 = u_xlat34;
  let x_1025 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1022.x, x_1022.y, x_1022.z), x_1024);
  u_xlat7 = x_1025;
  let x_1027 : f32 = u_xlat7.w;
  u_xlat34 = (x_1027 + -1.0f);
  let x_1030 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1031 : f32 = u_xlat34;
  u_xlat34 = ((x_1030 * x_1031) + 1.0f);
  let x_1034 : f32 = u_xlat34;
  u_xlat34 = max(x_1034, 0.0f);
  let x_1036 : f32 = u_xlat34;
  u_xlat34 = log2(x_1036);
  let x_1038 : f32 = u_xlat34;
  let x_1040 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1038 * x_1040);
  let x_1042 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1042);
  let x_1044 : f32 = u_xlat34;
  let x_1046 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1044 * x_1046);
  let x_1048 : vec4<f32> = u_xlat7;
  let x_1050 : f32 = u_xlat34;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.y, x_1048.z) * vec3<f32>(x_1050, x_1050, x_1050));
  let x_1053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1058 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_1056.x, x_1056.x) * vec2<f32>(x_1058.x, x_1058.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1064 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_1064);
  let x_1067 : vec4<f32> = u_xlat0;
  let x_1070 : f32 = u_xlat13;
  u_xlat19 = (-(vec3<f32>(x_1067.x, x_1067.y, x_1067.z)) + vec3<f32>(x_1070, x_1070, x_1070));
  let x_1073 : f32 = u_xlat26;
  let x_1075 : vec3<f32> = u_xlat19;
  let x_1077 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_1073, x_1073, x_1073) * x_1075) + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : f32 = u_xlat34;
  let x_1082 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1080, x_1080, x_1080) * x_1082);
  let x_1084 : vec4<f32> = u_xlat7;
  let x_1086 : vec3<f32> = u_xlat19;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * x_1086);
  let x_1088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat5;
  let x_1092 : vec4<f32> = u_xlat6;
  let x_1095 : vec4<f32> = u_xlat7;
  let x_1097 : vec3<f32> = ((vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z)) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1101 : f32 = u_xlat4.x;
  let x_1103 : f32 = x_349.unity_LightData.z;
  u_xlat34 = (x_1101 * x_1103);
  let x_1105 : vec4<f32> = u_xlat1;
  let x_1108 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1113 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1113, 0.0f, 1.0f);
  let x_1116 : f32 = u_xlat34;
  let x_1118 : f32 = u_xlat2.x;
  u_xlat34 = (x_1116 * x_1118);
  let x_1120 : f32 = u_xlat34;
  let x_1123 : vec4<f32> = x_29.x_MainLightColor;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1120, x_1120, x_1120) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1125.z);
  let x_1128 : vec4<f32> = u_xlat3;
  let x_1131 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1133 : vec3<f32> = (vec3<f32>(x_1128.x, x_1128.y, x_1128.z) + vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : vec4<f32> = u_xlat7;
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1136.x, x_1136.y, x_1136.z), vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : f32 = u_xlat34;
  u_xlat34 = max(x_1141, 1.17549435e-38f);
  let x_1144 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1144);
  let x_1146 : f32 = u_xlat34;
  let x_1148 : vec4<f32> = u_xlat7;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat1;
  let x_1155 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1153.x, x_1153.y, x_1153.z), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1158, 0.0f, 1.0f);
  let x_1161 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1163 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1161.x, x_1161.y, x_1161.z), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1168 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1168, 0.0f, 1.0f);
  let x_1171 : f32 = u_xlat34;
  let x_1172 : f32 = u_xlat34;
  u_xlat34 = (x_1171 * x_1172);
  let x_1174 : f32 = u_xlat34;
  let x_1176 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1174 * x_1176) + 1.00001001358032226562f);
  let x_1181 : f32 = u_xlat2.x;
  let x_1183 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1181 * x_1183);
  let x_1186 : f32 = u_xlat34;
  let x_1187 : f32 = u_xlat34;
  u_xlat34 = (x_1186 * x_1187);
  let x_1190 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1190, 0.10000000149011611938f);
  let x_1194 : f32 = u_xlat34;
  let x_1196 : f32 = u_xlat2.x;
  u_xlat34 = (x_1194 * x_1196);
  let x_1198 : f32 = u_xlat35;
  let x_1199 : f32 = u_xlat34;
  u_xlat34 = (x_1198 * x_1199);
  let x_1201 : f32 = u_xlat36;
  let x_1202 : f32 = u_xlat34;
  u_xlat34 = (x_1201 / x_1202);
  let x_1204 : vec4<f32> = u_xlat0;
  let x_1206 : f32 = u_xlat34;
  let x_1209 : vec4<f32> = u_xlat6;
  let x_1211 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(x_1206, x_1206, x_1206)) + vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
  let x_1212 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1214 : vec4<f32> = u_xlat4;
  let x_1216 : vec4<f32> = u_xlat7;
  let x_1218 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.z, x_1214.w) * vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1218.x, x_1219.y, x_1218.y, x_1218.z);
  let x_1222 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1224 : f32 = x_349.unity_LightData.y;
  u_xlat34 = min(x_1222, x_1224);
  let x_1227 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1227));
  let x_1231 : f32 = u_xlat15.x;
  let x_1234 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_1237 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1231 * x_1234) + x_1237);
  let x_1241 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1241, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1254 : u32 = u_xlatu_loop_1;
    let x_1255 : u32 = u_xlatu34;
    if ((x_1254 < x_1255)) {
    } else {
      break;
    }
    let x_1258 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_1258 >> 2u);
    let x_1261 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1261 & 3u));
    let x_1264 : u32 = u_xlatu15;
    let x_1267 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1264)];
    let x_1277 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1282 : vec4<u32> = indexable[x_1277];
    u_xlat15.x = dot(x_1267, bitcast<vec4<f32>>(x_1282));
    let x_1288 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_1288);
    let x_1290 : vec3<f32> = vs_INTERP7;
    let x_1301 : i32 = u_xlati15;
    let x_1303 : vec4<f32> = x_1300.x_AdditionalLightsPosition[x_1301];
    let x_1306 : i32 = u_xlati15;
    let x_1308 : vec4<f32> = x_1300.x_AdditionalLightsPosition[x_1306];
    u_xlat19 = ((-(x_1290) * vec3<f32>(x_1303.w, x_1303.w, x_1303.w)) + vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1312 : vec3<f32> = u_xlat19;
    let x_1313 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1312, x_1313);
    let x_1315 : f32 = u_xlat38;
    u_xlat38 = max(x_1315, 0.00006103515625f);
    let x_1319 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1319);
    let x_1322 : f32 = u_xlat39;
    let x_1324 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1322, x_1322, x_1322) * x_1324);
    let x_1327 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1327);
    let x_1329 : f32 = u_xlat38;
    let x_1330 : i32 = u_xlati15;
    let x_1332 : f32 = x_1300.x_AdditionalLightsAttenuation[x_1330].x;
    u_xlat38 = (x_1329 * x_1332);
    let x_1334 : f32 = u_xlat38;
    let x_1336 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1334) * x_1336) + 1.0f);
    let x_1339 : f32 = u_xlat38;
    u_xlat38 = max(x_1339, 0.0f);
    let x_1341 : f32 = u_xlat38;
    let x_1342 : f32 = u_xlat38;
    u_xlat38 = (x_1341 * x_1342);
    let x_1344 : f32 = u_xlat38;
    let x_1345 : f32 = u_xlat40;
    u_xlat38 = (x_1344 * x_1345);
    let x_1347 : i32 = u_xlati15;
    let x_1349 : vec4<f32> = x_1300.x_AdditionalLightsSpotDir[x_1347];
    let x_1351 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1349.x, x_1349.y, x_1349.z), x_1351);
    let x_1353 : f32 = u_xlat40;
    let x_1354 : i32 = u_xlati15;
    let x_1356 : f32 = x_1300.x_AdditionalLightsAttenuation[x_1354].z;
    let x_1358 : i32 = u_xlati15;
    let x_1360 : f32 = x_1300.x_AdditionalLightsAttenuation[x_1358].w;
    u_xlat40 = ((x_1353 * x_1356) + x_1360);
    let x_1362 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1362, 0.0f, 1.0f);
    let x_1364 : f32 = u_xlat40;
    let x_1365 : f32 = u_xlat40;
    u_xlat40 = (x_1364 * x_1365);
    let x_1367 : f32 = u_xlat38;
    let x_1368 : f32 = u_xlat40;
    u_xlat38 = (x_1367 * x_1368);
    let x_1372 : i32 = u_xlati15;
    let x_1374 : f32 = x_497.x_AdditionalShadowParams[x_1372].w;
    u_xlati40 = i32(x_1374);
    let x_1377 : i32 = u_xlati40;
    u_xlatb42 = (x_1377 >= 0i);
    let x_1379 : bool = u_xlatb42;
    if (x_1379) {
      let x_1383 : i32 = u_xlati15;
      let x_1385 : f32 = x_497.x_AdditionalShadowParams[x_1383].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1385, x_1385, x_1385, x_1385))));
      let x_1389 : bool = u_xlatb42;
      if (x_1389) {
        let x_1393 : vec3<f32> = u_xlat9;
        let x_1396 : vec3<f32> = u_xlat9;
        let x_1399 : vec4<bool> = (abs(vec4<f32>(x_1393.z, x_1393.z, x_1393.y, x_1393.z)) >= abs(vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.x)));
        let x_1401 : vec3<bool> = vec3<bool>(x_1399.x, x_1399.y, x_1399.z);
        let x_1402 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
        let x_1405 : bool = u_xlatb10.y;
        let x_1407 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1405 & x_1407);
        let x_1409 : vec3<f32> = u_xlat9;
        let x_1412 : vec4<bool> = (-(vec4<f32>(x_1409.z, x_1409.y, x_1409.z, x_1409.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1413 : vec3<bool> = vec3<bool>(x_1412.x, x_1412.y, x_1412.w);
        let x_1414 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1413.x, x_1413.y, x_1414.z, x_1413.z);
        let x_1418 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1418);
        let x_1423 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1423);
        let x_1428 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1428);
        let x_1432 : bool = u_xlatb10.z;
        if (x_1432) {
          let x_1437 : f32 = u_xlat10.y;
          x_1433 = x_1437;
        } else {
          let x_1439 : f32 = u_xlat43;
          x_1433 = x_1439;
        }
        let x_1440 : f32 = x_1433;
        u_xlat21 = x_1440;
        let x_1442 : bool = u_xlatb42;
        if (x_1442) {
          let x_1447 : f32 = u_xlat10.x;
          x_1443 = x_1447;
        } else {
          let x_1449 : f32 = u_xlat21;
          x_1443 = x_1449;
        }
        let x_1450 : f32 = x_1443;
        u_xlat42 = x_1450;
        let x_1451 : i32 = u_xlati15;
        let x_1453 : f32 = x_497.x_AdditionalShadowParams[x_1451].w;
        u_xlat10.x = trunc(x_1453);
        let x_1456 : f32 = u_xlat42;
        let x_1458 : f32 = u_xlat10.x;
        u_xlat42 = (x_1456 + x_1458);
        let x_1460 : f32 = u_xlat42;
        u_xlati40 = i32(x_1460);
      }
      let x_1462 : i32 = u_xlati40;
      u_xlati40 = (x_1462 << bitcast<u32>(2i));
      let x_1464 : vec3<f32> = vs_INTERP7;
      let x_1467 : i32 = u_xlati40;
      let x_1470 : i32 = u_xlati40;
      let x_1474 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1467 + 1i) / 4i)][((x_1470 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1464.y, x_1464.y, x_1464.y, x_1464.y) * x_1474);
      let x_1476 : i32 = u_xlati40;
      let x_1478 : i32 = u_xlati40;
      let x_1481 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_1476 / 4i)][(x_1478 % 4i)];
      let x_1482 : vec3<f32> = vs_INTERP7;
      let x_1485 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1481 * vec4<f32>(x_1482.x, x_1482.x, x_1482.x, x_1482.x)) + x_1485);
      let x_1487 : i32 = u_xlati40;
      let x_1490 : i32 = u_xlati40;
      let x_1494 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1487 + 2i) / 4i)][((x_1490 + 2i) % 4i)];
      let x_1495 : vec3<f32> = vs_INTERP7;
      let x_1498 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1494 * vec4<f32>(x_1495.z, x_1495.z, x_1495.z, x_1495.z)) + x_1498);
      let x_1500 : vec4<f32> = u_xlat10;
      let x_1501 : i32 = u_xlati40;
      let x_1504 : i32 = u_xlati40;
      let x_1508 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1501 + 3i) / 4i)][((x_1504 + 3i) % 4i)];
      u_xlat10 = (x_1500 + x_1508);
      let x_1510 : vec4<f32> = u_xlat10;
      let x_1512 : vec4<f32> = u_xlat10;
      let x_1514 : vec3<f32> = (vec3<f32>(x_1510.x, x_1510.y, x_1510.z) / vec3<f32>(x_1512.w, x_1512.w, x_1512.w));
      let x_1515 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
      let x_1518 : vec4<f32> = u_xlat10;
      let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
      let x_1521 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
      let x_1529 : vec3<f32> = txVec1;
      let x_1531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
      u_xlat40 = x_1531;
      let x_1532 : i32 = u_xlati15;
      let x_1534 : f32 = x_497.x_AdditionalShadowParams[x_1532].x;
      u_xlat42 = (1.0f + -(x_1534));
      let x_1537 : f32 = u_xlat40;
      let x_1538 : i32 = u_xlati15;
      let x_1540 : f32 = x_497.x_AdditionalShadowParams[x_1538].x;
      let x_1542 : f32 = u_xlat42;
      u_xlat40 = ((x_1537 * x_1540) + x_1542);
      let x_1545 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1545);
      let x_1548 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1548 >= 1.0f);
      let x_1551 : bool = u_xlatb42;
      let x_1553 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1551 | x_1553);
      let x_1555 : bool = u_xlatb42;
      let x_1556 : f32 = u_xlat40;
      u_xlat40 = select(x_1556, 1.0f, x_1555);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1559 : f32 = u_xlat40;
    u_xlat42 = (-(x_1559) + 1.0f);
    let x_1563 : f32 = u_xlat2.x;
    let x_1564 : f32 = u_xlat42;
    let x_1566 : f32 = u_xlat40;
    u_xlat40 = ((x_1563 * x_1564) + x_1566);
    let x_1568 : f32 = u_xlat38;
    let x_1569 : f32 = u_xlat40;
    u_xlat38 = (x_1568 * x_1569);
    let x_1571 : vec4<f32> = u_xlat1;
    let x_1573 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1571.x, x_1571.y, x_1571.z), x_1573);
    let x_1575 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1575, 0.0f, 1.0f);
    let x_1577 : f32 = u_xlat38;
    let x_1578 : f32 = u_xlat40;
    u_xlat38 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat38;
    let x_1582 : i32 = u_xlati15;
    let x_1584 : vec4<f32> = x_1300.x_AdditionalLightsColor[x_1582];
    let x_1586 : vec3<f32> = (vec3<f32>(x_1580, x_1580, x_1580) * vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
    let x_1587 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
    let x_1589 : vec3<f32> = u_xlat19;
    let x_1590 : f32 = u_xlat39;
    let x_1593 : vec4<f32> = u_xlat3;
    u_xlat19 = ((x_1589 * vec3<f32>(x_1590, x_1590, x_1590)) + vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
    let x_1596 : vec3<f32> = u_xlat19;
    let x_1597 : vec3<f32> = u_xlat19;
    u_xlat15.x = dot(x_1596, x_1597);
    let x_1601 : f32 = u_xlat15.x;
    u_xlat15.x = max(x_1601, 1.17549435e-38f);
    let x_1605 : f32 = u_xlat15.x;
    u_xlat15.x = inverseSqrt(x_1605);
    let x_1608 : vec3<f32> = u_xlat15;
    let x_1610 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1608.x, x_1608.x, x_1608.x) * x_1610);
    let x_1612 : vec4<f32> = u_xlat1;
    let x_1614 : vec3<f32> = u_xlat19;
    u_xlat15.x = dot(vec3<f32>(x_1612.x, x_1612.y, x_1612.z), x_1614);
    let x_1618 : f32 = u_xlat15.x;
    u_xlat15.x = clamp(x_1618, 0.0f, 1.0f);
    let x_1621 : vec3<f32> = u_xlat9;
    let x_1622 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1621, x_1622);
    let x_1624 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1624, 0.0f, 1.0f);
    let x_1627 : f32 = u_xlat15.x;
    let x_1629 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1627 * x_1629);
    let x_1633 : f32 = u_xlat15.x;
    let x_1635 : f32 = u_xlat8.x;
    u_xlat15.x = ((x_1633 * x_1635) + 1.00001001358032226562f);
    let x_1639 : f32 = u_xlat38;
    let x_1640 : f32 = u_xlat38;
    u_xlat38 = (x_1639 * x_1640);
    let x_1643 : f32 = u_xlat15.x;
    let x_1645 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1643 * x_1645);
    let x_1648 : f32 = u_xlat38;
    u_xlat38 = max(x_1648, 0.10000000149011611938f);
    let x_1651 : f32 = u_xlat15.x;
    let x_1652 : f32 = u_xlat38;
    u_xlat15.x = (x_1651 * x_1652);
    let x_1655 : f32 = u_xlat35;
    let x_1657 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1655 * x_1657);
    let x_1660 : f32 = u_xlat36;
    let x_1662 : f32 = u_xlat15.x;
    u_xlat15.x = (x_1660 / x_1662);
    let x_1665 : vec4<f32> = u_xlat0;
    let x_1667 : vec3<f32> = u_xlat15;
    let x_1670 : vec4<f32> = u_xlat6;
    u_xlat19 = ((vec3<f32>(x_1665.x, x_1665.y, x_1665.z) * vec3<f32>(x_1667.x, x_1667.x, x_1667.x)) + vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
    let x_1673 : vec3<f32> = u_xlat19;
    let x_1674 : vec4<f32> = u_xlat10;
    let x_1677 : vec4<f32> = u_xlat7;
    let x_1679 : vec3<f32> = ((x_1673 * vec3<f32>(x_1674.x, x_1674.y, x_1674.z)) + vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
    let x_1680 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1679.x, x_1679.y, x_1679.z, x_1680.w);

    continuing {
      let x_1682 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1682 + bitcast<u32>(1i));
    }
  }
  let x_1684 : vec4<f32> = u_xlat5;
  let x_1686 : f32 = u_xlat24;
  let x_1689 : vec4<f32> = u_xlat4;
  let x_1691 : vec3<f32> = ((vec3<f32>(x_1684.x, x_1684.y, x_1684.z) * vec3<f32>(x_1686, x_1686, x_1686)) + vec3<f32>(x_1689.x, x_1689.z, x_1689.w));
  let x_1692 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : vec4<f32> = u_xlat7;
  let x_1696 : vec4<f32> = u_xlat0;
  let x_1698 : vec3<f32> = (vec3<f32>(x_1694.x, x_1694.y, x_1694.z) + vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1701 : f32 = u_xlat33;
  let x_1702 : f32 = u_xlat33;
  u_xlat33 = (x_1701 * -(x_1702));
  let x_1705 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1705);
  let x_1707 : vec4<f32> = u_xlat0;
  let x_1710 : vec4<f32> = x_29.unity_FogColor;
  let x_1713 : vec3<f32> = (vec3<f32>(x_1707.x, x_1707.y, x_1707.z) + -(vec3<f32>(x_1710.x, x_1710.y, x_1710.z)));
  let x_1714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
  let x_1718 : f32 = u_xlat33;
  let x_1720 : vec4<f32> = u_xlat0;
  let x_1724 : vec4<f32> = x_29.unity_FogColor;
  let x_1726 : vec3<f32> = ((vec3<f32>(x_1718, x_1718, x_1718) * vec3<f32>(x_1720.x, x_1720.y, x_1720.z)) + vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
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


