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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat53 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb53 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb79 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat80 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb78 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_276 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlatb57 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat57 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_2237 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

fn main_1() {
  var x_260 : vec3<f32>;
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
  var x_1867 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2369 : f32;
  var x_2379 : f32;
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
  u_xlat78 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat78;
  u_xlat78 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat78;
  u_xlat78 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_84);
  let x_86 : f32 = u_xlat78;
  u_xlat78 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat53 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_117);
  let x_119 : f32 = u_xlat53;
  u_xlat53 = fract(x_119);
  let x_121 : f32 = u_xlat53;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat53 = (x_121 + x_124);
  let x_129 : f32 = u_xlat53;
  u_xlatb53 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb53;
  u_xlat53 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb79 = (0.0f < x_151);
  let x_154 : bool = u_xlatb79;
  u_xlat79 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb80 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb80;
  u_xlat80 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat79;
  let x_164 : f32 = u_xlat80;
  u_xlat79 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  u_xlat4 = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec3<f32> = vs_INTERP8;
  let x_176 : vec4<f32> = vs_INTERP4;
  let x_179 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.z, x_176.x, x_176.y)) + -(x_179));
  let x_182 : f32 = u_xlat79;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_186.y, x_186.y, x_186.y) * x_188);
  let x_190 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = vs_INTERP4;
  let x_195 : vec3<f32> = u_xlat4;
  let x_196 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.x, x_190.x) * vec3<f32>(x_192.x, x_192.y, x_192.z)) + x_195);
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_196.z);
  let x_199 : f32 = u_xlat78;
  let x_201 : vec3<f32> = vs_INTERP8;
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = ((vec3<f32>(x_199, x_199, x_199) * x_201) + vec3<f32>(x_203.x, x_203.y, x_203.w));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_205.z);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec3<f32>(x_208.x, x_208.y, x_208.w), vec3<f32>(x_210.x, x_210.y, x_210.w));
  let x_213 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_213);
  let x_215 : f32 = u_xlat78;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215, x_215, x_215) * vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_225 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb78 = (x_225 == 0.0f);
  let x_228 : vec3<f32> = vs_INTERP7;
  let x_233 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_228) + x_233);
  let x_235 : vec3<f32> = u_xlat4;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat80 = dot(x_235, x_236);
  let x_238 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_238);
  let x_240 : f32 = u_xlat80;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_240, x_240, x_240) * x_242);
  let x_247 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_247;
  let x_251 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_251;
  let x_256 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_256;
  let x_258 : bool = u_xlatb78;
  if (x_258) {
    let x_263 : vec3<f32> = u_xlat4;
    x_260 = x_263;
  } else {
    let x_265 : vec4<f32> = u_xlat5;
    x_260 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  }
  let x_267 : vec3<f32> = x_260;
  u_xlat4 = x_267;
  let x_268 : vec3<f32> = vs_INTERP7;
  let x_278 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres0;
  let x_281 : vec3<f32> = (x_268 + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : vec3<f32> = vs_INTERP7;
  let x_287 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres1;
  let x_290 : vec3<f32> = (x_285 + -(vec3<f32>(x_287.x, x_287.y, x_287.z)));
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : vec3<f32> = vs_INTERP7;
  let x_296 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_294 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_301 : vec3<f32> = vs_INTERP7;
  let x_303 : vec4<f32> = x_276.x_CascadeShadowSplitSpheres3;
  let x_306 : vec3<f32> = (x_301 + -(vec3<f32>(x_303.x, x_303.y, x_303.z)));
  let x_307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec3<f32> = u_xlat7;
  let x_322 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_321, x_322);
  let x_325 : vec4<f32> = u_xlat8;
  let x_327 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_334 : vec4<f32> = u_xlat5;
  let x_337 : vec4<f32> = x_276.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_334 < x_337);
  let x_340 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_340);
  let x_344 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_344);
  let x_348 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_356);
  let x_361 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_361);
  let x_365 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_365);
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec4<f32> = u_xlat6;
  let x_372 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) + vec3<f32>(x_370.y, x_370.z, x_370.w));
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = max(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_378.z);
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_381, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_386 : f32 = u_xlat78;
  u_xlat78 = (-(x_386) + 4.0f);
  let x_391 : f32 = u_xlat78;
  u_xlatu78 = u32(x_391);
  let x_395 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_395) << bitcast<u32>(2i));
  let x_398 : vec3<f32> = vs_INTERP7;
  let x_400 : i32 = u_xlati78;
  let x_403 : i32 = u_xlati78;
  let x_407 : vec4<f32> = x_276.x_MainLightWorldToShadow[((x_400 + 1i) / 4i)][((x_403 + 1i) % 4i)];
  let x_409 : vec3<f32> = (vec3<f32>(x_398.y, x_398.y, x_398.y) * vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : i32 = u_xlati78;
  let x_414 : i32 = u_xlati78;
  let x_417 : vec4<f32> = x_276.x_MainLightWorldToShadow[(x_412 / 4i)][(x_414 % 4i)];
  let x_419 : vec3<f32> = vs_INTERP7;
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec3<f32> = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419.x, x_419.x, x_419.x)) + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : i32 = u_xlati78;
  let x_430 : i32 = u_xlati78;
  let x_434 : vec4<f32> = x_276.x_MainLightWorldToShadow[((x_427 + 2i) / 4i)][((x_430 + 2i) % 4i)];
  let x_436 : vec3<f32> = vs_INTERP7;
  let x_439 : vec4<f32> = u_xlat5;
  let x_441 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_436.z, x_436.z, x_436.z)) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat5;
  let x_446 : i32 = u_xlati78;
  let x_449 : i32 = u_xlati78;
  let x_453 : vec4<f32> = x_276.x_MainLightWorldToShadow[((x_446 + 3i) / 4i)][((x_449 + 3i) % 4i)];
  let x_455 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : f32 = vs_INTERP7.y;
  let x_461 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_459 * x_461);
  let x_464 : f32 = x_29.unity_MatrixV[0i].z;
  let x_466 : f32 = vs_INTERP7.x;
  let x_468 : f32 = u_xlat78;
  u_xlat78 = ((x_464 * x_466) + x_468);
  let x_471 : f32 = x_29.unity_MatrixV[2i].z;
  let x_473 : f32 = vs_INTERP7.z;
  let x_475 : f32 = u_xlat78;
  u_xlat78 = ((x_471 * x_473) + x_475);
  let x_477 : f32 = u_xlat78;
  let x_479 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_477 + x_479);
  let x_481 : f32 = u_xlat78;
  let x_484 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_481) + -(x_484));
  let x_487 : f32 = u_xlat78;
  u_xlat78 = max(x_487, 0.0f);
  let x_489 : f32 = u_xlat78;
  let x_492 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_489 * x_492);
  let x_501 : vec2<f32> = vs_INTERP0;
  let x_503 : f32 = x_29.x_GlobalMipBias.x;
  let x_504 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_501, x_503);
  u_xlat6 = x_504;
  let x_509 : vec2<f32> = vs_INTERP0;
  let x_511 : f32 = x_29.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  u_xlat7 = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat6;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.y, x_514.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_521.x, x_521.y, x_521.w), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : f32 = u_xlat80;
  u_xlat80 = (x_526 + 0.5f);
  let x_529 : f32 = u_xlat80;
  let x_531 : vec3<f32> = u_xlat7;
  let x_532 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * x_531);
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : f32 = u_xlat6.w;
  u_xlat80 = max(x_536, 0.00009999999747378752f);
  let x_539 : vec4<f32> = u_xlat6;
  let x_541 : f32 = u_xlat80;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) / vec3<f32>(x_541, x_541, x_541));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec3<f32> = u_xlat3;
  let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
  let x_548 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_547.x, x_547.y, x_548.z);
  let x_550 : vec3<f32> = u_xlat3;
  let x_554 : vec2<f32> = clamp(vec2<f32>(x_550.x, x_550.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_555 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_554.x, x_554.y, x_555.z);
  let x_558 : f32 = u_xlat3.x;
  u_xlat80 = ((-(x_558) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_564 : f32 = u_xlat80;
  let x_567 : f32 = u_xlat3.y;
  u_xlat81 = (-(x_564) + x_567);
  let x_569 : vec3<f32> = u_xlat0;
  let x_570 : f32 = u_xlat80;
  u_xlat7 = (x_569 * vec3<f32>(x_570, x_570, x_570));
  let x_573 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_573 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_577 : vec3<f32> = u_xlat3;
  let x_579 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_577.x, x_577.x, x_577.x) * x_579) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_585 : f32 = u_xlat3.y;
  u_xlat80 = (-(x_585) + 1.0f);
  let x_588 : f32 = u_xlat80;
  let x_589 : f32 = u_xlat80;
  u_xlat3.x = (x_588 * x_589);
  let x_593 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_593, 0.0078125f);
  let x_599 : f32 = u_xlat3.x;
  let x_601 : f32 = u_xlat3.x;
  u_xlat29 = (x_599 * x_601);
  let x_603 : f32 = u_xlat81;
  u_xlat81 = (x_603 + 1.0f);
  let x_605 : f32 = u_xlat81;
  u_xlat81 = min(x_605, 1.0f);
  let x_609 : f32 = u_xlat3.x;
  u_xlat82 = ((x_609 * 4.0f) + 2.0f);
  let x_614 : f32 = u_xlat3.z;
  u_xlat55 = min(x_614, 1.0f);
  let x_619 : f32 = x_276.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_619);
  let x_621 : bool = u_xlatb83;
  if (x_621) {
    let x_625 : f32 = x_276.x_MainLightShadowParams.y;
    u_xlatb83 = (x_625 == 1.0f);
    let x_627 : bool = u_xlatb83;
    if (x_627) {
      let x_630 : vec4<f32> = u_xlat5;
      let x_633 : vec4<f32> = x_276.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y) + x_633);
      let x_636 : vec4<f32> = u_xlat8;
      let x_637 : vec2<f32> = vec2<f32>(x_636.x, x_636.y);
      let x_639 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_637.x, x_637.y, x_639);
      let x_652 : vec3<f32> = txVec0;
      let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_652.xy, x_652.z);
      u_xlat9.x = x_654;
      let x_657 : vec4<f32> = u_xlat8;
      let x_658 : vec2<f32> = vec2<f32>(x_657.z, x_657.w);
      let x_660 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_658.x, x_658.y, x_660);
      let x_667 : vec3<f32> = txVec1;
      let x_669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_667.xy, x_667.z);
      u_xlat9.y = x_669;
      let x_671 : vec4<f32> = u_xlat5;
      let x_674 : vec4<f32> = x_276.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y) + x_674);
      let x_677 : vec4<f32> = u_xlat8;
      let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
      let x_680 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_678.x, x_678.y, x_680);
      let x_687 : vec3<f32> = txVec2;
      let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
      u_xlat9.z = x_689;
      let x_692 : vec4<f32> = u_xlat8;
      let x_693 : vec2<f32> = vec2<f32>(x_692.z, x_692.w);
      let x_695 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_693.x, x_693.y, x_695);
      let x_702 : vec3<f32> = txVec3;
      let x_704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_702.xy, x_702.z);
      u_xlat9.w = x_704;
      let x_707 : vec4<f32> = u_xlat9;
      u_xlat83 = dot(x_707, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_714 : f32 = x_276.x_MainLightShadowParams.y;
      u_xlatb84 = (x_714 == 2.0f);
      let x_716 : bool = u_xlatb84;
      if (x_716) {
        let x_719 : vec4<f32> = u_xlat5;
        let x_722 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_726 : vec2<f32> = ((vec2<f32>(x_719.x, x_719.y) * vec2<f32>(x_722.z, x_722.w)) + vec2<f32>(0.5f, 0.5f));
        let x_727 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat8;
        let x_731 : vec2<f32> = floor(vec2<f32>(x_729.x, x_729.y));
        let x_732 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_736 : vec4<f32> = u_xlat5;
        let x_739 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_736.x, x_736.y) * vec2<f32>(x_739.z, x_739.w)) + -(vec2<f32>(x_742.x, x_742.y)));
        let x_746 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_746.x, x_746.x, x_746.y, x_746.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_751 : vec4<f32> = u_xlat9;
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_751.x, x_751.x, x_751.z, x_751.z) * vec4<f32>(x_753.x, x_753.x, x_753.z, x_753.z));
        let x_756 : vec4<f32> = u_xlat10;
        let x_760 : vec2<f32> = (vec2<f32>(x_756.y, x_756.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_761 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_760.x, x_761.y, x_760.y, x_761.w);
        let x_763 : vec4<f32> = u_xlat10;
        let x_766 : vec2<f32> = u_xlat60;
        let x_768 : vec2<f32> = ((vec2<f32>(x_763.x, x_763.z) * vec2<f32>(0.5f, 0.5f)) + -(x_766));
        let x_769 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
        let x_772 : vec2<f32> = u_xlat60;
        u_xlat62 = (-(x_772) + vec2<f32>(1.0f, 1.0f));
        let x_777 : vec2<f32> = u_xlat60;
        let x_779 : vec2<f32> = min(x_777, vec2<f32>(0.0f, 0.0f));
        let x_780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec4<f32> = u_xlat11;
        let x_785 : vec4<f32> = u_xlat11;
        let x_788 : vec2<f32> = u_xlat62;
        let x_789 : vec2<f32> = ((-(vec2<f32>(x_782.x, x_782.y)) * vec2<f32>(x_785.x, x_785.y)) + x_788);
        let x_790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
        let x_792 : vec2<f32> = u_xlat60;
        u_xlat60 = max(x_792, vec2<f32>(0.0f, 0.0f));
        let x_794 : vec2<f32> = u_xlat60;
        let x_796 : vec2<f32> = u_xlat60;
        let x_798 : vec4<f32> = u_xlat9;
        u_xlat60 = ((-(x_794) * x_796) + vec2<f32>(x_798.y, x_798.w));
        let x_801 : vec4<f32> = u_xlat11;
        let x_803 : vec2<f32> = (vec2<f32>(x_801.x, x_801.y) + vec2<f32>(1.0f, 1.0f));
        let x_804 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
        let x_806 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_806 + vec2<f32>(1.0f, 1.0f));
        let x_809 : vec4<f32> = u_xlat10;
        let x_813 : vec2<f32> = (vec2<f32>(x_809.x, x_809.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_814 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec2<f32> = u_xlat62;
        let x_817 : vec2<f32> = (x_816 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_818 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec4<f32> = u_xlat11;
        let x_822 : vec2<f32> = (vec2<f32>(x_820.x, x_820.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_823 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_826 : vec2<f32> = u_xlat60;
        let x_827 : vec2<f32> = (x_826 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_828 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_830.y, x_830.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_834 : f32 = u_xlat11.x;
        u_xlat12.z = x_834;
        let x_837 : f32 = u_xlat60.x;
        u_xlat12.w = x_837;
        let x_840 : f32 = u_xlat13.x;
        u_xlat10.z = x_840;
        let x_843 : f32 = u_xlat9.x;
        u_xlat10.w = x_843;
        let x_846 : vec4<f32> = u_xlat10;
        let x_848 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_846.z, x_846.w, x_846.x, x_846.z) + vec4<f32>(x_848.z, x_848.w, x_848.x, x_848.z));
        let x_852 : f32 = u_xlat12.y;
        u_xlat11.z = x_852;
        let x_855 : f32 = u_xlat60.y;
        u_xlat11.w = x_855;
        let x_858 : f32 = u_xlat10.y;
        u_xlat13.z = x_858;
        let x_861 : f32 = u_xlat9.z;
        u_xlat13.w = x_861;
        let x_863 : vec4<f32> = u_xlat11;
        let x_865 : vec4<f32> = u_xlat13;
        let x_867 : vec3<f32> = (vec3<f32>(x_863.z, x_863.y, x_863.w) + vec3<f32>(x_865.z, x_865.y, x_865.w));
        let x_868 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
        let x_870 : vec4<f32> = u_xlat10;
        let x_872 : vec4<f32> = u_xlat14;
        let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.z, x_870.w) / vec3<f32>(x_872.z, x_872.w, x_872.y));
        let x_875 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
        let x_877 : vec4<f32> = u_xlat10;
        let x_882 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_883 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
        let x_885 : vec4<f32> = u_xlat13;
        let x_887 : vec4<f32> = u_xlat9;
        let x_889 : vec3<f32> = (vec3<f32>(x_885.z, x_885.y, x_885.w) / vec3<f32>(x_887.x, x_887.y, x_887.z));
        let x_890 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat11;
        let x_894 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_895 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat10;
        let x_900 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_902 : vec3<f32> = (vec3<f32>(x_897.y, x_897.x, x_897.z) * vec3<f32>(x_900.x, x_900.x, x_900.x));
        let x_903 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat11;
        let x_908 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_910 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) * vec3<f32>(x_908.y, x_908.y, x_908.y));
        let x_911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
        let x_914 : f32 = u_xlat11.x;
        u_xlat10.w = x_914;
        let x_916 : vec4<f32> = u_xlat8;
        let x_919 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_922 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y) * vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y)) + vec4<f32>(x_922.y, x_922.w, x_922.x, x_922.w));
        let x_925 : vec4<f32> = u_xlat8;
        let x_928 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_925.x, x_925.y) * vec2<f32>(x_928.x, x_928.y)) + vec2<f32>(x_931.z, x_931.w));
        let x_935 : f32 = u_xlat10.y;
        u_xlat11.w = x_935;
        let x_937 : vec4<f32> = u_xlat11;
        let x_938 : vec2<f32> = vec2<f32>(x_937.y, x_937.z);
        let x_939 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_939.x, x_938.x, x_939.z, x_938.y);
        let x_941 : vec4<f32> = u_xlat8;
        let x_944 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_941.x, x_941.y, x_941.x, x_941.y) * vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y)) + vec4<f32>(x_947.x, x_947.y, x_947.z, x_947.y));
        let x_950 : vec4<f32> = u_xlat8;
        let x_953 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_956 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_950.x, x_950.y, x_950.x, x_950.y) * vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y)) + vec4<f32>(x_956.w, x_956.y, x_956.w, x_956.z));
        let x_959 : vec4<f32> = u_xlat8;
        let x_962 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_965 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.y) * vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y)) + vec4<f32>(x_965.x, x_965.w, x_965.z, x_965.w));
        let x_969 : vec4<f32> = u_xlat9;
        let x_971 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_969.x, x_969.x, x_969.x, x_969.y) * vec4<f32>(x_971.z, x_971.w, x_971.y, x_971.z));
        let x_975 : vec4<f32> = u_xlat9;
        let x_977 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_975.y, x_975.y, x_975.z, x_975.z) * x_977);
        let x_981 : f32 = u_xlat9.z;
        let x_983 : f32 = u_xlat14.y;
        u_xlat84 = (x_981 * x_983);
        let x_986 : vec4<f32> = u_xlat12;
        let x_987 : vec2<f32> = vec2<f32>(x_986.x, x_986.y);
        let x_989 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_997 : vec3<f32> = txVec4;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat85 = x_999;
        let x_1001 : vec4<f32> = u_xlat12;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.z, x_1001.w);
        let x_1004 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1011 : vec3<f32> = txVec5;
        let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
        u_xlat8.x = x_1013;
        let x_1016 : f32 = u_xlat8.x;
        let x_1018 : f32 = u_xlat15.y;
        u_xlat8.x = (x_1016 * x_1018);
        let x_1022 : f32 = u_xlat15.x;
        let x_1023 : f32 = u_xlat85;
        let x_1026 : f32 = u_xlat8.x;
        u_xlat85 = ((x_1022 * x_1023) + x_1026);
        let x_1029 : vec2<f32> = u_xlat60;
        let x_1031 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1029.x, x_1029.y, x_1031);
        let x_1038 : vec3<f32> = txVec6;
        let x_1040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1038.xy, x_1038.z);
        u_xlat8.x = x_1040;
        let x_1043 : f32 = u_xlat15.z;
        let x_1045 : f32 = u_xlat8.x;
        let x_1047 : f32 = u_xlat85;
        u_xlat85 = ((x_1043 * x_1045) + x_1047);
        let x_1050 : vec4<f32> = u_xlat11;
        let x_1051 : vec2<f32> = vec2<f32>(x_1050.x, x_1050.y);
        let x_1053 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1051.x, x_1051.y, x_1053);
        let x_1060 : vec3<f32> = txVec7;
        let x_1062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1060.xy, x_1060.z);
        u_xlat8.x = x_1062;
        let x_1065 : f32 = u_xlat15.w;
        let x_1067 : f32 = u_xlat8.x;
        let x_1069 : f32 = u_xlat85;
        u_xlat85 = ((x_1065 * x_1067) + x_1069);
        let x_1072 : vec4<f32> = u_xlat13;
        let x_1073 : vec2<f32> = vec2<f32>(x_1072.x, x_1072.y);
        let x_1075 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1073.x, x_1073.y, x_1075);
        let x_1082 : vec3<f32> = txVec8;
        let x_1084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1082.xy, x_1082.z);
        u_xlat8.x = x_1084;
        let x_1087 : f32 = u_xlat16.x;
        let x_1089 : f32 = u_xlat8.x;
        let x_1091 : f32 = u_xlat85;
        u_xlat85 = ((x_1087 * x_1089) + x_1091);
        let x_1094 : vec4<f32> = u_xlat13;
        let x_1095 : vec2<f32> = vec2<f32>(x_1094.z, x_1094.w);
        let x_1097 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
        let x_1104 : vec3<f32> = txVec9;
        let x_1106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1104.xy, x_1104.z);
        u_xlat8.x = x_1106;
        let x_1109 : f32 = u_xlat16.y;
        let x_1111 : f32 = u_xlat8.x;
        let x_1113 : f32 = u_xlat85;
        u_xlat85 = ((x_1109 * x_1111) + x_1113);
        let x_1116 : vec4<f32> = u_xlat11;
        let x_1117 : vec2<f32> = vec2<f32>(x_1116.z, x_1116.w);
        let x_1119 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1117.x, x_1117.y, x_1119);
        let x_1126 : vec3<f32> = txVec10;
        let x_1128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1126.xy, x_1126.z);
        u_xlat8.x = x_1128;
        let x_1131 : f32 = u_xlat16.z;
        let x_1133 : f32 = u_xlat8.x;
        let x_1135 : f32 = u_xlat85;
        u_xlat85 = ((x_1131 * x_1133) + x_1135);
        let x_1138 : vec4<f32> = u_xlat10;
        let x_1139 : vec2<f32> = vec2<f32>(x_1138.x, x_1138.y);
        let x_1141 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1139.x, x_1139.y, x_1141);
        let x_1148 : vec3<f32> = txVec11;
        let x_1150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1148.xy, x_1148.z);
        u_xlat8.x = x_1150;
        let x_1153 : f32 = u_xlat16.w;
        let x_1155 : f32 = u_xlat8.x;
        let x_1157 : f32 = u_xlat85;
        u_xlat85 = ((x_1153 * x_1155) + x_1157);
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1161 : vec2<f32> = vec2<f32>(x_1160.z, x_1160.w);
        let x_1163 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
        let x_1170 : vec3<f32> = txVec12;
        let x_1172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1170.xy, x_1170.z);
        u_xlat8.x = x_1172;
        let x_1174 : f32 = u_xlat84;
        let x_1176 : f32 = u_xlat8.x;
        let x_1178 : f32 = u_xlat85;
        u_xlat83 = ((x_1174 * x_1176) + x_1178);
      } else {
        let x_1181 : vec4<f32> = u_xlat5;
        let x_1184 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1184.z, x_1184.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1192 : vec2<f32> = floor(vec2<f32>(x_1190.x, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.z, x_1198.w)) + -(vec2<f32>(x_1201.x, x_1201.y)));
        let x_1205 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_1205.x, x_1205.x, x_1205.y, x_1205.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.z, x_1208.z) * vec4<f32>(x_1210.x, x_1210.x, x_1210.z, x_1210.z));
        let x_1213 : vec4<f32> = u_xlat10;
        let x_1217 : vec2<f32> = (vec2<f32>(x_1213.y, x_1213.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1223 : vec2<f32> = u_xlat60;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1220.x, x_1220.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1223));
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1225.x, x_1226.y, x_1225.y, x_1226.w);
        let x_1228 : vec2<f32> = u_xlat60;
        let x_1230 : vec2<f32> = (-(x_1228) + vec2<f32>(1.0f, 1.0f));
        let x_1231 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1230.x, x_1230.y, x_1231.z, x_1231.w);
        let x_1233 : vec2<f32> = u_xlat60;
        u_xlat62 = min(x_1233, vec2<f32>(0.0f, 0.0f));
        let x_1235 : vec2<f32> = u_xlat62;
        let x_1237 : vec2<f32> = u_xlat62;
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1241 : vec2<f32> = ((-(x_1235) * x_1237) + vec2<f32>(x_1239.x, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec2<f32> = u_xlat60;
        u_xlat62 = max(x_1244, vec2<f32>(0.0f, 0.0f));
        let x_1247 : vec2<f32> = u_xlat62;
        let x_1249 : vec2<f32> = u_xlat62;
        let x_1251 : vec4<f32> = u_xlat9;
        let x_1253 : vec2<f32> = ((-(x_1247) * x_1249) + vec2<f32>(x_1251.y, x_1251.w));
        let x_1254 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1253.x, x_1254.y, x_1253.y);
        let x_1256 : vec4<f32> = u_xlat10;
        let x_1258 : vec2<f32> = (vec2<f32>(x_1256.x, x_1256.y) + vec2<f32>(2.0f, 2.0f));
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
        let x_1261 : vec3<f32> = u_xlat35;
        let x_1263 : vec2<f32> = (vec2<f32>(x_1261.x, x_1261.z) + vec2<f32>(2.0f, 2.0f));
        let x_1264 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1264.x, x_1263.x, x_1264.z, x_1263.y);
        let x_1267 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1267 * 0.08163200318813323975f);
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1274 : vec3<f32> = (vec3<f32>(x_1271.z, x_1271.x, x_1271.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1275 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1280 : vec2<f32> = (vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1281.w);
        let x_1284 : f32 = u_xlat13.y;
        u_xlat12.x = x_1284;
        let x_1286 : vec2<f32> = u_xlat60;
        let x_1293 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1294 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1294.x, x_1293.x, x_1294.z, x_1293.y);
        let x_1296 : vec2<f32> = u_xlat60;
        let x_1300 : vec2<f32> = ((vec2<f32>(x_1296.x, x_1296.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1301 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1300.x, x_1301.y, x_1300.y, x_1301.w);
        let x_1304 : f32 = u_xlat9.x;
        u_xlat10.y = x_1304;
        let x_1307 : f32 = u_xlat11.y;
        u_xlat10.w = x_1307;
        let x_1309 : vec4<f32> = u_xlat10;
        let x_1310 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1309 + x_1310);
        let x_1312 : vec2<f32> = u_xlat60;
        let x_1315 : vec2<f32> = ((vec2<f32>(x_1312.y, x_1312.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1316 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1316.x, x_1315.x, x_1316.z, x_1315.y);
        let x_1318 : vec2<f32> = u_xlat60;
        let x_1321 : vec2<f32> = ((vec2<f32>(x_1318.y, x_1318.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1322 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1321.x, x_1322.y, x_1321.y, x_1322.w);
        let x_1325 : f32 = u_xlat9.y;
        u_xlat11.y = x_1325;
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1327 + x_1328);
        let x_1330 : vec4<f32> = u_xlat10;
        let x_1331 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1330 / x_1331);
        let x_1333 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1333 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1339 : vec4<f32> = u_xlat11;
        let x_1340 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1339 / x_1340);
        let x_1342 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1342 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1344 : vec4<f32> = u_xlat10;
        let x_1347 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1344.w, x_1344.x, x_1344.y, x_1344.z) * vec4<f32>(x_1347.x, x_1347.x, x_1347.x, x_1347.x));
        let x_1350 : vec4<f32> = u_xlat11;
        let x_1353 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1350.x, x_1350.w, x_1350.y, x_1350.z) * vec4<f32>(x_1353.y, x_1353.y, x_1353.y, x_1353.y));
        let x_1356 : vec4<f32> = u_xlat10;
        let x_1357 : vec3<f32> = vec3<f32>(x_1356.y, x_1356.z, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1357.z);
        let x_1361 : f32 = u_xlat11.x;
        u_xlat13.y = x_1361;
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1366 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y) * vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y)) + vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.y));
        let x_1372 : vec4<f32> = u_xlat8;
        let x_1375 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat13;
        u_xlat60 = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1378.w, x_1378.y));
        let x_1382 : f32 = u_xlat13.y;
        u_xlat10.y = x_1382;
        let x_1385 : f32 = u_xlat11.z;
        u_xlat13.y = x_1385;
        let x_1387 : vec4<f32> = u_xlat8;
        let x_1390 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1393 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1387.x, x_1387.y, x_1387.x, x_1387.y) * vec4<f32>(x_1390.x, x_1390.y, x_1390.x, x_1390.y)) + vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1393.y));
        let x_1396 : vec4<f32> = u_xlat8;
        let x_1399 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1402 : vec4<f32> = u_xlat13;
        let x_1404 : vec2<f32> = ((vec2<f32>(x_1396.x, x_1396.y) * vec2<f32>(x_1399.x, x_1399.y)) + vec2<f32>(x_1402.w, x_1402.y));
        let x_1405 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1408 : f32 = u_xlat13.y;
        u_xlat10.z = x_1408;
        let x_1411 : vec4<f32> = u_xlat8;
        let x_1414 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y) * vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y)) + vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.z));
        let x_1421 : f32 = u_xlat11.w;
        u_xlat13.y = x_1421;
        let x_1424 : vec4<f32> = u_xlat8;
        let x_1427 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1430 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1424.x, x_1424.y, x_1424.x, x_1424.y) * vec4<f32>(x_1427.x, x_1427.y, x_1427.x, x_1427.y)) + vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1430.y));
        let x_1434 : vec4<f32> = u_xlat8;
        let x_1437 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1440 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_1434.x, x_1434.y) * vec2<f32>(x_1437.x, x_1437.y)) + vec2<f32>(x_1440.w, x_1440.y));
        let x_1444 : f32 = u_xlat13.y;
        u_xlat10.w = x_1444;
        let x_1447 : vec4<f32> = u_xlat8;
        let x_1450 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1453 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_1447.x, x_1447.y) * vec2<f32>(x_1450.x, x_1450.y)) + vec2<f32>(x_1453.x, x_1453.w));
        let x_1456 : vec4<f32> = u_xlat13;
        let x_1457 : vec3<f32> = vec3<f32>(x_1456.x, x_1456.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1457.x, x_1458.y, x_1457.y, x_1457.z);
        let x_1460 : vec4<f32> = u_xlat8;
        let x_1463 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1466 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y) * vec4<f32>(x_1463.x, x_1463.y, x_1463.x, x_1463.y)) + vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1466.y));
        let x_1470 : vec4<f32> = u_xlat8;
        let x_1473 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.w, x_1476.y));
        let x_1480 : f32 = u_xlat10.x;
        u_xlat11.x = x_1480;
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1485 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.x, x_1488.y));
        let x_1491 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1496 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1494.x, x_1494.x, x_1494.x, x_1494.x) * x_1496);
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1501 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1499.y, x_1499.y, x_1499.y, x_1499.y) * x_1501);
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1506 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1504.z, x_1504.z, x_1504.z, x_1504.z) * x_1506);
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1510 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1508.w, x_1508.w, x_1508.w, x_1508.w) * x_1510);
        let x_1513 : vec4<f32> = u_xlat14;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
        let x_1516 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec13;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat84 = x_1525;
        let x_1527 : vec4<f32> = u_xlat14;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec14;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat85 = x_1539;
        let x_1540 : f32 = u_xlat85;
        let x_1542 : f32 = u_xlat19.y;
        u_xlat85 = (x_1540 * x_1542);
        let x_1545 : f32 = u_xlat19.x;
        let x_1546 : f32 = u_xlat84;
        let x_1548 : f32 = u_xlat85;
        u_xlat84 = ((x_1545 * x_1546) + x_1548);
        let x_1551 : vec2<f32> = u_xlat60;
        let x_1553 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec15;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat85 = x_1562;
        let x_1564 : f32 = u_xlat19.z;
        let x_1565 : f32 = u_xlat85;
        let x_1567 : f32 = u_xlat84;
        u_xlat84 = ((x_1564 * x_1565) + x_1567);
        let x_1570 : vec4<f32> = u_xlat17;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec16;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat85 = x_1582;
        let x_1584 : f32 = u_xlat19.w;
        let x_1585 : f32 = u_xlat85;
        let x_1587 : f32 = u_xlat84;
        u_xlat84 = ((x_1584 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat15;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec17;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
        u_xlat85 = x_1602;
        let x_1604 : f32 = u_xlat20.x;
        let x_1605 : f32 = u_xlat85;
        let x_1607 : f32 = u_xlat84;
        u_xlat84 = ((x_1604 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat15;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.z, x_1610.w);
        let x_1613 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec18;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat85 = x_1622;
        let x_1624 : f32 = u_xlat20.y;
        let x_1625 : f32 = u_xlat85;
        let x_1627 : f32 = u_xlat84;
        u_xlat84 = ((x_1624 * x_1625) + x_1627);
        let x_1630 : vec4<f32> = u_xlat16;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec19;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat85 = x_1642;
        let x_1644 : f32 = u_xlat20.z;
        let x_1645 : f32 = u_xlat85;
        let x_1647 : f32 = u_xlat84;
        u_xlat84 = ((x_1644 * x_1645) + x_1647);
        let x_1650 : vec4<f32> = u_xlat17;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec20;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat85 = x_1662;
        let x_1664 : f32 = u_xlat20.w;
        let x_1665 : f32 = u_xlat85;
        let x_1667 : f32 = u_xlat84;
        u_xlat84 = ((x_1664 * x_1665) + x_1667);
        let x_1670 : vec4<f32> = u_xlat18;
        let x_1671 : vec2<f32> = vec2<f32>(x_1670.x, x_1670.y);
        let x_1673 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec21;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1680.xy, x_1680.z);
        u_xlat85 = x_1682;
        let x_1684 : f32 = u_xlat21.x;
        let x_1685 : f32 = u_xlat85;
        let x_1687 : f32 = u_xlat84;
        u_xlat84 = ((x_1684 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat18;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.z, x_1690.w);
        let x_1693 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec22;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1700.xy, x_1700.z);
        u_xlat85 = x_1702;
        let x_1704 : f32 = u_xlat21.y;
        let x_1705 : f32 = u_xlat85;
        let x_1707 : f32 = u_xlat84;
        u_xlat84 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec2<f32> = u_xlat36;
        let x_1712 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec23;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat85 = x_1721;
        let x_1723 : f32 = u_xlat21.z;
        let x_1724 : f32 = u_xlat85;
        let x_1726 : f32 = u_xlat84;
        u_xlat84 = ((x_1723 * x_1724) + x_1726);
        let x_1729 : vec2<f32> = u_xlat68;
        let x_1731 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec24;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1738.xy, x_1738.z);
        u_xlat85 = x_1740;
        let x_1742 : f32 = u_xlat21.w;
        let x_1743 : f32 = u_xlat85;
        let x_1745 : f32 = u_xlat84;
        u_xlat84 = ((x_1742 * x_1743) + x_1745);
        let x_1748 : vec4<f32> = u_xlat13;
        let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
        let x_1751 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec25;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1758.xy, x_1758.z);
        u_xlat85 = x_1760;
        let x_1762 : f32 = u_xlat9.x;
        let x_1763 : f32 = u_xlat85;
        let x_1765 : f32 = u_xlat84;
        u_xlat84 = ((x_1762 * x_1763) + x_1765);
        let x_1768 : vec4<f32> = u_xlat13;
        let x_1769 : vec2<f32> = vec2<f32>(x_1768.z, x_1768.w);
        let x_1771 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec26;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1778.xy, x_1778.z);
        u_xlat85 = x_1780;
        let x_1782 : f32 = u_xlat9.y;
        let x_1783 : f32 = u_xlat85;
        let x_1785 : f32 = u_xlat84;
        u_xlat84 = ((x_1782 * x_1783) + x_1785);
        let x_1788 : vec2<f32> = u_xlat63;
        let x_1790 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec27;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1797.xy, x_1797.z);
        u_xlat85 = x_1799;
        let x_1801 : f32 = u_xlat9.z;
        let x_1802 : f32 = u_xlat85;
        let x_1804 : f32 = u_xlat84;
        u_xlat84 = ((x_1801 * x_1802) + x_1804);
        let x_1807 : vec4<f32> = u_xlat8;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.x, x_1807.y);
        let x_1810 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec28;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat85 = x_1819;
        let x_1821 : f32 = u_xlat9.w;
        let x_1822 : f32 = u_xlat85;
        let x_1824 : f32 = u_xlat84;
        u_xlat83 = ((x_1821 * x_1822) + x_1824);
      }
    }
  } else {
    let x_1828 : vec4<f32> = u_xlat5;
    let x_1829 : vec2<f32> = vec2<f32>(x_1828.x, x_1828.y);
    let x_1831 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1829.x, x_1829.y, x_1831);
    let x_1838 : vec3<f32> = txVec29;
    let x_1840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1838.xy, x_1838.z);
    u_xlat83 = x_1840;
  }
  let x_1842 : f32 = x_276.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1842) + 1.0f);
  let x_1846 : f32 = u_xlat83;
  let x_1848 : f32 = x_276.x_MainLightShadowParams.x;
  let x_1851 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1846 * x_1848) + x_1851);
  let x_1856 : f32 = u_xlat5.z;
  u_xlatb31 = (0.0f >= x_1856);
  let x_1860 : f32 = u_xlat5.z;
  u_xlatb57 = (x_1860 >= 1.0f);
  let x_1862 : bool = u_xlatb57;
  let x_1863 : bool = u_xlatb31;
  u_xlatb31 = (x_1862 | x_1863);
  let x_1865 : bool = u_xlatb31;
  if (x_1865) {
    x_1867 = 1.0f;
  } else {
    let x_1872 : f32 = u_xlat5.x;
    x_1867 = x_1872;
  }
  let x_1873 : f32 = x_1867;
  u_xlat5.x = x_1873;
  let x_1876 : vec3<f32> = vs_INTERP7;
  let x_1878 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1876 + -(x_1878));
  let x_1881 : vec3<f32> = u_xlat31;
  let x_1882 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1881, x_1882);
  let x_1887 : f32 = u_xlat31.x;
  let x_1889 : f32 = x_276.x_MainLightShadowParams.z;
  let x_1892 : f32 = x_276.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1887 * x_1889) + x_1892);
  let x_1894 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1894, 0.0f, 1.0f);
  let x_1897 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1897) + 1.0f);
  let x_1900 : f32 = u_xlat57;
  let x_1901 : f32 = u_xlat83;
  let x_1904 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1900 * x_1901) + x_1904);
  let x_1907 : vec3<f32> = u_xlat4;
  let x_1909 : vec4<f32> = u_xlat1;
  u_xlat57 = dot(-(x_1907), vec3<f32>(x_1909.x, x_1909.y, x_1909.w));
  let x_1912 : f32 = u_xlat57;
  let x_1913 : f32 = u_xlat57;
  u_xlat57 = (x_1912 + x_1913);
  let x_1915 : vec4<f32> = u_xlat1;
  let x_1917 : f32 = u_xlat57;
  let x_1921 : vec3<f32> = u_xlat4;
  let x_1923 : vec3<f32> = ((vec3<f32>(x_1915.x, x_1915.y, x_1915.w) * -(vec3<f32>(x_1917, x_1917, x_1917))) + -(x_1921));
  let x_1924 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : vec4<f32> = u_xlat1;
  let x_1928 : vec3<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.w), x_1928);
  let x_1930 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1930, 0.0f, 1.0f);
  let x_1932 : f32 = u_xlat57;
  u_xlat57 = (-(x_1932) + 1.0f);
  let x_1935 : f32 = u_xlat57;
  let x_1936 : f32 = u_xlat57;
  u_xlat57 = (x_1935 * x_1936);
  let x_1938 : f32 = u_xlat57;
  let x_1939 : f32 = u_xlat57;
  u_xlat57 = (x_1938 * x_1939);
  let x_1941 : f32 = u_xlat80;
  u_xlat83 = ((-(x_1941) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1947 : f32 = u_xlat80;
  let x_1948 : f32 = u_xlat83;
  u_xlat2.w = (x_1947 * x_1948);
  let x_1951 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1951 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1964 : vec4<f32> = u_xlat8;
  let x_1967 : f32 = u_xlat2.w;
  let x_1968 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1964.x, x_1964.y, x_1964.z), x_1967);
  u_xlat8 = x_1968;
  let x_1970 : f32 = u_xlat8.w;
  u_xlat80 = (x_1970 + -1.0f);
  let x_1973 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_1974 : f32 = u_xlat80;
  u_xlat80 = ((x_1973 * x_1974) + 1.0f);
  let x_1977 : f32 = u_xlat80;
  u_xlat80 = max(x_1977, 0.0f);
  let x_1979 : f32 = u_xlat80;
  u_xlat80 = log2(x_1979);
  let x_1981 : f32 = u_xlat80;
  let x_1983 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1981 * x_1983);
  let x_1985 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1985);
  let x_1987 : f32 = u_xlat80;
  let x_1989 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1987 * x_1989);
  let x_1991 : vec4<f32> = u_xlat8;
  let x_1993 : f32 = u_xlat80;
  let x_1995 : vec3<f32> = (vec3<f32>(x_1991.x, x_1991.y, x_1991.z) * vec3<f32>(x_1993, x_1993, x_1993));
  let x_1996 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
  let x_1998 : vec3<f32> = u_xlat3;
  let x_2000 : vec3<f32> = u_xlat3;
  let x_2004 : vec2<f32> = ((vec2<f32>(x_1998.x, x_1998.x) * vec2<f32>(x_2000.x, x_2000.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2005 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
  let x_2008 : f32 = u_xlat9.y;
  u_xlat80 = (1.0f / x_2008);
  let x_2010 : vec3<f32> = u_xlat0;
  let x_2012 : f32 = u_xlat81;
  u_xlat35 = (-(x_2010) + vec3<f32>(x_2012, x_2012, x_2012));
  let x_2015 : f32 = u_xlat57;
  let x_2017 : vec3<f32> = u_xlat35;
  let x_2019 : vec3<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2015, x_2015, x_2015) * x_2017) + x_2019);
  let x_2021 : f32 = u_xlat80;
  let x_2023 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2021, x_2021, x_2021) * x_2023);
  let x_2025 : vec4<f32> = u_xlat8;
  let x_2027 : vec3<f32> = u_xlat35;
  let x_2028 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) * x_2027);
  let x_2029 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
  let x_2031 : vec4<f32> = u_xlat6;
  let x_2033 : vec3<f32> = u_xlat7;
  let x_2035 : vec4<f32> = u_xlat8;
  let x_2037 : vec3<f32> = ((vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * x_2033) + vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
  let x_2041 : f32 = u_xlat5.x;
  let x_2043 : f32 = x_107.unity_LightData.z;
  u_xlat80 = (x_2041 * x_2043);
  let x_2045 : vec4<f32> = u_xlat1;
  let x_2048 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.w), vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2053 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2053, 0.0f, 1.0f);
  let x_2056 : f32 = u_xlat80;
  let x_2058 : f32 = u_xlat3.x;
  u_xlat80 = (x_2056 * x_2058);
  let x_2060 : f32 = u_xlat80;
  let x_2063 : vec4<f32> = x_29.x_MainLightColor;
  let x_2065 : vec3<f32> = (vec3<f32>(x_2060, x_2060, x_2060) * vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
  let x_2066 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2065.x, x_2066.y, x_2065.y, x_2065.z);
  let x_2068 : vec3<f32> = u_xlat4;
  let x_2070 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2072 : vec3<f32> = (x_2068 + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
  let x_2073 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2075 : vec4<f32> = u_xlat8;
  let x_2077 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2075.x, x_2075.y, x_2075.z), vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
  let x_2080 : f32 = u_xlat80;
  u_xlat80 = max(x_2080, 1.17549435e-38f);
  let x_2083 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_2083);
  let x_2085 : f32 = u_xlat80;
  let x_2087 : vec4<f32> = u_xlat8;
  let x_2089 : vec3<f32> = (vec3<f32>(x_2085, x_2085, x_2085) * vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
  let x_2090 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : vec4<f32> = u_xlat1;
  let x_2094 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2092.x, x_2092.y, x_2092.w), vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
  let x_2097 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2097, 0.0f, 1.0f);
  let x_2100 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2102 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2107 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2107, 0.0f, 1.0f);
  let x_2110 : f32 = u_xlat80;
  let x_2111 : f32 = u_xlat80;
  u_xlat80 = (x_2110 * x_2111);
  let x_2113 : f32 = u_xlat80;
  let x_2115 : f32 = u_xlat9.x;
  u_xlat80 = ((x_2113 * x_2115) + 1.00001001358032226562f);
  let x_2120 : f32 = u_xlat3.x;
  let x_2122 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2120 * x_2122);
  let x_2125 : f32 = u_xlat80;
  let x_2126 : f32 = u_xlat80;
  u_xlat80 = (x_2125 * x_2126);
  let x_2129 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2129, 0.10000000149011611938f);
  let x_2133 : f32 = u_xlat80;
  let x_2135 : f32 = u_xlat3.x;
  u_xlat80 = (x_2133 * x_2135);
  let x_2137 : f32 = u_xlat82;
  let x_2138 : f32 = u_xlat80;
  u_xlat80 = (x_2137 * x_2138);
  let x_2140 : f32 = u_xlat29;
  let x_2141 : f32 = u_xlat80;
  u_xlat80 = (x_2140 / x_2141);
  let x_2143 : vec3<f32> = u_xlat0;
  let x_2144 : f32 = u_xlat80;
  let x_2147 : vec3<f32> = u_xlat7;
  let x_2148 : vec3<f32> = ((x_2143 * vec3<f32>(x_2144, x_2144, x_2144)) + x_2147);
  let x_2149 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
  let x_2151 : vec4<f32> = u_xlat5;
  let x_2153 : vec4<f32> = u_xlat8;
  let x_2155 : vec3<f32> = (vec3<f32>(x_2151.x, x_2151.z, x_2151.w) * vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2156 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2155.x, x_2156.y, x_2155.y, x_2155.z);
  let x_2159 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2161 : f32 = x_107.unity_LightData.y;
  u_xlat80 = min(x_2159, x_2161);
  let x_2164 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2164));
  let x_2168 : f32 = u_xlat31.x;
  let x_2171 : f32 = x_276.x_AdditionalShadowFadeParams.x;
  let x_2174 : f32 = x_276.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2168 * x_2171) + x_2174);
  let x_2178 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2178, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2191 : u32 = u_xlatu_loop_1;
    let x_2192 : u32 = u_xlatu80;
    if ((x_2191 < x_2192)) {
    } else {
      break;
    }
    let x_2195 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_2195 >> 2u);
    let x_2198 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2198 & 3u));
    let x_2201 : u32 = u_xlatu31;
    let x_2204 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_2201)];
    let x_2214 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2219 : vec4<u32> = indexable[x_2214];
    u_xlat31.x = dot(x_2204, bitcast<vec4<f32>>(x_2219));
    let x_2225 : f32 = u_xlat31.x;
    u_xlati31 = i32(x_2225);
    let x_2227 : vec3<f32> = vs_INTERP7;
    let x_2238 : i32 = u_xlati31;
    let x_2240 : vec4<f32> = x_2237.x_AdditionalLightsPosition[x_2238];
    let x_2243 : i32 = u_xlati31;
    let x_2245 : vec4<f32> = x_2237.x_AdditionalLightsPosition[x_2243];
    u_xlat35 = ((-(x_2227) * vec3<f32>(x_2240.w, x_2240.w, x_2240.w)) + vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : vec3<f32> = u_xlat35;
    let x_2249 : vec3<f32> = u_xlat35;
    u_xlat84 = dot(x_2248, x_2249);
    let x_2251 : f32 = u_xlat84;
    u_xlat84 = max(x_2251, 0.00006103515625f);
    let x_2254 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2254);
    let x_2256 : f32 = u_xlat85;
    let x_2258 : vec3<f32> = u_xlat35;
    let x_2259 : vec3<f32> = (vec3<f32>(x_2256, x_2256, x_2256) * x_2258);
    let x_2260 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
    let x_2263 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2263);
    let x_2265 : f32 = u_xlat84;
    let x_2266 : i32 = u_xlati31;
    let x_2268 : f32 = x_2237.x_AdditionalLightsAttenuation[x_2266].x;
    u_xlat84 = (x_2265 * x_2268);
    let x_2270 : f32 = u_xlat84;
    let x_2272 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2270) * x_2272) + 1.0f);
    let x_2275 : f32 = u_xlat84;
    u_xlat84 = max(x_2275, 0.0f);
    let x_2277 : f32 = u_xlat84;
    let x_2278 : f32 = u_xlat84;
    u_xlat84 = (x_2277 * x_2278);
    let x_2280 : f32 = u_xlat84;
    let x_2281 : f32 = u_xlat86;
    u_xlat84 = (x_2280 * x_2281);
    let x_2283 : i32 = u_xlati31;
    let x_2285 : vec4<f32> = x_2237.x_AdditionalLightsSpotDir[x_2283];
    let x_2287 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2285.x, x_2285.y, x_2285.z), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
    let x_2290 : f32 = u_xlat86;
    let x_2291 : i32 = u_xlati31;
    let x_2293 : f32 = x_2237.x_AdditionalLightsAttenuation[x_2291].z;
    let x_2295 : i32 = u_xlati31;
    let x_2297 : f32 = x_2237.x_AdditionalLightsAttenuation[x_2295].w;
    u_xlat86 = ((x_2290 * x_2293) + x_2297);
    let x_2299 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2299, 0.0f, 1.0f);
    let x_2301 : f32 = u_xlat86;
    let x_2302 : f32 = u_xlat86;
    u_xlat86 = (x_2301 * x_2302);
    let x_2304 : f32 = u_xlat84;
    let x_2305 : f32 = u_xlat86;
    u_xlat84 = (x_2304 * x_2305);
    let x_2309 : i32 = u_xlati31;
    let x_2311 : f32 = x_276.x_AdditionalShadowParams[x_2309].w;
    u_xlati86 = i32(x_2311);
    let x_2314 : i32 = u_xlati86;
    u_xlatb88 = (x_2314 >= 0i);
    let x_2316 : bool = u_xlatb88;
    if (x_2316) {
      let x_2320 : i32 = u_xlati31;
      let x_2322 : f32 = x_276.x_AdditionalShadowParams[x_2320].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2322, x_2322, x_2322, x_2322))));
      let x_2326 : bool = u_xlatb88;
      if (x_2326) {
        let x_2330 : vec4<f32> = u_xlat10;
        let x_2333 : vec4<f32> = u_xlat10;
        let x_2336 : vec4<bool> = (abs(vec4<f32>(x_2330.z, x_2330.z, x_2330.y, x_2330.z)) >= abs(vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.x)));
        let x_2338 : vec3<bool> = vec3<bool>(x_2336.x, x_2336.y, x_2336.z);
        let x_2339 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
        let x_2342 : bool = u_xlatb11.y;
        let x_2344 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2342 & x_2344);
        let x_2346 : vec4<f32> = u_xlat10;
        let x_2349 : vec4<bool> = (-(vec4<f32>(x_2346.z, x_2346.y, x_2346.z, x_2346.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2350 : vec3<bool> = vec3<bool>(x_2349.x, x_2349.y, x_2349.w);
        let x_2351 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2350.x, x_2350.y, x_2351.z, x_2350.z);
        let x_2354 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2354);
        let x_2359 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2359);
        let x_2364 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2364);
        let x_2368 : bool = u_xlatb11.z;
        if (x_2368) {
          let x_2373 : f32 = u_xlat11.y;
          x_2369 = x_2373;
        } else {
          let x_2375 : f32 = u_xlat89;
          x_2369 = x_2375;
        }
        let x_2376 : f32 = x_2369;
        u_xlat37 = x_2376;
        let x_2378 : bool = u_xlatb88;
        if (x_2378) {
          let x_2383 : f32 = u_xlat11.x;
          x_2379 = x_2383;
        } else {
          let x_2385 : f32 = u_xlat37;
          x_2379 = x_2385;
        }
        let x_2386 : f32 = x_2379;
        u_xlat88 = x_2386;
        let x_2387 : i32 = u_xlati31;
        let x_2389 : f32 = x_276.x_AdditionalShadowParams[x_2387].w;
        u_xlat11.x = trunc(x_2389);
        let x_2392 : f32 = u_xlat88;
        let x_2394 : f32 = u_xlat11.x;
        u_xlat88 = (x_2392 + x_2394);
        let x_2396 : f32 = u_xlat88;
        u_xlati86 = i32(x_2396);
      }
      let x_2398 : i32 = u_xlati86;
      u_xlati86 = (x_2398 << bitcast<u32>(2i));
      let x_2400 : vec3<f32> = vs_INTERP7;
      let x_2403 : i32 = u_xlati86;
      let x_2406 : i32 = u_xlati86;
      let x_2410 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[((x_2403 + 1i) / 4i)][((x_2406 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2400.y, x_2400.y, x_2400.y, x_2400.y) * x_2410);
      let x_2412 : i32 = u_xlati86;
      let x_2414 : i32 = u_xlati86;
      let x_2417 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[(x_2412 / 4i)][(x_2414 % 4i)];
      let x_2418 : vec3<f32> = vs_INTERP7;
      let x_2421 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2417 * vec4<f32>(x_2418.x, x_2418.x, x_2418.x, x_2418.x)) + x_2421);
      let x_2423 : i32 = u_xlati86;
      let x_2426 : i32 = u_xlati86;
      let x_2430 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[((x_2423 + 2i) / 4i)][((x_2426 + 2i) % 4i)];
      let x_2431 : vec3<f32> = vs_INTERP7;
      let x_2434 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2430 * vec4<f32>(x_2431.z, x_2431.z, x_2431.z, x_2431.z)) + x_2434);
      let x_2436 : vec4<f32> = u_xlat11;
      let x_2437 : i32 = u_xlati86;
      let x_2440 : i32 = u_xlati86;
      let x_2444 : vec4<f32> = x_276.x_AdditionalLightsWorldToShadow[((x_2437 + 3i) / 4i)][((x_2440 + 3i) % 4i)];
      u_xlat11 = (x_2436 + x_2444);
      let x_2446 : vec4<f32> = u_xlat11;
      let x_2448 : vec4<f32> = u_xlat11;
      let x_2450 : vec3<f32> = (vec3<f32>(x_2446.x, x_2446.y, x_2446.z) / vec3<f32>(x_2448.w, x_2448.w, x_2448.w));
      let x_2451 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
      let x_2454 : i32 = u_xlati31;
      let x_2456 : f32 = x_276.x_AdditionalShadowParams[x_2454].y;
      u_xlatb86 = (0.0f < x_2456);
      let x_2458 : bool = u_xlatb86;
      if (x_2458) {
        let x_2461 : i32 = u_xlati31;
        let x_2463 : f32 = x_276.x_AdditionalShadowParams[x_2461].y;
        u_xlatb86 = (1.0f == x_2463);
        let x_2465 : bool = u_xlatb86;
        if (x_2465) {
          let x_2468 : vec4<f32> = u_xlat11;
          let x_2471 : vec4<f32> = x_276.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2468.x, x_2468.y, x_2468.x, x_2468.y) + x_2471);
          let x_2474 : vec4<f32> = u_xlat12;
          let x_2475 : vec2<f32> = vec2<f32>(x_2474.x, x_2474.y);
          let x_2477 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2475.x, x_2475.y, x_2477);
          let x_2485 : vec3<f32> = txVec30;
          let x_2487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2485.xy, x_2485.z);
          u_xlat13.x = x_2487;
          let x_2490 : vec4<f32> = u_xlat12;
          let x_2491 : vec2<f32> = vec2<f32>(x_2490.z, x_2490.w);
          let x_2493 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
          let x_2500 : vec3<f32> = txVec31;
          let x_2502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
          u_xlat13.y = x_2502;
          let x_2504 : vec4<f32> = u_xlat11;
          let x_2508 : vec4<f32> = x_276.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2504.x, x_2504.y, x_2504.x, x_2504.y) + x_2508);
          let x_2511 : vec4<f32> = u_xlat12;
          let x_2512 : vec2<f32> = vec2<f32>(x_2511.x, x_2511.y);
          let x_2514 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
          let x_2521 : vec3<f32> = txVec32;
          let x_2523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
          u_xlat13.z = x_2523;
          let x_2526 : vec4<f32> = u_xlat12;
          let x_2527 : vec2<f32> = vec2<f32>(x_2526.z, x_2526.w);
          let x_2529 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2527.x, x_2527.y, x_2529);
          let x_2536 : vec3<f32> = txVec33;
          let x_2538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2536.xy, x_2536.z);
          u_xlat13.w = x_2538;
          let x_2540 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2540, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2543 : i32 = u_xlati31;
          let x_2545 : f32 = x_276.x_AdditionalShadowParams[x_2543].y;
          u_xlatb88 = (2.0f == x_2545);
          let x_2547 : bool = u_xlatb88;
          if (x_2547) {
            let x_2550 : vec4<f32> = u_xlat11;
            let x_2554 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2557 : vec2<f32> = ((vec2<f32>(x_2550.x, x_2550.y) * vec2<f32>(x_2554.z, x_2554.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2558 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2557.x, x_2557.y, x_2558.z, x_2558.w);
            let x_2560 : vec4<f32> = u_xlat12;
            let x_2562 : vec2<f32> = floor(vec2<f32>(x_2560.x, x_2560.y));
            let x_2563 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2566 : vec4<f32> = u_xlat11;
            let x_2569 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2572 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2566.x, x_2566.y) * vec2<f32>(x_2569.z, x_2569.w)) + -(vec2<f32>(x_2572.x, x_2572.y)));
            let x_2576 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2576.x, x_2576.x, x_2576.y, x_2576.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2579 : vec4<f32> = u_xlat13;
            let x_2581 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2579.x, x_2579.x, x_2579.z, x_2579.z) * vec4<f32>(x_2581.x, x_2581.x, x_2581.z, x_2581.z));
            let x_2584 : vec4<f32> = u_xlat14;
            let x_2586 : vec2<f32> = (vec2<f32>(x_2584.y, x_2584.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2587 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2586.x, x_2587.y, x_2586.y, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat14;
            let x_2592 : vec2<f32> = u_xlat64;
            let x_2594 : vec2<f32> = ((vec2<f32>(x_2589.x, x_2589.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2592));
            let x_2595 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
            let x_2598 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2598) + vec2<f32>(1.0f, 1.0f));
            let x_2601 : vec2<f32> = u_xlat64;
            let x_2602 : vec2<f32> = min(x_2601, vec2<f32>(0.0f, 0.0f));
            let x_2603 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2605 : vec4<f32> = u_xlat15;
            let x_2608 : vec4<f32> = u_xlat15;
            let x_2611 : vec2<f32> = u_xlat66;
            let x_2612 : vec2<f32> = ((-(vec2<f32>(x_2605.x, x_2605.y)) * vec2<f32>(x_2608.x, x_2608.y)) + x_2611);
            let x_2613 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
            let x_2615 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2615, vec2<f32>(0.0f, 0.0f));
            let x_2617 : vec2<f32> = u_xlat64;
            let x_2619 : vec2<f32> = u_xlat64;
            let x_2621 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2617) * x_2619) + vec2<f32>(x_2621.y, x_2621.w));
            let x_2624 : vec4<f32> = u_xlat15;
            let x_2626 : vec2<f32> = (vec2<f32>(x_2624.x, x_2624.y) + vec2<f32>(1.0f, 1.0f));
            let x_2627 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2626.x, x_2626.y, x_2627.z, x_2627.w);
            let x_2629 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2629 + vec2<f32>(1.0f, 1.0f));
            let x_2631 : vec4<f32> = u_xlat14;
            let x_2633 : vec2<f32> = (vec2<f32>(x_2631.x, x_2631.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2634 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2633.x, x_2633.y, x_2634.z, x_2634.w);
            let x_2636 : vec2<f32> = u_xlat66;
            let x_2637 : vec2<f32> = (x_2636 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2638 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
            let x_2640 : vec4<f32> = u_xlat15;
            let x_2642 : vec2<f32> = (vec2<f32>(x_2640.x, x_2640.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2643 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2642.x, x_2642.y, x_2643.z, x_2643.w);
            let x_2645 : vec2<f32> = u_xlat64;
            let x_2646 : vec2<f32> = (x_2645 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2647 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
            let x_2649 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2649.y, x_2649.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2653 : f32 = u_xlat15.x;
            u_xlat16.z = x_2653;
            let x_2656 : f32 = u_xlat64.x;
            u_xlat16.w = x_2656;
            let x_2659 : f32 = u_xlat17.x;
            u_xlat14.z = x_2659;
            let x_2662 : f32 = u_xlat13.x;
            u_xlat14.w = x_2662;
            let x_2664 : vec4<f32> = u_xlat14;
            let x_2666 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2664.z, x_2664.w, x_2664.x, x_2664.z) + vec4<f32>(x_2666.z, x_2666.w, x_2666.x, x_2666.z));
            let x_2670 : f32 = u_xlat16.y;
            u_xlat15.z = x_2670;
            let x_2673 : f32 = u_xlat64.y;
            u_xlat15.w = x_2673;
            let x_2676 : f32 = u_xlat14.y;
            u_xlat17.z = x_2676;
            let x_2679 : f32 = u_xlat13.z;
            u_xlat17.w = x_2679;
            let x_2681 : vec4<f32> = u_xlat15;
            let x_2683 : vec4<f32> = u_xlat17;
            let x_2685 : vec3<f32> = (vec3<f32>(x_2681.z, x_2681.y, x_2681.w) + vec3<f32>(x_2683.z, x_2683.y, x_2683.w));
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat14;
            let x_2690 : vec4<f32> = u_xlat18;
            let x_2692 : vec3<f32> = (vec3<f32>(x_2688.x, x_2688.z, x_2688.w) / vec3<f32>(x_2690.z, x_2690.w, x_2690.y));
            let x_2693 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
            let x_2695 : vec4<f32> = u_xlat14;
            let x_2697 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2698 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
            let x_2700 : vec4<f32> = u_xlat17;
            let x_2702 : vec4<f32> = u_xlat13;
            let x_2704 : vec3<f32> = (vec3<f32>(x_2700.z, x_2700.y, x_2700.w) / vec3<f32>(x_2702.x, x_2702.y, x_2702.z));
            let x_2705 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2704.x, x_2704.y, x_2704.z, x_2705.w);
            let x_2707 : vec4<f32> = u_xlat15;
            let x_2709 : vec3<f32> = (vec3<f32>(x_2707.x, x_2707.y, x_2707.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2710 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2709.x, x_2709.y, x_2709.z, x_2710.w);
            let x_2712 : vec4<f32> = u_xlat14;
            let x_2715 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2717 : vec3<f32> = (vec3<f32>(x_2712.y, x_2712.x, x_2712.z) * vec3<f32>(x_2715.x, x_2715.x, x_2715.x));
            let x_2718 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
            let x_2720 : vec4<f32> = u_xlat15;
            let x_2723 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2725 : vec3<f32> = (vec3<f32>(x_2720.x, x_2720.y, x_2720.z) * vec3<f32>(x_2723.y, x_2723.y, x_2723.y));
            let x_2726 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
            let x_2729 : f32 = u_xlat15.x;
            u_xlat14.w = x_2729;
            let x_2731 : vec4<f32> = u_xlat12;
            let x_2734 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2737 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y) * vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y)) + vec4<f32>(x_2737.y, x_2737.w, x_2737.x, x_2737.w));
            let x_2740 : vec4<f32> = u_xlat12;
            let x_2743 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2746 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2740.x, x_2740.y) * vec2<f32>(x_2743.x, x_2743.y)) + vec2<f32>(x_2746.z, x_2746.w));
            let x_2750 : f32 = u_xlat14.y;
            u_xlat15.w = x_2750;
            let x_2752 : vec4<f32> = u_xlat15;
            let x_2753 : vec2<f32> = vec2<f32>(x_2752.y, x_2752.z);
            let x_2754 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2754.x, x_2753.x, x_2754.z, x_2753.y);
            let x_2756 : vec4<f32> = u_xlat12;
            let x_2759 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y) * vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y)) + vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2762.y));
            let x_2765 : vec4<f32> = u_xlat12;
            let x_2768 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) * vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y)) + vec4<f32>(x_2771.w, x_2771.y, x_2771.w, x_2771.z));
            let x_2774 : vec4<f32> = u_xlat12;
            let x_2777 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2780 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.x, x_2780.w, x_2780.z, x_2780.w));
            let x_2783 : vec4<f32> = u_xlat13;
            let x_2785 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2783.x, x_2783.x, x_2783.x, x_2783.y) * vec4<f32>(x_2785.z, x_2785.w, x_2785.y, x_2785.z));
            let x_2788 : vec4<f32> = u_xlat13;
            let x_2790 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2788.y, x_2788.y, x_2788.z, x_2788.z) * x_2790);
            let x_2793 : f32 = u_xlat13.z;
            let x_2795 : f32 = u_xlat18.y;
            u_xlat88 = (x_2793 * x_2795);
            let x_2798 : vec4<f32> = u_xlat16;
            let x_2799 : vec2<f32> = vec2<f32>(x_2798.x, x_2798.y);
            let x_2801 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2799.x, x_2799.y, x_2801);
            let x_2808 : vec3<f32> = txVec34;
            let x_2810 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2808.xy, x_2808.z);
            u_xlat89 = x_2810;
            let x_2812 : vec4<f32> = u_xlat16;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.z, x_2812.w);
            let x_2815 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec35;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat12.x = x_2824;
            let x_2827 : f32 = u_xlat12.x;
            let x_2829 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2827 * x_2829);
            let x_2833 : f32 = u_xlat19.x;
            let x_2834 : f32 = u_xlat89;
            let x_2837 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2833 * x_2834) + x_2837);
            let x_2840 : vec2<f32> = u_xlat64;
            let x_2842 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
            let x_2849 : vec3<f32> = txVec36;
            let x_2851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
            u_xlat12.x = x_2851;
            let x_2854 : f32 = u_xlat19.z;
            let x_2856 : f32 = u_xlat12.x;
            let x_2858 : f32 = u_xlat89;
            u_xlat89 = ((x_2854 * x_2856) + x_2858);
            let x_2861 : vec4<f32> = u_xlat15;
            let x_2862 : vec2<f32> = vec2<f32>(x_2861.x, x_2861.y);
            let x_2864 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2862.x, x_2862.y, x_2864);
            let x_2871 : vec3<f32> = txVec37;
            let x_2873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2871.xy, x_2871.z);
            u_xlat12.x = x_2873;
            let x_2876 : f32 = u_xlat19.w;
            let x_2878 : f32 = u_xlat12.x;
            let x_2880 : f32 = u_xlat89;
            u_xlat89 = ((x_2876 * x_2878) + x_2880);
            let x_2883 : vec4<f32> = u_xlat17;
            let x_2884 : vec2<f32> = vec2<f32>(x_2883.x, x_2883.y);
            let x_2886 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec38;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat12.x = x_2895;
            let x_2898 : f32 = u_xlat20.x;
            let x_2900 : f32 = u_xlat12.x;
            let x_2902 : f32 = u_xlat89;
            u_xlat89 = ((x_2898 * x_2900) + x_2902);
            let x_2905 : vec4<f32> = u_xlat17;
            let x_2906 : vec2<f32> = vec2<f32>(x_2905.z, x_2905.w);
            let x_2908 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
            let x_2915 : vec3<f32> = txVec39;
            let x_2917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
            u_xlat12.x = x_2917;
            let x_2920 : f32 = u_xlat20.y;
            let x_2922 : f32 = u_xlat12.x;
            let x_2924 : f32 = u_xlat89;
            u_xlat89 = ((x_2920 * x_2922) + x_2924);
            let x_2927 : vec4<f32> = u_xlat15;
            let x_2928 : vec2<f32> = vec2<f32>(x_2927.z, x_2927.w);
            let x_2930 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2928.x, x_2928.y, x_2930);
            let x_2937 : vec3<f32> = txVec40;
            let x_2939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
            u_xlat12.x = x_2939;
            let x_2942 : f32 = u_xlat20.z;
            let x_2944 : f32 = u_xlat12.x;
            let x_2946 : f32 = u_xlat89;
            u_xlat89 = ((x_2942 * x_2944) + x_2946);
            let x_2949 : vec4<f32> = u_xlat14;
            let x_2950 : vec2<f32> = vec2<f32>(x_2949.x, x_2949.y);
            let x_2952 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
            let x_2959 : vec3<f32> = txVec41;
            let x_2961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
            u_xlat12.x = x_2961;
            let x_2964 : f32 = u_xlat20.w;
            let x_2966 : f32 = u_xlat12.x;
            let x_2968 : f32 = u_xlat89;
            u_xlat89 = ((x_2964 * x_2966) + x_2968);
            let x_2971 : vec4<f32> = u_xlat14;
            let x_2972 : vec2<f32> = vec2<f32>(x_2971.z, x_2971.w);
            let x_2974 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
            let x_2981 : vec3<f32> = txVec42;
            let x_2983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
            u_xlat12.x = x_2983;
            let x_2985 : f32 = u_xlat88;
            let x_2987 : f32 = u_xlat12.x;
            let x_2989 : f32 = u_xlat89;
            u_xlat86 = ((x_2985 * x_2987) + x_2989);
          } else {
            let x_2992 : vec4<f32> = u_xlat11;
            let x_2995 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_2998 : vec2<f32> = ((vec2<f32>(x_2992.x, x_2992.y) * vec2<f32>(x_2995.z, x_2995.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2999 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2998.x, x_2998.y, x_2999.z, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat12;
            let x_3003 : vec2<f32> = floor(vec2<f32>(x_3001.x, x_3001.y));
            let x_3004 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3003.x, x_3003.y, x_3004.z, x_3004.w);
            let x_3006 : vec4<f32> = u_xlat11;
            let x_3009 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3006.x, x_3006.y) * vec2<f32>(x_3009.z, x_3009.w)) + -(vec2<f32>(x_3012.x, x_3012.y)));
            let x_3016 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3016.x, x_3016.x, x_3016.y, x_3016.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3019 : vec4<f32> = u_xlat13;
            let x_3021 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3019.x, x_3019.x, x_3019.z, x_3019.z) * vec4<f32>(x_3021.x, x_3021.x, x_3021.z, x_3021.z));
            let x_3024 : vec4<f32> = u_xlat14;
            let x_3026 : vec2<f32> = (vec2<f32>(x_3024.y, x_3024.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3027 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3027.x, x_3026.x, x_3027.z, x_3026.y);
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3032 : vec2<f32> = u_xlat64;
            let x_3034 : vec2<f32> = ((vec2<f32>(x_3029.x, x_3029.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3032));
            let x_3035 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3034.x, x_3035.y, x_3034.y, x_3035.w);
            let x_3037 : vec2<f32> = u_xlat64;
            let x_3039 : vec2<f32> = (-(x_3037) + vec2<f32>(1.0f, 1.0f));
            let x_3040 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3039.x, x_3039.y, x_3040.z, x_3040.w);
            let x_3042 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3042, vec2<f32>(0.0f, 0.0f));
            let x_3044 : vec2<f32> = u_xlat66;
            let x_3046 : vec2<f32> = u_xlat66;
            let x_3048 : vec4<f32> = u_xlat14;
            let x_3050 : vec2<f32> = ((-(x_3044) * x_3046) + vec2<f32>(x_3048.x, x_3048.y));
            let x_3051 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3050.x, x_3050.y, x_3051.z, x_3051.w);
            let x_3053 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3053, vec2<f32>(0.0f, 0.0f));
            let x_3056 : vec2<f32> = u_xlat66;
            let x_3058 : vec2<f32> = u_xlat66;
            let x_3060 : vec4<f32> = u_xlat13;
            let x_3062 : vec2<f32> = ((-(x_3056) * x_3058) + vec2<f32>(x_3060.y, x_3060.w));
            let x_3063 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3062.x, x_3063.y, x_3062.y);
            let x_3065 : vec4<f32> = u_xlat14;
            let x_3067 : vec2<f32> = (vec2<f32>(x_3065.x, x_3065.y) + vec2<f32>(2.0f, 2.0f));
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3067.x, x_3067.y, x_3068.z, x_3068.w);
            let x_3070 : vec3<f32> = u_xlat39;
            let x_3072 : vec2<f32> = (vec2<f32>(x_3070.x, x_3070.z) + vec2<f32>(2.0f, 2.0f));
            let x_3073 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3073.x, x_3072.x, x_3073.z, x_3072.y);
            let x_3076 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3076 * 0.08163200318813323975f);
            let x_3079 : vec4<f32> = u_xlat13;
            let x_3081 : vec3<f32> = (vec3<f32>(x_3079.z, x_3079.x, x_3079.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3082 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);
            let x_3084 : vec4<f32> = u_xlat14;
            let x_3086 : vec2<f32> = (vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3087 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat17.y;
            u_xlat16.x = x_3090;
            let x_3092 : vec2<f32> = u_xlat64;
            let x_3095 : vec2<f32> = ((vec2<f32>(x_3092.x, x_3092.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3096 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3096.x, x_3095.x, x_3096.z, x_3095.y);
            let x_3098 : vec2<f32> = u_xlat64;
            let x_3101 : vec2<f32> = ((vec2<f32>(x_3098.x, x_3098.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3102 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3101.x, x_3102.y, x_3101.y, x_3102.w);
            let x_3105 : f32 = u_xlat13.x;
            u_xlat14.y = x_3105;
            let x_3108 : f32 = u_xlat15.y;
            u_xlat14.w = x_3108;
            let x_3110 : vec4<f32> = u_xlat14;
            let x_3111 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3110 + x_3111);
            let x_3113 : vec2<f32> = u_xlat64;
            let x_3116 : vec2<f32> = ((vec2<f32>(x_3113.y, x_3113.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3117 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3117.x, x_3116.x, x_3117.z, x_3116.y);
            let x_3119 : vec2<f32> = u_xlat64;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3119.y, x_3119.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3123 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3122.x, x_3123.y, x_3122.y, x_3123.w);
            let x_3126 : f32 = u_xlat13.y;
            u_xlat15.y = x_3126;
            let x_3128 : vec4<f32> = u_xlat15;
            let x_3129 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3128 + x_3129);
            let x_3131 : vec4<f32> = u_xlat14;
            let x_3132 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3131 / x_3132);
            let x_3134 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3134 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3136 : vec4<f32> = u_xlat15;
            let x_3137 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3136 / x_3137);
            let x_3139 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3139 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3141 : vec4<f32> = u_xlat14;
            let x_3144 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3141.w, x_3141.x, x_3141.y, x_3141.z) * vec4<f32>(x_3144.x, x_3144.x, x_3144.x, x_3144.x));
            let x_3147 : vec4<f32> = u_xlat15;
            let x_3150 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3147.x, x_3147.w, x_3147.y, x_3147.z) * vec4<f32>(x_3150.y, x_3150.y, x_3150.y, x_3150.y));
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3154 : vec3<f32> = vec3<f32>(x_3153.y, x_3153.z, x_3153.w);
            let x_3155 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3154.x, x_3155.y, x_3154.y, x_3154.z);
            let x_3158 : f32 = u_xlat15.x;
            u_xlat17.y = x_3158;
            let x_3160 : vec4<f32> = u_xlat12;
            let x_3163 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3166 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3160.x, x_3160.y, x_3160.x, x_3160.y) * vec4<f32>(x_3163.x, x_3163.y, x_3163.x, x_3163.y)) + vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3166.y));
            let x_3169 : vec4<f32> = u_xlat12;
            let x_3172 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3175 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3169.x, x_3169.y) * vec2<f32>(x_3172.x, x_3172.y)) + vec2<f32>(x_3175.w, x_3175.y));
            let x_3179 : f32 = u_xlat17.y;
            u_xlat14.y = x_3179;
            let x_3182 : f32 = u_xlat15.z;
            u_xlat17.y = x_3182;
            let x_3184 : vec4<f32> = u_xlat12;
            let x_3187 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3190 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3184.x, x_3184.y, x_3184.x, x_3184.y) * vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y)) + vec4<f32>(x_3190.x, x_3190.y, x_3190.z, x_3190.y));
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3199 : vec4<f32> = u_xlat17;
            let x_3201 : vec2<f32> = ((vec2<f32>(x_3193.x, x_3193.y) * vec2<f32>(x_3196.x, x_3196.y)) + vec2<f32>(x_3199.w, x_3199.y));
            let x_3202 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3201.x, x_3201.y, x_3202.z, x_3202.w);
            let x_3205 : f32 = u_xlat17.y;
            u_xlat14.z = x_3205;
            let x_3207 : vec4<f32> = u_xlat12;
            let x_3210 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3213 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3207.x, x_3207.y, x_3207.x, x_3207.y) * vec4<f32>(x_3210.x, x_3210.y, x_3210.x, x_3210.y)) + vec4<f32>(x_3213.x, x_3213.y, x_3213.x, x_3213.z));
            let x_3217 : f32 = u_xlat15.w;
            u_xlat17.y = x_3217;
            let x_3220 : vec4<f32> = u_xlat12;
            let x_3223 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3226 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3220.x, x_3220.y, x_3220.x, x_3220.y) * vec4<f32>(x_3223.x, x_3223.y, x_3223.x, x_3223.y)) + vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3226.y));
            let x_3230 : vec4<f32> = u_xlat12;
            let x_3233 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3236 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3230.x, x_3230.y) * vec2<f32>(x_3233.x, x_3233.y)) + vec2<f32>(x_3236.w, x_3236.y));
            let x_3240 : f32 = u_xlat17.y;
            u_xlat14.w = x_3240;
            let x_3243 : vec4<f32> = u_xlat12;
            let x_3246 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3249 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3243.x, x_3243.y) * vec2<f32>(x_3246.x, x_3246.y)) + vec2<f32>(x_3249.x, x_3249.w));
            let x_3252 : vec4<f32> = u_xlat17;
            let x_3253 : vec3<f32> = vec3<f32>(x_3252.x, x_3252.z, x_3252.w);
            let x_3254 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3253.x, x_3254.y, x_3253.y, x_3253.z);
            let x_3256 : vec4<f32> = u_xlat12;
            let x_3259 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3262 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y) * vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.y)) + vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3262.y));
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3266.x, x_3266.y) * vec2<f32>(x_3269.x, x_3269.y)) + vec2<f32>(x_3272.w, x_3272.y));
            let x_3276 : f32 = u_xlat14.x;
            u_xlat15.x = x_3276;
            let x_3278 : vec4<f32> = u_xlat12;
            let x_3281 : vec4<f32> = x_276.x_AdditionalShadowmapSize;
            let x_3284 : vec4<f32> = u_xlat15;
            let x_3286 : vec2<f32> = ((vec2<f32>(x_3278.x, x_3278.y) * vec2<f32>(x_3281.x, x_3281.y)) + vec2<f32>(x_3284.x, x_3284.y));
            let x_3287 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3286.x, x_3286.y, x_3287.z, x_3287.w);
            let x_3290 : vec4<f32> = u_xlat13;
            let x_3292 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3290.x, x_3290.x, x_3290.x, x_3290.x) * x_3292);
            let x_3295 : vec4<f32> = u_xlat13;
            let x_3297 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3295.y, x_3295.y, x_3295.y, x_3295.y) * x_3297);
            let x_3300 : vec4<f32> = u_xlat13;
            let x_3302 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3300.z, x_3300.z, x_3300.z, x_3300.z) * x_3302);
            let x_3304 : vec4<f32> = u_xlat13;
            let x_3306 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3304.w, x_3304.w, x_3304.w, x_3304.w) * x_3306);
            let x_3309 : vec4<f32> = u_xlat18;
            let x_3310 : vec2<f32> = vec2<f32>(x_3309.x, x_3309.y);
            let x_3312 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec43;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat88 = x_3321;
            let x_3323 : vec4<f32> = u_xlat18;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.z, x_3323.w);
            let x_3326 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec44;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat89 = x_3335;
            let x_3336 : f32 = u_xlat89;
            let x_3338 : f32 = u_xlat23.y;
            u_xlat89 = (x_3336 * x_3338);
            let x_3341 : f32 = u_xlat23.x;
            let x_3342 : f32 = u_xlat88;
            let x_3344 : f32 = u_xlat89;
            u_xlat88 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec2<f32> = u_xlat64;
            let x_3349 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec45;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat89 = x_3358;
            let x_3360 : f32 = u_xlat23.z;
            let x_3361 : f32 = u_xlat89;
            let x_3363 : f32 = u_xlat88;
            u_xlat88 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec4<f32> = u_xlat21;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.x, x_3366.y);
            let x_3369 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3367.x, x_3367.y, x_3369);
            let x_3376 : vec3<f32> = txVec46;
            let x_3378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3376.xy, x_3376.z);
            u_xlat89 = x_3378;
            let x_3380 : f32 = u_xlat23.w;
            let x_3381 : f32 = u_xlat89;
            let x_3383 : f32 = u_xlat88;
            u_xlat88 = ((x_3380 * x_3381) + x_3383);
            let x_3386 : vec4<f32> = u_xlat19;
            let x_3387 : vec2<f32> = vec2<f32>(x_3386.x, x_3386.y);
            let x_3389 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec47;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat89 = x_3398;
            let x_3400 : f32 = u_xlat24.x;
            let x_3401 : f32 = u_xlat89;
            let x_3403 : f32 = u_xlat88;
            u_xlat88 = ((x_3400 * x_3401) + x_3403);
            let x_3406 : vec4<f32> = u_xlat19;
            let x_3407 : vec2<f32> = vec2<f32>(x_3406.z, x_3406.w);
            let x_3409 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec48;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat89 = x_3418;
            let x_3420 : f32 = u_xlat24.y;
            let x_3421 : f32 = u_xlat89;
            let x_3423 : f32 = u_xlat88;
            u_xlat88 = ((x_3420 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat20;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.x, x_3426.y);
            let x_3429 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec49;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat89 = x_3438;
            let x_3440 : f32 = u_xlat24.z;
            let x_3441 : f32 = u_xlat89;
            let x_3443 : f32 = u_xlat88;
            u_xlat88 = ((x_3440 * x_3441) + x_3443);
            let x_3446 : vec4<f32> = u_xlat21;
            let x_3447 : vec2<f32> = vec2<f32>(x_3446.z, x_3446.w);
            let x_3449 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec50;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat89 = x_3458;
            let x_3460 : f32 = u_xlat24.w;
            let x_3461 : f32 = u_xlat89;
            let x_3463 : f32 = u_xlat88;
            u_xlat88 = ((x_3460 * x_3461) + x_3463);
            let x_3466 : vec4<f32> = u_xlat22;
            let x_3467 : vec2<f32> = vec2<f32>(x_3466.x, x_3466.y);
            let x_3469 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec51;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat89 = x_3478;
            let x_3480 : f32 = u_xlat25.x;
            let x_3481 : f32 = u_xlat89;
            let x_3483 : f32 = u_xlat88;
            u_xlat88 = ((x_3480 * x_3481) + x_3483);
            let x_3486 : vec4<f32> = u_xlat22;
            let x_3487 : vec2<f32> = vec2<f32>(x_3486.z, x_3486.w);
            let x_3489 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3487.x, x_3487.y, x_3489);
            let x_3496 : vec3<f32> = txVec52;
            let x_3498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3496.xy, x_3496.z);
            u_xlat89 = x_3498;
            let x_3500 : f32 = u_xlat25.y;
            let x_3501 : f32 = u_xlat89;
            let x_3503 : f32 = u_xlat88;
            u_xlat88 = ((x_3500 * x_3501) + x_3503);
            let x_3506 : vec2<f32> = u_xlat40;
            let x_3508 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec53;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat89 = x_3517;
            let x_3519 : f32 = u_xlat25.z;
            let x_3520 : f32 = u_xlat89;
            let x_3522 : f32 = u_xlat88;
            u_xlat88 = ((x_3519 * x_3520) + x_3522);
            let x_3525 : vec2<f32> = u_xlat72;
            let x_3527 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
            let x_3534 : vec3<f32> = txVec54;
            let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
            u_xlat89 = x_3536;
            let x_3538 : f32 = u_xlat25.w;
            let x_3539 : f32 = u_xlat89;
            let x_3541 : f32 = u_xlat88;
            u_xlat88 = ((x_3538 * x_3539) + x_3541);
            let x_3544 : vec4<f32> = u_xlat17;
            let x_3545 : vec2<f32> = vec2<f32>(x_3544.x, x_3544.y);
            let x_3547 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3545.x, x_3545.y, x_3547);
            let x_3554 : vec3<f32> = txVec55;
            let x_3556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3554.xy, x_3554.z);
            u_xlat89 = x_3556;
            let x_3558 : f32 = u_xlat13.x;
            let x_3559 : f32 = u_xlat89;
            let x_3561 : f32 = u_xlat88;
            u_xlat88 = ((x_3558 * x_3559) + x_3561);
            let x_3564 : vec4<f32> = u_xlat17;
            let x_3565 : vec2<f32> = vec2<f32>(x_3564.z, x_3564.w);
            let x_3567 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
            let x_3574 : vec3<f32> = txVec56;
            let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
            u_xlat89 = x_3576;
            let x_3578 : f32 = u_xlat13.y;
            let x_3579 : f32 = u_xlat89;
            let x_3581 : f32 = u_xlat88;
            u_xlat88 = ((x_3578 * x_3579) + x_3581);
            let x_3584 : vec2<f32> = u_xlat67;
            let x_3586 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3584.x, x_3584.y, x_3586);
            let x_3593 : vec3<f32> = txVec57;
            let x_3595 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3593.xy, x_3593.z);
            u_xlat89 = x_3595;
            let x_3597 : f32 = u_xlat13.z;
            let x_3598 : f32 = u_xlat89;
            let x_3600 : f32 = u_xlat88;
            u_xlat88 = ((x_3597 * x_3598) + x_3600);
            let x_3603 : vec4<f32> = u_xlat12;
            let x_3604 : vec2<f32> = vec2<f32>(x_3603.x, x_3603.y);
            let x_3606 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3604.x, x_3604.y, x_3606);
            let x_3613 : vec3<f32> = txVec58;
            let x_3615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3613.xy, x_3613.z);
            u_xlat89 = x_3615;
            let x_3617 : f32 = u_xlat13.w;
            let x_3618 : f32 = u_xlat89;
            let x_3620 : f32 = u_xlat88;
            u_xlat86 = ((x_3617 * x_3618) + x_3620);
          }
        }
      } else {
        let x_3624 : vec4<f32> = u_xlat11;
        let x_3625 : vec2<f32> = vec2<f32>(x_3624.x, x_3624.y);
        let x_3627 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
        let x_3634 : vec3<f32> = txVec59;
        let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
        u_xlat86 = x_3636;
      }
      let x_3637 : i32 = u_xlati31;
      let x_3639 : f32 = x_276.x_AdditionalShadowParams[x_3637].x;
      u_xlat88 = (1.0f + -(x_3639));
      let x_3642 : f32 = u_xlat86;
      let x_3643 : i32 = u_xlati31;
      let x_3645 : f32 = x_276.x_AdditionalShadowParams[x_3643].x;
      let x_3647 : f32 = u_xlat88;
      u_xlat86 = ((x_3642 * x_3645) + x_3647);
      let x_3650 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3650);
      let x_3653 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3653 >= 1.0f);
      let x_3656 : bool = u_xlatb88;
      let x_3658 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3656 | x_3658);
      let x_3660 : bool = u_xlatb88;
      let x_3661 : f32 = u_xlat86;
      u_xlat86 = select(x_3661, 1.0f, x_3660);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3664 : f32 = u_xlat86;
    u_xlat88 = (-(x_3664) + 1.0f);
    let x_3668 : f32 = u_xlat3.x;
    let x_3669 : f32 = u_xlat88;
    let x_3671 : f32 = u_xlat86;
    u_xlat86 = ((x_3668 * x_3669) + x_3671);
    let x_3673 : f32 = u_xlat84;
    let x_3674 : f32 = u_xlat86;
    u_xlat84 = (x_3673 * x_3674);
    let x_3676 : vec4<f32> = u_xlat1;
    let x_3678 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3676.x, x_3676.y, x_3676.w), vec3<f32>(x_3678.x, x_3678.y, x_3678.z));
    let x_3681 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3681, 0.0f, 1.0f);
    let x_3683 : f32 = u_xlat84;
    let x_3684 : f32 = u_xlat86;
    u_xlat84 = (x_3683 * x_3684);
    let x_3686 : f32 = u_xlat84;
    let x_3688 : i32 = u_xlati31;
    let x_3690 : vec4<f32> = x_2237.x_AdditionalLightsColor[x_3688];
    let x_3692 : vec3<f32> = (vec3<f32>(x_3686, x_3686, x_3686) * vec3<f32>(x_3690.x, x_3690.y, x_3690.z));
    let x_3693 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3692.x, x_3692.y, x_3692.z, x_3693.w);
    let x_3695 : vec3<f32> = u_xlat35;
    let x_3696 : f32 = u_xlat85;
    let x_3699 : vec3<f32> = u_xlat4;
    u_xlat35 = ((x_3695 * vec3<f32>(x_3696, x_3696, x_3696)) + x_3699);
    let x_3701 : vec3<f32> = u_xlat35;
    let x_3702 : vec3<f32> = u_xlat35;
    u_xlat31.x = dot(x_3701, x_3702);
    let x_3706 : f32 = u_xlat31.x;
    u_xlat31.x = max(x_3706, 1.17549435e-38f);
    let x_3710 : f32 = u_xlat31.x;
    u_xlat31.x = inverseSqrt(x_3710);
    let x_3713 : vec3<f32> = u_xlat31;
    let x_3715 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_3713.x, x_3713.x, x_3713.x) * x_3715);
    let x_3717 : vec4<f32> = u_xlat1;
    let x_3719 : vec3<f32> = u_xlat35;
    u_xlat31.x = dot(vec3<f32>(x_3717.x, x_3717.y, x_3717.w), x_3719);
    let x_3723 : f32 = u_xlat31.x;
    u_xlat31.x = clamp(x_3723, 0.0f, 1.0f);
    let x_3726 : vec4<f32> = u_xlat10;
    let x_3728 : vec3<f32> = u_xlat35;
    u_xlat84 = dot(vec3<f32>(x_3726.x, x_3726.y, x_3726.z), x_3728);
    let x_3730 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3730, 0.0f, 1.0f);
    let x_3733 : f32 = u_xlat31.x;
    let x_3735 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3733 * x_3735);
    let x_3739 : f32 = u_xlat31.x;
    let x_3741 : f32 = u_xlat9.x;
    u_xlat31.x = ((x_3739 * x_3741) + 1.00001001358032226562f);
    let x_3745 : f32 = u_xlat84;
    let x_3746 : f32 = u_xlat84;
    u_xlat84 = (x_3745 * x_3746);
    let x_3749 : f32 = u_xlat31.x;
    let x_3751 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3749 * x_3751);
    let x_3754 : f32 = u_xlat84;
    u_xlat84 = max(x_3754, 0.10000000149011611938f);
    let x_3757 : f32 = u_xlat31.x;
    let x_3758 : f32 = u_xlat84;
    u_xlat31.x = (x_3757 * x_3758);
    let x_3761 : f32 = u_xlat82;
    let x_3763 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3761 * x_3763);
    let x_3766 : f32 = u_xlat29;
    let x_3768 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3766 / x_3768);
    let x_3771 : vec3<f32> = u_xlat0;
    let x_3772 : vec3<f32> = u_xlat31;
    let x_3775 : vec3<f32> = u_xlat7;
    u_xlat35 = ((x_3771 * vec3<f32>(x_3772.x, x_3772.x, x_3772.x)) + x_3775);
    let x_3777 : vec3<f32> = u_xlat35;
    let x_3778 : vec4<f32> = u_xlat11;
    let x_3781 : vec4<f32> = u_xlat8;
    let x_3783 : vec3<f32> = ((x_3777 * vec3<f32>(x_3778.x, x_3778.y, x_3778.z)) + vec3<f32>(x_3781.x, x_3781.y, x_3781.z));
    let x_3784 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3783.x, x_3783.y, x_3783.z, x_3784.w);

    continuing {
      let x_3786 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3786 + bitcast<u32>(1i));
    }
  }
  let x_3788 : vec4<f32> = u_xlat6;
  let x_3790 : f32 = u_xlat55;
  let x_3793 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_3788.x, x_3788.y, x_3788.z) * vec3<f32>(x_3790, x_3790, x_3790)) + vec3<f32>(x_3793.x, x_3793.z, x_3793.w));
  let x_3796 : vec4<f32> = u_xlat8;
  let x_3798 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3796.x, x_3796.y, x_3796.z) + x_3798);
  let x_3800 : vec4<f32> = u_xlat2;
  let x_3802 : f32 = u_xlat53;
  let x_3805 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3800.x, x_3800.y, x_3800.z) * vec3<f32>(x_3802, x_3802, x_3802)) + x_3805);
  let x_3807 : f32 = u_xlat78;
  let x_3808 : f32 = u_xlat78;
  u_xlat78 = (x_3807 * -(x_3808));
  let x_3811 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3811);
  let x_3813 : vec3<f32> = u_xlat0;
  let x_3815 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_3813 + -(vec3<f32>(x_3815.x, x_3815.y, x_3815.z)));
  let x_3821 : f32 = u_xlat78;
  let x_3823 : vec3<f32> = u_xlat0;
  let x_3826 : vec4<f32> = x_29.unity_FogColor;
  let x_3828 : vec3<f32> = ((vec3<f32>(x_3821, x_3821, x_3821) * x_3823) + vec3<f32>(x_3826.x, x_3826.y, x_3826.z));
  let x_3829 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3828.x, x_3828.y, x_3828.z, x_3829.w);
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


