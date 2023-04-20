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
  /* @offset(208) */
  x_NightFade : f32,
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat36 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat25 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb25 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb37 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb36 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat27 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat42 : f32;

@group(1) @binding(3) var<uniform> x_503 : LightShadows;

var<private> u_xlatb42 : bool;

var<private> u_xlatb7 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_874 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat47 : f32;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var x_279 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1009 : f32;
  var x_1019 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat36;
  u_xlat36 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat36;
  u_xlat36 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_84);
  let x_86 : f32 = u_xlat36;
  u_xlat36 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_117);
  let x_119 : f32 = u_xlat25;
  u_xlat25 = fract(x_119);
  let x_121 : f32 = u_xlat25;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat25 = (x_121 + x_124);
  let x_129 : f32 = u_xlat25;
  u_xlatb25 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb37 = (0.0f < x_151);
  let x_154 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb38 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat37;
  let x_164 : f32 = u_xlat38;
  u_xlat37 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  let x_173 : vec3<f32> = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec3<f32> = vs_INTERP8;
  let x_178 : vec4<f32> = vs_INTERP4;
  let x_181 : vec4<f32> = u_xlat4;
  let x_184 : vec3<f32> = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.z, x_178.x, x_178.y)) + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : f32 = u_xlat37;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = vs_INTERP4;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat36;
  let x_213 : vec3<f32> = vs_INTERP8;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat36;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_237 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb36 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP7;
  let x_245 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_246 : vec3<f32> = (-(x_240) + x_245);
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_246.z);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(vec3<f32>(x_249.x, x_249.y, x_249.w), vec3<f32>(x_251.x, x_251.y, x_251.w));
  let x_254 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_254);
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : f32 = u_xlat38;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.w) * vec3<f32>(x_258, x_258, x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_266 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_266;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_270;
  let x_275 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_275;
  let x_277 : bool = u_xlatb36;
  if (x_277) {
    let x_282 : vec4<f32> = u_xlat1;
    x_279 = vec3<f32>(x_282.x, x_282.y, x_282.w);
  } else {
    let x_285 : vec3<f32> = u_xlat5;
    x_279 = x_285;
  }
  let x_286 : vec3<f32> = x_279;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_286.z);
  let x_290 : f32 = vs_INTERP7.y;
  let x_292 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat36 = (x_290 * x_292);
  let x_295 : f32 = x_29.unity_MatrixV[0i].z;
  let x_297 : f32 = vs_INTERP7.x;
  let x_299 : f32 = u_xlat36;
  u_xlat36 = ((x_295 * x_297) + x_299);
  let x_302 : f32 = x_29.unity_MatrixV[2i].z;
  let x_304 : f32 = vs_INTERP7.z;
  let x_306 : f32 = u_xlat36;
  u_xlat36 = ((x_302 * x_304) + x_306);
  let x_308 : f32 = u_xlat36;
  let x_310 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat36 = (x_308 + x_310);
  let x_312 : f32 = u_xlat36;
  let x_316 : f32 = x_29.x_ProjectionParams.y;
  u_xlat36 = (-(x_312) + -(x_316));
  let x_319 : f32 = u_xlat36;
  u_xlat36 = max(x_319, 0.0f);
  let x_321 : f32 = u_xlat36;
  let x_324 : f32 = x_29.unity_FogParams.x;
  u_xlat36 = (x_321 * x_324);
  u_xlat4.w = 1.0f;
  let x_329 : vec4<f32> = x_107.unity_SHAr;
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_107.unity_SHAg;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_335, x_336);
  let x_341 : vec4<f32> = x_107.unity_SHAb;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_341, x_342);
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_346.y, x_346.z, x_346.z, x_346.x) * vec4<f32>(x_348.x, x_348.y, x_348.z, x_348.z));
  let x_354 : vec4<f32> = x_107.unity_SHBr;
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_107.unity_SHBg;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_360, x_361);
  let x_366 : vec4<f32> = x_107.unity_SHBb;
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_366, x_367);
  let x_371 : f32 = u_xlat4.y;
  let x_373 : f32 = u_xlat4.y;
  u_xlat38 = (x_371 * x_373);
  let x_376 : f32 = u_xlat4.x;
  let x_378 : f32 = u_xlat4.x;
  let x_380 : f32 = u_xlat38;
  u_xlat38 = ((x_376 * x_378) + -(x_380));
  let x_385 : vec4<f32> = x_107.unity_SHC;
  let x_387 : f32 = u_xlat38;
  let x_390 : vec3<f32> = u_xlat7;
  let x_391 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387, x_387, x_387)) + x_390);
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec3<f32> = u_xlat5;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_394 + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_398, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_401 : vec3<f32> = u_xlat3;
  let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
  let x_403 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_402.x, x_402.y, x_403.z);
  let x_405 : vec3<f32> = u_xlat3;
  let x_409 : vec2<f32> = clamp(vec2<f32>(x_405.x, x_405.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_410 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_409.x, x_409.y, x_410.z);
  let x_413 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_413) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_419 : f32 = u_xlat38;
  let x_422 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_419) + x_422);
  let x_424 : vec3<f32> = u_xlat0;
  let x_425 : f32 = u_xlat38;
  let x_427 : vec3<f32> = (x_424 * vec3<f32>(x_425, x_425, x_425));
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_430 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_434 : vec3<f32> = u_xlat3;
  let x_436 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_434.x, x_434.x, x_434.x) * x_436) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_442 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_442) + 1.0f);
  let x_445 : f32 = u_xlat38;
  let x_446 : f32 = u_xlat38;
  u_xlat3.x = (x_445 * x_446);
  let x_450 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_450, 0.0078125f);
  let x_456 : f32 = u_xlat3.x;
  let x_458 : f32 = u_xlat3.x;
  u_xlat15 = (x_456 * x_458);
  let x_460 : f32 = u_xlat39;
  u_xlat39 = (x_460 + 1.0f);
  let x_462 : f32 = u_xlat39;
  u_xlat39 = min(x_462, 1.0f);
  let x_466 : f32 = u_xlat3.x;
  u_xlat40 = ((x_466 * 4.0f) + 2.0f);
  let x_472 : f32 = u_xlat3.z;
  u_xlat27 = min(x_472, 1.0f);
  let x_476 : vec4<f32> = vs_INTERP3;
  let x_477 : vec2<f32> = vec2<f32>(x_476.x, x_476.y);
  let x_479 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_477.x, x_477.y, x_479);
  let x_492 : vec3<f32> = txVec0;
  let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_492.xy, x_492.z);
  u_xlat41 = x_494;
  let x_506 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat42 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat41;
  let x_511 : f32 = x_503.x_MainLightShadowParams.x;
  let x_513 : f32 = u_xlat42;
  u_xlat41 = ((x_509 * x_511) + x_513);
  let x_517 : f32 = vs_INTERP3.z;
  u_xlatb42 = (0.0f >= x_517);
  let x_521 : f32 = vs_INTERP3.z;
  u_xlatb7 = (x_521 >= 1.0f);
  let x_523 : bool = u_xlatb42;
  let x_524 : bool = u_xlatb7;
  u_xlatb42 = (x_523 | x_524);
  let x_526 : bool = u_xlatb42;
  let x_527 : f32 = u_xlat41;
  u_xlat41 = select(x_527, 1.0f, x_526);
  let x_529 : vec3<f32> = vs_INTERP7;
  let x_531 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat7 = (x_529 + -(x_531));
  let x_534 : vec3<f32> = u_xlat7;
  let x_535 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(x_534, x_535);
  let x_537 : f32 = u_xlat42;
  let x_539 : f32 = x_503.x_MainLightShadowParams.z;
  let x_542 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_537 * x_539) + x_542);
  let x_546 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_546, 0.0f, 1.0f);
  let x_550 : f32 = u_xlat41;
  u_xlat19 = (-(x_550) + 1.0f);
  let x_554 : f32 = u_xlat7.x;
  let x_555 : f32 = u_xlat19;
  let x_557 : f32 = u_xlat41;
  u_xlat41 = ((x_554 * x_555) + x_557);
  let x_559 : vec4<f32> = u_xlat1;
  let x_562 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_559.x, x_559.y, x_559.w)), vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_567 : f32 = u_xlat7.x;
  let x_569 : f32 = u_xlat7.x;
  u_xlat7.x = (x_567 + x_569);
  let x_572 : vec4<f32> = u_xlat4;
  let x_574 : vec3<f32> = u_xlat7;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat7 = ((vec3<f32>(x_572.x, x_572.y, x_572.z) * -(vec3<f32>(x_574.x, x_574.x, x_574.x))) + -(vec3<f32>(x_578.x, x_578.y, x_578.w)));
  let x_583 : vec4<f32> = u_xlat4;
  let x_585 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_585.x, x_585.y, x_585.w));
  let x_588 : f32 = u_xlat43;
  u_xlat43 = clamp(x_588, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat43;
  u_xlat43 = (-(x_590) + 1.0f);
  let x_593 : f32 = u_xlat43;
  let x_594 : f32 = u_xlat43;
  u_xlat43 = (x_593 * x_594);
  let x_596 : f32 = u_xlat43;
  let x_597 : f32 = u_xlat43;
  u_xlat43 = (x_596 * x_597);
  let x_600 : f32 = u_xlat38;
  u_xlat8.x = ((-(x_600) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_607 : f32 = u_xlat38;
  let x_609 : f32 = u_xlat8.x;
  u_xlat2.w = (x_607 * x_609);
  let x_612 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_612 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_625 : vec3<f32> = u_xlat7;
  let x_627 : f32 = u_xlat2.w;
  let x_628 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_625, x_627);
  u_xlat8 = x_628;
  let x_630 : f32 = u_xlat8.w;
  u_xlat38 = (x_630 + -1.0f);
  let x_633 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_634 : f32 = u_xlat38;
  u_xlat38 = ((x_633 * x_634) + 1.0f);
  let x_637 : f32 = u_xlat38;
  u_xlat38 = max(x_637, 0.0f);
  let x_639 : f32 = u_xlat38;
  u_xlat38 = log2(x_639);
  let x_641 : f32 = u_xlat38;
  let x_643 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_641 * x_643);
  let x_645 : f32 = u_xlat38;
  u_xlat38 = exp2(x_645);
  let x_647 : f32 = u_xlat38;
  let x_649 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_647 * x_649);
  let x_651 : vec4<f32> = u_xlat8;
  let x_653 : f32 = u_xlat38;
  u_xlat7 = (vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(x_653, x_653, x_653));
  let x_656 : vec3<f32> = u_xlat3;
  let x_658 : vec3<f32> = u_xlat3;
  let x_662 : vec2<f32> = ((vec2<f32>(x_656.x, x_656.x) * vec2<f32>(x_658.x, x_658.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_663 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
  let x_666 : f32 = u_xlat8.y;
  u_xlat38 = (1.0f / x_666);
  let x_669 : vec3<f32> = u_xlat0;
  let x_671 : f32 = u_xlat39;
  u_xlat20 = (-(x_669) + vec3<f32>(x_671, x_671, x_671));
  let x_674 : f32 = u_xlat43;
  let x_676 : vec3<f32> = u_xlat20;
  let x_678 : vec3<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_674, x_674, x_674) * x_676) + x_678);
  let x_680 : f32 = u_xlat38;
  let x_682 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_680, x_680, x_680) * x_682);
  let x_684 : vec3<f32> = u_xlat7;
  let x_685 : vec3<f32> = u_xlat20;
  u_xlat7 = (x_684 * x_685);
  let x_687 : vec3<f32> = u_xlat5;
  let x_688 : vec4<f32> = u_xlat6;
  let x_691 : vec3<f32> = u_xlat7;
  u_xlat5 = ((x_687 * vec3<f32>(x_688.x, x_688.y, x_688.z)) + x_691);
  let x_693 : f32 = u_xlat41;
  let x_695 : f32 = x_107.unity_LightData.z;
  u_xlat38 = (x_693 * x_695);
  let x_697 : vec4<f32> = u_xlat4;
  let x_700 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_705 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_705, 0.0f, 1.0f);
  let x_708 : f32 = u_xlat38;
  let x_710 : f32 = u_xlat3.x;
  u_xlat38 = (x_708 * x_710);
  let x_712 : f32 = u_xlat38;
  let x_715 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat1;
  let x_721 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_718.x, x_718.y, x_718.w) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec3<f32> = u_xlat20;
  let x_725 : vec3<f32> = u_xlat20;
  u_xlat38 = dot(x_724, x_725);
  let x_727 : f32 = u_xlat38;
  u_xlat38 = max(x_727, 1.17549435e-38f);
  let x_730 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_730);
  let x_732 : f32 = u_xlat38;
  let x_734 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_732, x_732, x_732) * x_734);
  let x_736 : vec4<f32> = u_xlat4;
  let x_738 : vec3<f32> = u_xlat20;
  u_xlat38 = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), x_738);
  let x_740 : f32 = u_xlat38;
  u_xlat38 = clamp(x_740, 0.0f, 1.0f);
  let x_743 : vec4<f32> = x_29.x_MainLightPosition;
  let x_745 : vec3<f32> = u_xlat20;
  u_xlat3.x = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), x_745);
  let x_749 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_749, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat38;
  let x_753 : f32 = u_xlat38;
  u_xlat38 = (x_752 * x_753);
  let x_755 : f32 = u_xlat38;
  let x_757 : f32 = u_xlat8.x;
  u_xlat38 = ((x_755 * x_757) + 1.00001001358032226562f);
  let x_762 : f32 = u_xlat3.x;
  let x_764 : f32 = u_xlat3.x;
  u_xlat3.x = (x_762 * x_764);
  let x_767 : f32 = u_xlat38;
  let x_768 : f32 = u_xlat38;
  u_xlat38 = (x_767 * x_768);
  let x_771 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_771, 0.10000000149011611938f);
  let x_775 : f32 = u_xlat38;
  let x_777 : f32 = u_xlat3.x;
  u_xlat38 = (x_775 * x_777);
  let x_779 : f32 = u_xlat40;
  let x_780 : f32 = u_xlat38;
  u_xlat38 = (x_779 * x_780);
  let x_782 : f32 = u_xlat15;
  let x_783 : f32 = u_xlat38;
  u_xlat38 = (x_782 / x_783);
  let x_785 : vec3<f32> = u_xlat0;
  let x_786 : f32 = u_xlat38;
  let x_789 : vec4<f32> = u_xlat6;
  u_xlat20 = ((x_785 * vec3<f32>(x_786, x_786, x_786)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec3<f32> = u_xlat7;
  let x_793 : vec3<f32> = u_xlat20;
  u_xlat7 = (x_792 * x_793);
  let x_796 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_798 : f32 = x_107.unity_LightData.y;
  u_xlat38 = min(x_796, x_798);
  let x_802 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_802));
  let x_805 : f32 = u_xlat42;
  let x_808 : f32 = x_503.x_AdditionalShadowFadeParams.x;
  let x_811 : f32 = x_503.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_805 * x_808) + x_811);
  let x_815 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_815, 0.0f, 1.0f);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_828 : u32 = u_xlatu_loop_1;
    let x_829 : u32 = u_xlatu38;
    if ((x_828 < x_829)) {
    } else {
      break;
    }
    let x_832 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_832 >> 2u);
    let x_836 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_836 & 3u));
    let x_839 : u32 = u_xlatu41;
    let x_842 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_839)];
    let x_852 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_857 : vec4<u32> = indexable[x_852];
    u_xlat41 = dot(x_842, bitcast<vec4<f32>>(x_857));
    let x_861 : f32 = u_xlat41;
    u_xlati41 = i32(x_861);
    let x_864 : vec3<f32> = vs_INTERP7;
    let x_875 : i32 = u_xlati41;
    let x_877 : vec4<f32> = x_874.x_AdditionalLightsPosition[x_875];
    let x_880 : i32 = u_xlati41;
    let x_882 : vec4<f32> = x_874.x_AdditionalLightsPosition[x_880];
    u_xlat9 = ((-(x_864) * vec3<f32>(x_877.w, x_877.w, x_877.w)) + vec3<f32>(x_882.x, x_882.y, x_882.z));
    let x_885 : vec3<f32> = u_xlat9;
    let x_886 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(x_885, x_886);
    let x_888 : f32 = u_xlat42;
    u_xlat42 = max(x_888, 0.00006103515625f);
    let x_891 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_891);
    let x_894 : f32 = u_xlat43;
    let x_896 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_894, x_894, x_894) * x_896);
    let x_899 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_899);
    let x_901 : f32 = u_xlat42;
    let x_902 : i32 = u_xlati41;
    let x_904 : f32 = x_874.x_AdditionalLightsAttenuation[x_902].x;
    u_xlat42 = (x_901 * x_904);
    let x_906 : f32 = u_xlat42;
    let x_908 : f32 = u_xlat42;
    u_xlat42 = ((-(x_906) * x_908) + 1.0f);
    let x_911 : f32 = u_xlat42;
    u_xlat42 = max(x_911, 0.0f);
    let x_913 : f32 = u_xlat42;
    let x_914 : f32 = u_xlat42;
    u_xlat42 = (x_913 * x_914);
    let x_916 : f32 = u_xlat42;
    let x_917 : f32 = u_xlat45;
    u_xlat42 = (x_916 * x_917);
    let x_919 : i32 = u_xlati41;
    let x_921 : vec4<f32> = x_874.x_AdditionalLightsSpotDir[x_919];
    let x_923 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), x_923);
    let x_925 : f32 = u_xlat45;
    let x_926 : i32 = u_xlati41;
    let x_928 : f32 = x_874.x_AdditionalLightsAttenuation[x_926].z;
    let x_930 : i32 = u_xlati41;
    let x_932 : f32 = x_874.x_AdditionalLightsAttenuation[x_930].w;
    u_xlat45 = ((x_925 * x_928) + x_932);
    let x_934 : f32 = u_xlat45;
    u_xlat45 = clamp(x_934, 0.0f, 1.0f);
    let x_936 : f32 = u_xlat45;
    let x_937 : f32 = u_xlat45;
    u_xlat45 = (x_936 * x_937);
    let x_939 : f32 = u_xlat42;
    let x_940 : f32 = u_xlat45;
    u_xlat42 = (x_939 * x_940);
    let x_944 : i32 = u_xlati41;
    let x_946 : f32 = x_503.x_AdditionalShadowParams[x_944].w;
    u_xlati45 = i32(x_946);
    let x_949 : i32 = u_xlati45;
    u_xlatb46 = (x_949 >= 0i);
    let x_951 : bool = u_xlatb46;
    if (x_951) {
      let x_955 : i32 = u_xlati41;
      let x_957 : f32 = x_503.x_AdditionalShadowParams[x_955].z;
      u_xlatb46 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_957, x_957, x_957, x_957))));
      let x_962 : bool = u_xlatb46;
      if (x_962) {
        let x_967 : vec3<f32> = u_xlat10;
        let x_970 : vec3<f32> = u_xlat10;
        let x_973 : vec4<bool> = (abs(vec4<f32>(x_967.z, x_967.z, x_967.y, x_967.z)) >= abs(vec4<f32>(x_970.x, x_970.y, x_970.x, x_970.x)));
        let x_975 : vec3<bool> = vec3<bool>(x_973.x, x_973.y, x_973.z);
        let x_976 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_979 : bool = u_xlatb11.y;
        let x_981 : bool = u_xlatb11.x;
        u_xlatb46 = (x_979 & x_981);
        let x_983 : vec3<f32> = u_xlat10;
        let x_986 : vec4<bool> = (-(vec4<f32>(x_983.z, x_983.y, x_983.z, x_983.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_987 : vec3<bool> = vec3<bool>(x_986.x, x_986.y, x_986.w);
        let x_988 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_987.x, x_987.y, x_988.z, x_987.z);
        let x_992 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_992);
        let x_997 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_997);
        let x_1003 : bool = u_xlatb11.w;
        u_xlat47 = select(0.0f, 1.0f, x_1003);
        let x_1007 : bool = u_xlatb11.z;
        if (x_1007) {
          let x_1013 : f32 = u_xlat11.y;
          x_1009 = x_1013;
        } else {
          let x_1015 : f32 = u_xlat47;
          x_1009 = x_1015;
        }
        let x_1016 : f32 = x_1009;
        u_xlat23 = x_1016;
        let x_1018 : bool = u_xlatb46;
        if (x_1018) {
          let x_1023 : f32 = u_xlat11.x;
          x_1019 = x_1023;
        } else {
          let x_1025 : f32 = u_xlat23;
          x_1019 = x_1025;
        }
        let x_1026 : f32 = x_1019;
        u_xlat46 = x_1026;
        let x_1027 : i32 = u_xlati41;
        let x_1029 : f32 = x_503.x_AdditionalShadowParams[x_1027].w;
        u_xlat11.x = trunc(x_1029);
        let x_1032 : f32 = u_xlat46;
        let x_1034 : f32 = u_xlat11.x;
        u_xlat46 = (x_1032 + x_1034);
        let x_1036 : f32 = u_xlat46;
        u_xlati45 = i32(x_1036);
      }
      let x_1038 : i32 = u_xlati45;
      u_xlati45 = (x_1038 << bitcast<u32>(2i));
      let x_1040 : vec3<f32> = vs_INTERP7;
      let x_1043 : i32 = u_xlati45;
      let x_1046 : i32 = u_xlati45;
      let x_1050 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_1043 + 1i) / 4i)][((x_1046 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1040.y, x_1040.y, x_1040.y, x_1040.y) * x_1050);
      let x_1052 : i32 = u_xlati45;
      let x_1054 : i32 = u_xlati45;
      let x_1057 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[(x_1052 / 4i)][(x_1054 % 4i)];
      let x_1058 : vec3<f32> = vs_INTERP7;
      let x_1061 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1057 * vec4<f32>(x_1058.x, x_1058.x, x_1058.x, x_1058.x)) + x_1061);
      let x_1063 : i32 = u_xlati45;
      let x_1066 : i32 = u_xlati45;
      let x_1070 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_1063 + 2i) / 4i)][((x_1066 + 2i) % 4i)];
      let x_1071 : vec3<f32> = vs_INTERP7;
      let x_1074 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1070 * vec4<f32>(x_1071.z, x_1071.z, x_1071.z, x_1071.z)) + x_1074);
      let x_1076 : vec4<f32> = u_xlat11;
      let x_1077 : i32 = u_xlati45;
      let x_1080 : i32 = u_xlati45;
      let x_1084 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_1077 + 3i) / 4i)][((x_1080 + 3i) % 4i)];
      u_xlat11 = (x_1076 + x_1084);
      let x_1086 : vec4<f32> = u_xlat11;
      let x_1088 : vec4<f32> = u_xlat11;
      let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) / vec3<f32>(x_1088.w, x_1088.w, x_1088.w));
      let x_1091 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
      let x_1094 : vec4<f32> = u_xlat11;
      let x_1095 : vec2<f32> = vec2<f32>(x_1094.x, x_1094.y);
      let x_1097 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
      let x_1105 : vec3<f32> = txVec1;
      let x_1107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1105.xy, x_1105.z);
      u_xlat45 = x_1107;
      let x_1108 : i32 = u_xlati41;
      let x_1110 : f32 = x_503.x_AdditionalShadowParams[x_1108].x;
      u_xlat46 = (1.0f + -(x_1110));
      let x_1113 : f32 = u_xlat45;
      let x_1114 : i32 = u_xlati41;
      let x_1116 : f32 = x_503.x_AdditionalShadowParams[x_1114].x;
      let x_1118 : f32 = u_xlat46;
      u_xlat45 = ((x_1113 * x_1116) + x_1118);
      let x_1121 : f32 = u_xlat11.z;
      u_xlatb46 = (0.0f >= x_1121);
      let x_1124 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1124 >= 1.0f);
      let x_1127 : bool = u_xlatb46;
      let x_1129 : bool = u_xlatb11.x;
      u_xlatb46 = (x_1127 | x_1129);
      let x_1131 : bool = u_xlatb46;
      let x_1132 : f32 = u_xlat45;
      u_xlat45 = select(x_1132, 1.0f, x_1131);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1135 : f32 = u_xlat45;
    u_xlat46 = (-(x_1135) + 1.0f);
    let x_1139 : f32 = u_xlat3.x;
    let x_1140 : f32 = u_xlat46;
    let x_1142 : f32 = u_xlat45;
    u_xlat45 = ((x_1139 * x_1140) + x_1142);
    let x_1144 : f32 = u_xlat42;
    let x_1145 : f32 = u_xlat45;
    u_xlat42 = (x_1144 * x_1145);
    let x_1147 : vec4<f32> = u_xlat4;
    let x_1149 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1147.x, x_1147.y, x_1147.z), x_1149);
    let x_1151 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1151, 0.0f, 1.0f);
    let x_1153 : f32 = u_xlat42;
    let x_1154 : f32 = u_xlat45;
    u_xlat42 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat42;
    let x_1158 : i32 = u_xlati41;
    let x_1160 : vec4<f32> = x_874.x_AdditionalLightsColor[x_1158];
    let x_1162 : vec3<f32> = (vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
    let x_1163 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
    let x_1165 : vec3<f32> = u_xlat9;
    let x_1166 : f32 = u_xlat43;
    let x_1169 : vec4<f32> = u_xlat1;
    u_xlat9 = ((x_1165 * vec3<f32>(x_1166, x_1166, x_1166)) + vec3<f32>(x_1169.x, x_1169.y, x_1169.w));
    let x_1172 : vec3<f32> = u_xlat9;
    let x_1173 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1172, x_1173);
    let x_1175 : f32 = u_xlat41;
    u_xlat41 = max(x_1175, 1.17549435e-38f);
    let x_1177 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1177);
    let x_1179 : f32 = u_xlat41;
    let x_1181 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1179, x_1179, x_1179) * x_1181);
    let x_1183 : vec4<f32> = u_xlat4;
    let x_1185 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1183.x, x_1183.y, x_1183.z), x_1185);
    let x_1187 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1187, 0.0f, 1.0f);
    let x_1189 : vec3<f32> = u_xlat10;
    let x_1190 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(x_1189, x_1190);
    let x_1192 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1192, 0.0f, 1.0f);
    let x_1194 : f32 = u_xlat41;
    let x_1195 : f32 = u_xlat41;
    u_xlat41 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat41;
    let x_1199 : f32 = u_xlat8.x;
    u_xlat41 = ((x_1197 * x_1199) + 1.00001001358032226562f);
    let x_1202 : f32 = u_xlat42;
    let x_1203 : f32 = u_xlat42;
    u_xlat42 = (x_1202 * x_1203);
    let x_1205 : f32 = u_xlat41;
    let x_1206 : f32 = u_xlat41;
    u_xlat41 = (x_1205 * x_1206);
    let x_1208 : f32 = u_xlat42;
    u_xlat42 = max(x_1208, 0.10000000149011611938f);
    let x_1210 : f32 = u_xlat41;
    let x_1211 : f32 = u_xlat42;
    u_xlat41 = (x_1210 * x_1211);
    let x_1213 : f32 = u_xlat40;
    let x_1214 : f32 = u_xlat41;
    u_xlat41 = (x_1213 * x_1214);
    let x_1216 : f32 = u_xlat15;
    let x_1217 : f32 = u_xlat41;
    u_xlat41 = (x_1216 / x_1217);
    let x_1219 : vec3<f32> = u_xlat0;
    let x_1220 : f32 = u_xlat41;
    let x_1223 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1219 * vec3<f32>(x_1220, x_1220, x_1220)) + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
    let x_1226 : vec3<f32> = u_xlat9;
    let x_1227 : vec4<f32> = u_xlat11;
    let x_1230 : vec3<f32> = u_xlat20;
    u_xlat20 = ((x_1226 * vec3<f32>(x_1227.x, x_1227.y, x_1227.z)) + x_1230);

    continuing {
      let x_1232 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1232 + bitcast<u32>(1i));
    }
  }
  let x_1234 : vec3<f32> = u_xlat5;
  let x_1235 : f32 = u_xlat27;
  let x_1238 : vec3<f32> = u_xlat7;
  u_xlat0 = ((x_1234 * vec3<f32>(x_1235, x_1235, x_1235)) + x_1238);
  let x_1240 : vec3<f32> = u_xlat20;
  let x_1241 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1240 + x_1241);
  let x_1243 : vec4<f32> = u_xlat2;
  let x_1245 : f32 = u_xlat25;
  let x_1248 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(x_1245, x_1245, x_1245)) + x_1248);
  let x_1250 : f32 = u_xlat36;
  let x_1251 : f32 = u_xlat36;
  u_xlat36 = (x_1250 * -(x_1251));
  let x_1254 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1254);
  let x_1256 : vec3<f32> = u_xlat0;
  let x_1258 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_1256 + -(vec3<f32>(x_1258.x, x_1258.y, x_1258.z)));
  let x_1264 : f32 = u_xlat36;
  let x_1266 : vec3<f32> = u_xlat0;
  let x_1269 : vec4<f32> = x_29.unity_FogColor;
  let x_1271 : vec3<f32> = ((vec3<f32>(x_1264, x_1264, x_1264) * x_1266) + vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
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


