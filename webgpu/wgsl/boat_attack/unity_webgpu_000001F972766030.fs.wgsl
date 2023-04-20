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

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat24 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat37 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(3) var<uniform> x_710 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat17 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1079 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb37 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1213 : f32;
  var x_1223 : f32;
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
    let x_484 : vec3<f32> = u_xlat4;
    x_478 = x_484;
  }
  let x_485 : vec3<f32> = x_478;
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = vs_INTERP7.y;
  let x_491 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat33 = (x_489 * x_491);
  let x_494 : f32 = x_29.unity_MatrixV[0i].z;
  let x_496 : f32 = vs_INTERP7.x;
  let x_498 : f32 = u_xlat33;
  u_xlat33 = ((x_494 * x_496) + x_498);
  let x_501 : f32 = x_29.unity_MatrixV[2i].z;
  let x_503 : f32 = vs_INTERP7.z;
  let x_505 : f32 = u_xlat33;
  u_xlat33 = ((x_501 * x_503) + x_505);
  let x_507 : f32 = u_xlat33;
  let x_509 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat33 = (x_507 + x_509);
  let x_511 : f32 = u_xlat33;
  let x_515 : f32 = x_29.x_ProjectionParams.y;
  u_xlat33 = (-(x_511) + -(x_515));
  let x_518 : f32 = u_xlat33;
  u_xlat33 = max(x_518, 0.0f);
  let x_520 : f32 = u_xlat33;
  let x_523 : f32 = x_29.unity_FogParams.x;
  u_xlat33 = (x_520 * x_523);
  u_xlat1.w = 1.0f;
  let x_529 : vec4<f32> = x_349.unity_SHAr;
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHAg;
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHAb;
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_541, x_542);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_546.y, x_546.z, x_546.z, x_546.x) * vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.z));
  let x_554 : vec4<f32> = x_349.unity_SHBr;
  let x_555 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_554, x_555);
  let x_560 : vec4<f32> = x_349.unity_SHBg;
  let x_561 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_560, x_561);
  let x_566 : vec4<f32> = x_349.unity_SHBb;
  let x_567 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_566, x_567);
  let x_572 : f32 = u_xlat1.y;
  let x_574 : f32 = u_xlat1.y;
  u_xlat34 = (x_572 * x_574);
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat34;
  u_xlat34 = ((x_577 * x_579) + -(x_581));
  let x_586 : vec4<f32> = x_349.unity_SHC;
  let x_588 : f32 = u_xlat34;
  let x_591 : vec3<f32> = u_xlat6;
  let x_592 : vec3<f32> = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588, x_588, x_588)) + x_591);
  let x_593 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = u_xlat4;
  let x_596 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_595 + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_599, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_602 : vec4<f32> = u_xlat2;
  let x_603 : vec2<f32> = vec2<f32>(x_602.x, x_602.y);
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat2;
  let x_610 : vec2<f32> = clamp(vec2<f32>(x_606.x, x_606.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_614 : f32 = u_xlat2.x;
  u_xlat34 = ((-(x_614) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_619 : f32 = u_xlat34;
  let x_622 : f32 = u_xlat2.y;
  u_xlat35 = (-(x_619) + x_622);
  let x_624 : vec4<f32> = u_xlat0;
  let x_626 : f32 = u_xlat34;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_626, x_626, x_626));
  let x_629 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat0;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat2;
  let x_640 : vec4<f32> = u_xlat0;
  let x_645 : vec3<f32> = ((vec3<f32>(x_638.x, x_638.x, x_638.x) * vec3<f32>(x_640.x, x_640.y, x_640.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_646 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_649 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_649) + 1.0f);
  let x_652 : f32 = u_xlat34;
  let x_653 : f32 = u_xlat34;
  u_xlat2.x = (x_652 * x_653);
  let x_657 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_657, 0.0078125f);
  let x_663 : f32 = u_xlat2.x;
  let x_665 : f32 = u_xlat2.x;
  u_xlat13 = (x_663 * x_665);
  let x_667 : f32 = u_xlat35;
  u_xlat35 = (x_667 + 1.0f);
  let x_669 : f32 = u_xlat35;
  u_xlat35 = min(x_669, 1.0f);
  let x_673 : f32 = u_xlat2.x;
  u_xlat36 = ((x_673 * 4.0f) + 2.0f);
  let x_679 : f32 = u_xlat2.z;
  u_xlat24 = min(x_679, 1.0f);
  let x_683 : vec4<f32> = vs_INTERP3;
  let x_684 : vec2<f32> = vec2<f32>(x_683.x, x_683.y);
  let x_686 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_684.x, x_684.y, x_686);
  let x_699 : vec3<f32> = txVec0;
  let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_699.xy, x_699.z);
  u_xlat37 = x_701;
  let x_713 : f32 = x_710.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_713) + 1.0f);
  let x_716 : f32 = u_xlat37;
  let x_718 : f32 = x_710.x_MainLightShadowParams.x;
  let x_720 : f32 = u_xlat38;
  u_xlat37 = ((x_716 * x_718) + x_720);
  let x_724 : f32 = vs_INTERP3.z;
  u_xlatb38 = (0.0f >= x_724);
  let x_728 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_728 >= 1.0f);
  let x_730 : bool = u_xlatb38;
  let x_731 : bool = u_xlatb6;
  u_xlatb38 = (x_730 | x_731);
  let x_733 : bool = u_xlatb38;
  let x_734 : f32 = u_xlat37;
  u_xlat37 = select(x_734, 1.0f, x_733);
  let x_736 : vec3<f32> = vs_INTERP7;
  let x_738 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat6 = (x_736 + -(x_738));
  let x_741 : vec3<f32> = u_xlat6;
  let x_742 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_741, x_742);
  let x_744 : f32 = u_xlat38;
  let x_746 : f32 = x_710.x_MainLightShadowParams.z;
  let x_749 : f32 = x_710.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_744 * x_746) + x_749);
  let x_753 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_753, 0.0f, 1.0f);
  let x_757 : f32 = u_xlat37;
  u_xlat17 = (-(x_757) + 1.0f);
  let x_761 : f32 = u_xlat6.x;
  let x_762 : f32 = u_xlat17;
  let x_764 : f32 = u_xlat37;
  u_xlat37 = ((x_761 * x_762) + x_764);
  let x_766 : vec4<f32> = u_xlat3;
  let x_769 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_766.x, x_766.y, x_766.z)), vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_774 : f32 = u_xlat6.x;
  let x_776 : f32 = u_xlat6.x;
  u_xlat6.x = (x_774 + x_776);
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec3<f32> = u_xlat6;
  let x_785 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * -(vec3<f32>(x_781.x, x_781.x, x_781.x))) + -(vec3<f32>(x_785.x, x_785.y, x_785.z)));
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat39 = dot(vec3<f32>(x_790.x, x_790.y, x_790.z), vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : f32 = u_xlat39;
  u_xlat39 = clamp(x_795, 0.0f, 1.0f);
  let x_797 : f32 = u_xlat39;
  u_xlat39 = (-(x_797) + 1.0f);
  let x_800 : f32 = u_xlat39;
  let x_801 : f32 = u_xlat39;
  u_xlat39 = (x_800 * x_801);
  let x_803 : f32 = u_xlat39;
  let x_804 : f32 = u_xlat39;
  u_xlat39 = (x_803 * x_804);
  let x_807 : f32 = u_xlat34;
  u_xlat7.x = ((-(x_807) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_814 : f32 = u_xlat34;
  let x_816 : f32 = u_xlat7.x;
  u_xlat34 = (x_814 * x_816);
  let x_818 : f32 = u_xlat34;
  u_xlat34 = (x_818 * 6.0f);
  let x_828 : vec3<f32> = u_xlat6;
  let x_829 : f32 = u_xlat34;
  let x_830 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_828, x_829);
  u_xlat7 = x_830;
  let x_832 : f32 = u_xlat7.w;
  u_xlat34 = (x_832 + -1.0f);
  let x_835 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_836 : f32 = u_xlat34;
  u_xlat34 = ((x_835 * x_836) + 1.0f);
  let x_839 : f32 = u_xlat34;
  u_xlat34 = max(x_839, 0.0f);
  let x_841 : f32 = u_xlat34;
  u_xlat34 = log2(x_841);
  let x_843 : f32 = u_xlat34;
  let x_845 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_843 * x_845);
  let x_847 : f32 = u_xlat34;
  u_xlat34 = exp2(x_847);
  let x_849 : f32 = u_xlat34;
  let x_851 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_849 * x_851);
  let x_853 : vec4<f32> = u_xlat7;
  let x_855 : f32 = u_xlat34;
  u_xlat6 = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855, x_855, x_855));
  let x_858 : vec4<f32> = u_xlat2;
  let x_860 : vec4<f32> = u_xlat2;
  let x_864 : vec2<f32> = ((vec2<f32>(x_858.x, x_858.x) * vec2<f32>(x_860.x, x_860.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_865 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
  let x_868 : f32 = u_xlat7.y;
  u_xlat34 = (1.0f / x_868);
  let x_871 : vec4<f32> = u_xlat0;
  let x_874 : f32 = u_xlat35;
  u_xlat18 = (-(vec3<f32>(x_871.x, x_871.y, x_871.z)) + vec3<f32>(x_874, x_874, x_874));
  let x_877 : f32 = u_xlat39;
  let x_879 : vec3<f32> = u_xlat18;
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_877, x_877, x_877) * x_879) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : f32 = u_xlat34;
  let x_886 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_884, x_884, x_884) * x_886);
  let x_888 : vec3<f32> = u_xlat6;
  let x_889 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_888 * x_889);
  let x_891 : vec3<f32> = u_xlat4;
  let x_892 : vec4<f32> = u_xlat5;
  let x_895 : vec3<f32> = u_xlat6;
  u_xlat4 = ((x_891 * vec3<f32>(x_892.x, x_892.y, x_892.z)) + x_895);
  let x_897 : f32 = u_xlat37;
  let x_899 : f32 = x_349.unity_LightData.z;
  u_xlat34 = (x_897 * x_899);
  let x_901 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_909 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_909, 0.0f, 1.0f);
  let x_912 : f32 = u_xlat34;
  let x_914 : f32 = u_xlat2.x;
  u_xlat34 = (x_912 * x_914);
  let x_916 : f32 = u_xlat34;
  let x_919 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_916, x_916, x_916) * vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec4<f32> = u_xlat3;
  let x_925 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat18 = (vec3<f32>(x_922.x, x_922.y, x_922.z) + vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec3<f32> = u_xlat18;
  let x_929 : vec3<f32> = u_xlat18;
  u_xlat34 = dot(x_928, x_929);
  let x_931 : f32 = u_xlat34;
  u_xlat34 = max(x_931, 1.17549435e-38f);
  let x_934 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_934);
  let x_936 : f32 = u_xlat34;
  let x_938 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_936, x_936, x_936) * x_938);
  let x_940 : vec4<f32> = u_xlat1;
  let x_942 : vec3<f32> = u_xlat18;
  u_xlat34 = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), x_942);
  let x_944 : f32 = u_xlat34;
  u_xlat34 = clamp(x_944, 0.0f, 1.0f);
  let x_947 : vec4<f32> = x_29.x_MainLightPosition;
  let x_949 : vec3<f32> = u_xlat18;
  u_xlat2.x = dot(vec3<f32>(x_947.x, x_947.y, x_947.z), x_949);
  let x_953 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_953, 0.0f, 1.0f);
  let x_956 : f32 = u_xlat34;
  let x_957 : f32 = u_xlat34;
  u_xlat34 = (x_956 * x_957);
  let x_959 : f32 = u_xlat34;
  let x_961 : f32 = u_xlat7.x;
  u_xlat34 = ((x_959 * x_961) + 1.00001001358032226562f);
  let x_966 : f32 = u_xlat2.x;
  let x_968 : f32 = u_xlat2.x;
  u_xlat2.x = (x_966 * x_968);
  let x_971 : f32 = u_xlat34;
  let x_972 : f32 = u_xlat34;
  u_xlat34 = (x_971 * x_972);
  let x_975 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_975, 0.10000000149011611938f);
  let x_979 : f32 = u_xlat34;
  let x_981 : f32 = u_xlat2.x;
  u_xlat34 = (x_979 * x_981);
  let x_983 : f32 = u_xlat36;
  let x_984 : f32 = u_xlat34;
  u_xlat34 = (x_983 * x_984);
  let x_986 : f32 = u_xlat13;
  let x_987 : f32 = u_xlat34;
  u_xlat34 = (x_986 / x_987);
  let x_989 : vec4<f32> = u_xlat0;
  let x_991 : f32 = u_xlat34;
  let x_994 : vec4<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991, x_991, x_991)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec3<f32> = u_xlat6;
  let x_998 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_997 * x_998);
  let x_1001 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1003 : f32 = x_349.unity_LightData.y;
  u_xlat34 = min(x_1001, x_1003);
  let x_1007 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1007));
  let x_1010 : f32 = u_xlat38;
  let x_1013 : f32 = x_710.x_AdditionalShadowFadeParams.x;
  let x_1016 : f32 = x_710.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1010 * x_1013) + x_1016);
  let x_1020 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1020, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1033 : u32 = u_xlatu_loop_1;
    let x_1034 : u32 = u_xlatu34;
    if ((x_1033 < x_1034)) {
    } else {
      break;
    }
    let x_1037 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1037 >> 2u);
    let x_1041 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1041 & 3u));
    let x_1044 : u32 = u_xlatu37;
    let x_1047 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1044)];
    let x_1057 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1062 : vec4<u32> = indexable[x_1057];
    u_xlat37 = dot(x_1047, bitcast<vec4<f32>>(x_1062));
    let x_1066 : f32 = u_xlat37;
    u_xlati37 = i32(x_1066);
    let x_1069 : vec3<f32> = vs_INTERP7;
    let x_1080 : i32 = u_xlati37;
    let x_1082 : vec4<f32> = x_1079.x_AdditionalLightsPosition[x_1080];
    let x_1085 : i32 = u_xlati37;
    let x_1087 : vec4<f32> = x_1079.x_AdditionalLightsPosition[x_1085];
    u_xlat8 = ((-(x_1069) * vec3<f32>(x_1082.w, x_1082.w, x_1082.w)) + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
    let x_1090 : vec3<f32> = u_xlat8;
    let x_1091 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1090, x_1091);
    let x_1093 : f32 = u_xlat38;
    u_xlat38 = max(x_1093, 0.00006103515625f);
    let x_1096 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1096);
    let x_1099 : f32 = u_xlat39;
    let x_1101 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1099, x_1099, x_1099) * x_1101);
    let x_1104 : f32 = u_xlat38;
    u_xlat41 = (1.0f / x_1104);
    let x_1106 : f32 = u_xlat38;
    let x_1107 : i32 = u_xlati37;
    let x_1109 : f32 = x_1079.x_AdditionalLightsAttenuation[x_1107].x;
    u_xlat38 = (x_1106 * x_1109);
    let x_1111 : f32 = u_xlat38;
    let x_1113 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1111) * x_1113) + 1.0f);
    let x_1116 : f32 = u_xlat38;
    u_xlat38 = max(x_1116, 0.0f);
    let x_1118 : f32 = u_xlat38;
    let x_1119 : f32 = u_xlat38;
    u_xlat38 = (x_1118 * x_1119);
    let x_1121 : f32 = u_xlat38;
    let x_1122 : f32 = u_xlat41;
    u_xlat38 = (x_1121 * x_1122);
    let x_1124 : i32 = u_xlati37;
    let x_1126 : vec4<f32> = x_1079.x_AdditionalLightsSpotDir[x_1124];
    let x_1128 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), x_1128);
    let x_1130 : f32 = u_xlat41;
    let x_1131 : i32 = u_xlati37;
    let x_1133 : f32 = x_1079.x_AdditionalLightsAttenuation[x_1131].z;
    let x_1135 : i32 = u_xlati37;
    let x_1137 : f32 = x_1079.x_AdditionalLightsAttenuation[x_1135].w;
    u_xlat41 = ((x_1130 * x_1133) + x_1137);
    let x_1139 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1139, 0.0f, 1.0f);
    let x_1141 : f32 = u_xlat41;
    let x_1142 : f32 = u_xlat41;
    u_xlat41 = (x_1141 * x_1142);
    let x_1144 : f32 = u_xlat38;
    let x_1145 : f32 = u_xlat41;
    u_xlat38 = (x_1144 * x_1145);
    let x_1149 : i32 = u_xlati37;
    let x_1151 : f32 = x_710.x_AdditionalShadowParams[x_1149].w;
    u_xlati41 = i32(x_1151);
    let x_1154 : i32 = u_xlati41;
    u_xlatb42 = (x_1154 >= 0i);
    let x_1156 : bool = u_xlatb42;
    if (x_1156) {
      let x_1160 : i32 = u_xlati37;
      let x_1162 : f32 = x_710.x_AdditionalShadowParams[x_1160].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1162, x_1162, x_1162, x_1162))));
      let x_1167 : bool = u_xlatb42;
      if (x_1167) {
        let x_1172 : vec3<f32> = u_xlat9;
        let x_1175 : vec3<f32> = u_xlat9;
        let x_1178 : vec4<bool> = (abs(vec4<f32>(x_1172.z, x_1172.z, x_1172.y, x_1172.z)) >= abs(vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.x)));
        let x_1180 : vec3<bool> = vec3<bool>(x_1178.x, x_1178.y, x_1178.z);
        let x_1181 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
        let x_1184 : bool = u_xlatb10.y;
        let x_1186 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1184 & x_1186);
        let x_1188 : vec3<f32> = u_xlat9;
        let x_1191 : vec4<bool> = (-(vec4<f32>(x_1188.z, x_1188.y, x_1188.z, x_1188.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1192 : vec3<bool> = vec3<bool>(x_1191.x, x_1191.y, x_1191.w);
        let x_1193 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1192.x, x_1192.y, x_1193.z, x_1192.z);
        let x_1197 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1197);
        let x_1202 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1202);
        let x_1208 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1208);
        let x_1212 : bool = u_xlatb10.z;
        if (x_1212) {
          let x_1217 : f32 = u_xlat10.y;
          x_1213 = x_1217;
        } else {
          let x_1219 : f32 = u_xlat43;
          x_1213 = x_1219;
        }
        let x_1220 : f32 = x_1213;
        u_xlat21 = x_1220;
        let x_1222 : bool = u_xlatb42;
        if (x_1222) {
          let x_1227 : f32 = u_xlat10.x;
          x_1223 = x_1227;
        } else {
          let x_1229 : f32 = u_xlat21;
          x_1223 = x_1229;
        }
        let x_1230 : f32 = x_1223;
        u_xlat42 = x_1230;
        let x_1231 : i32 = u_xlati37;
        let x_1233 : f32 = x_710.x_AdditionalShadowParams[x_1231].w;
        u_xlat10.x = trunc(x_1233);
        let x_1236 : f32 = u_xlat42;
        let x_1238 : f32 = u_xlat10.x;
        u_xlat42 = (x_1236 + x_1238);
        let x_1240 : f32 = u_xlat42;
        u_xlati41 = i32(x_1240);
      }
      let x_1242 : i32 = u_xlati41;
      u_xlati41 = (x_1242 << bitcast<u32>(2i));
      let x_1244 : vec3<f32> = vs_INTERP7;
      let x_1247 : i32 = u_xlati41;
      let x_1250 : i32 = u_xlati41;
      let x_1254 : vec4<f32> = x_710.x_AdditionalLightsWorldToShadow[((x_1247 + 1i) / 4i)][((x_1250 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1244.y, x_1244.y, x_1244.y, x_1244.y) * x_1254);
      let x_1256 : i32 = u_xlati41;
      let x_1258 : i32 = u_xlati41;
      let x_1261 : vec4<f32> = x_710.x_AdditionalLightsWorldToShadow[(x_1256 / 4i)][(x_1258 % 4i)];
      let x_1262 : vec3<f32> = vs_INTERP7;
      let x_1265 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1261 * vec4<f32>(x_1262.x, x_1262.x, x_1262.x, x_1262.x)) + x_1265);
      let x_1267 : i32 = u_xlati41;
      let x_1270 : i32 = u_xlati41;
      let x_1274 : vec4<f32> = x_710.x_AdditionalLightsWorldToShadow[((x_1267 + 2i) / 4i)][((x_1270 + 2i) % 4i)];
      let x_1275 : vec3<f32> = vs_INTERP7;
      let x_1278 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1274 * vec4<f32>(x_1275.z, x_1275.z, x_1275.z, x_1275.z)) + x_1278);
      let x_1280 : vec4<f32> = u_xlat10;
      let x_1281 : i32 = u_xlati41;
      let x_1284 : i32 = u_xlati41;
      let x_1288 : vec4<f32> = x_710.x_AdditionalLightsWorldToShadow[((x_1281 + 3i) / 4i)][((x_1284 + 3i) % 4i)];
      u_xlat10 = (x_1280 + x_1288);
      let x_1290 : vec4<f32> = u_xlat10;
      let x_1292 : vec4<f32> = u_xlat10;
      let x_1294 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) / vec3<f32>(x_1292.w, x_1292.w, x_1292.w));
      let x_1295 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
      let x_1298 : vec4<f32> = u_xlat10;
      let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
      let x_1301 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
      let x_1309 : vec3<f32> = txVec1;
      let x_1311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1309.xy, x_1309.z);
      u_xlat41 = x_1311;
      let x_1312 : i32 = u_xlati37;
      let x_1314 : f32 = x_710.x_AdditionalShadowParams[x_1312].x;
      u_xlat42 = (1.0f + -(x_1314));
      let x_1317 : f32 = u_xlat41;
      let x_1318 : i32 = u_xlati37;
      let x_1320 : f32 = x_710.x_AdditionalShadowParams[x_1318].x;
      let x_1322 : f32 = u_xlat42;
      u_xlat41 = ((x_1317 * x_1320) + x_1322);
      let x_1325 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1325);
      let x_1328 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1328 >= 1.0f);
      let x_1331 : bool = u_xlatb42;
      let x_1333 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1331 | x_1333);
      let x_1335 : bool = u_xlatb42;
      let x_1336 : f32 = u_xlat41;
      u_xlat41 = select(x_1336, 1.0f, x_1335);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1339 : f32 = u_xlat41;
    u_xlat42 = (-(x_1339) + 1.0f);
    let x_1343 : f32 = u_xlat2.x;
    let x_1344 : f32 = u_xlat42;
    let x_1346 : f32 = u_xlat41;
    u_xlat41 = ((x_1343 * x_1344) + x_1346);
    let x_1348 : f32 = u_xlat38;
    let x_1349 : f32 = u_xlat41;
    u_xlat38 = (x_1348 * x_1349);
    let x_1351 : vec4<f32> = u_xlat1;
    let x_1353 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1351.x, x_1351.y, x_1351.z), x_1353);
    let x_1355 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1355, 0.0f, 1.0f);
    let x_1357 : f32 = u_xlat38;
    let x_1358 : f32 = u_xlat41;
    u_xlat38 = (x_1357 * x_1358);
    let x_1360 : f32 = u_xlat38;
    let x_1362 : i32 = u_xlati37;
    let x_1364 : vec4<f32> = x_1079.x_AdditionalLightsColor[x_1362];
    let x_1366 : vec3<f32> = (vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
    let x_1367 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
    let x_1369 : vec3<f32> = u_xlat8;
    let x_1370 : f32 = u_xlat39;
    let x_1373 : vec4<f32> = u_xlat3;
    u_xlat8 = ((x_1369 * vec3<f32>(x_1370, x_1370, x_1370)) + vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : vec3<f32> = u_xlat8;
    let x_1377 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1376, x_1377);
    let x_1379 : f32 = u_xlat37;
    u_xlat37 = max(x_1379, 1.17549435e-38f);
    let x_1381 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1381);
    let x_1383 : f32 = u_xlat37;
    let x_1385 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1383, x_1383, x_1383) * x_1385);
    let x_1387 : vec4<f32> = u_xlat1;
    let x_1389 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1387.x, x_1387.y, x_1387.z), x_1389);
    let x_1391 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1391, 0.0f, 1.0f);
    let x_1393 : vec3<f32> = u_xlat9;
    let x_1394 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1393, x_1394);
    let x_1396 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1396, 0.0f, 1.0f);
    let x_1398 : f32 = u_xlat37;
    let x_1399 : f32 = u_xlat37;
    u_xlat37 = (x_1398 * x_1399);
    let x_1401 : f32 = u_xlat37;
    let x_1403 : f32 = u_xlat7.x;
    u_xlat37 = ((x_1401 * x_1403) + 1.00001001358032226562f);
    let x_1406 : f32 = u_xlat38;
    let x_1407 : f32 = u_xlat38;
    u_xlat38 = (x_1406 * x_1407);
    let x_1409 : f32 = u_xlat37;
    let x_1410 : f32 = u_xlat37;
    u_xlat37 = (x_1409 * x_1410);
    let x_1412 : f32 = u_xlat38;
    u_xlat38 = max(x_1412, 0.10000000149011611938f);
    let x_1414 : f32 = u_xlat37;
    let x_1415 : f32 = u_xlat38;
    u_xlat37 = (x_1414 * x_1415);
    let x_1417 : f32 = u_xlat36;
    let x_1418 : f32 = u_xlat37;
    u_xlat37 = (x_1417 * x_1418);
    let x_1420 : f32 = u_xlat13;
    let x_1421 : f32 = u_xlat37;
    u_xlat37 = (x_1420 / x_1421);
    let x_1423 : vec4<f32> = u_xlat0;
    let x_1425 : f32 = u_xlat37;
    let x_1428 : vec4<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1423.x, x_1423.y, x_1423.z) * vec3<f32>(x_1425, x_1425, x_1425)) + vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
    let x_1431 : vec3<f32> = u_xlat8;
    let x_1432 : vec4<f32> = u_xlat10;
    let x_1435 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1431 * vec3<f32>(x_1432.x, x_1432.y, x_1432.z)) + x_1435);

    continuing {
      let x_1437 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1437 + bitcast<u32>(1i));
    }
  }
  let x_1439 : vec3<f32> = u_xlat4;
  let x_1440 : f32 = u_xlat24;
  let x_1443 : vec3<f32> = u_xlat6;
  let x_1444 : vec3<f32> = ((x_1439 * vec3<f32>(x_1440, x_1440, x_1440)) + x_1443);
  let x_1445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1447 : vec3<f32> = u_xlat18;
  let x_1448 : vec4<f32> = u_xlat0;
  let x_1450 : vec3<f32> = (x_1447 + vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
  let x_1451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
  let x_1453 : f32 = u_xlat33;
  let x_1454 : f32 = u_xlat33;
  u_xlat33 = (x_1453 * -(x_1454));
  let x_1457 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1457);
  let x_1459 : vec4<f32> = u_xlat0;
  let x_1462 : vec4<f32> = x_29.unity_FogColor;
  let x_1465 : vec3<f32> = (vec3<f32>(x_1459.x, x_1459.y, x_1459.z) + -(vec3<f32>(x_1462.x, x_1462.y, x_1462.z)));
  let x_1466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
  let x_1470 : f32 = u_xlat33;
  let x_1472 : vec4<f32> = u_xlat0;
  let x_1476 : vec4<f32> = x_29.unity_FogColor;
  let x_1478 : vec3<f32> = ((vec3<f32>(x_1470, x_1470, x_1470) * vec3<f32>(x_1472.x, x_1472.y, x_1472.z)) + vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
  let x_1479 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
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


