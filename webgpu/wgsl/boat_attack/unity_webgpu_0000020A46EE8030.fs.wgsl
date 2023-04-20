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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(3) var<uniform> x_437 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2073 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2214 : f32;
  var x_2224 : f32;
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
  let x_269 : f32 = vs_INTERP7.y;
  let x_271 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_269 * x_271);
  let x_274 : f32 = x_29.unity_MatrixV[0i].z;
  let x_276 : f32 = vs_INTERP7.x;
  let x_278 : f32 = u_xlat78;
  u_xlat78 = ((x_274 * x_276) + x_278);
  let x_281 : f32 = x_29.unity_MatrixV[2i].z;
  let x_283 : f32 = vs_INTERP7.z;
  let x_285 : f32 = u_xlat78;
  u_xlat78 = ((x_281 * x_283) + x_285);
  let x_287 : f32 = u_xlat78;
  let x_289 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_287 + x_289);
  let x_291 : f32 = u_xlat78;
  let x_295 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_291) + -(x_295));
  let x_298 : f32 = u_xlat78;
  u_xlat78 = max(x_298, 0.0f);
  let x_300 : f32 = u_xlat78;
  let x_303 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_300 * x_303);
  let x_312 : vec2<f32> = vs_INTERP0;
  let x_314 : f32 = x_29.x_GlobalMipBias.x;
  let x_315 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_312, x_314);
  u_xlat5 = x_315;
  let x_321 : vec2<f32> = vs_INTERP0;
  let x_323 : f32 = x_29.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_321, x_323);
  u_xlat6 = vec3<f32>(x_324.x, x_324.y, x_324.z);
  let x_326 : vec4<f32> = u_xlat5;
  let x_330 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_331 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(vec3<f32>(x_333.x, x_333.y, x_333.w), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : f32 = u_xlat80;
  u_xlat80 = (x_338 + 0.5f);
  let x_341 : f32 = u_xlat80;
  let x_343 : vec3<f32> = u_xlat6;
  let x_344 : vec3<f32> = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat5.w;
  u_xlat80 = max(x_348, 0.00009999999747378752f);
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : f32 = u_xlat80;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) / vec3<f32>(x_353, x_353, x_353));
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = u_xlat3;
  let x_359 : vec2<f32> = vec2<f32>(x_358.x, x_358.y);
  let x_360 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_359.x, x_359.y, x_360.z);
  let x_362 : vec3<f32> = u_xlat3;
  let x_366 : vec2<f32> = clamp(vec2<f32>(x_362.x, x_362.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_367 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_366.x, x_366.y, x_367.z);
  let x_370 : f32 = u_xlat3.x;
  u_xlat80 = ((-(x_370) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_376 : f32 = u_xlat80;
  let x_379 : f32 = u_xlat3.y;
  u_xlat81 = (-(x_376) + x_379);
  let x_381 : vec3<f32> = u_xlat0;
  let x_382 : f32 = u_xlat80;
  u_xlat6 = (x_381 * vec3<f32>(x_382, x_382, x_382));
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_385 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_389 : vec3<f32> = u_xlat3;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_389.x, x_389.x, x_389.x) * x_391) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_397 : f32 = u_xlat3.y;
  u_xlat80 = (-(x_397) + 1.0f);
  let x_400 : f32 = u_xlat80;
  let x_401 : f32 = u_xlat80;
  u_xlat3.x = (x_400 * x_401);
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_405, 0.0078125f);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  u_xlat29 = (x_411 * x_413);
  let x_415 : f32 = u_xlat81;
  u_xlat81 = (x_415 + 1.0f);
  let x_417 : f32 = u_xlat81;
  u_xlat81 = min(x_417, 1.0f);
  let x_421 : f32 = u_xlat3.x;
  u_xlat82 = ((x_421 * 4.0f) + 2.0f);
  let x_427 : f32 = u_xlat3.z;
  u_xlat55 = min(x_427, 1.0f);
  let x_440 : f32 = x_437.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_440);
  let x_442 : bool = u_xlatb83;
  if (x_442) {
    let x_446 : f32 = x_437.x_MainLightShadowParams.y;
    u_xlatb83 = (x_446 == 1.0f);
    let x_448 : bool = u_xlatb83;
    if (x_448) {
      let x_453 : vec4<f32> = vs_INTERP3;
      let x_456 : vec4<f32> = x_437.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_453.x, x_453.y, x_453.x, x_453.y) + x_456);
      let x_459 : vec4<f32> = u_xlat7;
      let x_460 : vec2<f32> = vec2<f32>(x_459.x, x_459.y);
      let x_462 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_460.x, x_460.y, x_462);
      let x_475 : vec3<f32> = txVec0;
      let x_477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_475.xy, x_475.z);
      u_xlat8.x = x_477;
      let x_480 : vec4<f32> = u_xlat7;
      let x_481 : vec2<f32> = vec2<f32>(x_480.z, x_480.w);
      let x_483 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_481.x, x_481.y, x_483);
      let x_490 : vec3<f32> = txVec1;
      let x_492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_490.xy, x_490.z);
      u_xlat8.y = x_492;
      let x_494 : vec4<f32> = vs_INTERP3;
      let x_497 : vec4<f32> = x_437.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_494.x, x_494.y, x_494.x, x_494.y) + x_497);
      let x_500 : vec4<f32> = u_xlat7;
      let x_501 : vec2<f32> = vec2<f32>(x_500.x, x_500.y);
      let x_503 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_501.x, x_501.y, x_503);
      let x_510 : vec3<f32> = txVec2;
      let x_512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_510.xy, x_510.z);
      u_xlat8.z = x_512;
      let x_515 : vec4<f32> = u_xlat7;
      let x_516 : vec2<f32> = vec2<f32>(x_515.z, x_515.w);
      let x_518 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_516.x, x_516.y, x_518);
      let x_525 : vec3<f32> = txVec3;
      let x_527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_525.xy, x_525.z);
      u_xlat8.w = x_527;
      let x_530 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_530, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_537 : f32 = x_437.x_MainLightShadowParams.y;
      u_xlatb84 = (x_537 == 2.0f);
      let x_539 : bool = u_xlatb84;
      if (x_539) {
        let x_542 : vec4<f32> = vs_INTERP3;
        let x_545 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_549 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_545.z, x_545.w)) + vec2<f32>(0.5f, 0.5f));
        let x_550 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat7;
        let x_554 : vec2<f32> = floor(vec2<f32>(x_552.x, x_552.y));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_559 : vec4<f32> = vs_INTERP3;
        let x_562 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(x_562.z, x_562.w)) + -(vec2<f32>(x_565.x, x_565.y)));
        let x_569 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_569.x, x_569.x, x_569.y, x_569.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_574 : vec4<f32> = u_xlat8;
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_574.x, x_574.x, x_574.z, x_574.z) * vec4<f32>(x_576.x, x_576.x, x_576.z, x_576.z));
        let x_579 : vec4<f32> = u_xlat9;
        let x_583 : vec2<f32> = (vec2<f32>(x_579.y, x_579.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_584.y, x_583.y, x_584.w);
        let x_586 : vec4<f32> = u_xlat9;
        let x_589 : vec2<f32> = u_xlat59;
        let x_591 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.z) * vec2<f32>(0.5f, 0.5f)) + -(x_589));
        let x_592 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_595 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_595) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec2<f32> = u_xlat59;
        let x_602 : vec2<f32> = min(x_600, vec2<f32>(0.0f, 0.0f));
        let x_603 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat10;
        let x_608 : vec4<f32> = u_xlat10;
        let x_611 : vec2<f32> = u_xlat61;
        let x_612 : vec2<f32> = ((-(vec2<f32>(x_605.x, x_605.y)) * vec2<f32>(x_608.x, x_608.y)) + x_611);
        let x_613 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_615 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_615, vec2<f32>(0.0f, 0.0f));
        let x_617 : vec2<f32> = u_xlat59;
        let x_619 : vec2<f32> = u_xlat59;
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_617) * x_619) + vec2<f32>(x_621.y, x_621.w));
        let x_624 : vec4<f32> = u_xlat10;
        let x_626 : vec2<f32> = (vec2<f32>(x_624.x, x_624.y) + vec2<f32>(1.0f, 1.0f));
        let x_627 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_629 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_629 + vec2<f32>(1.0f, 1.0f));
        let x_632 : vec4<f32> = u_xlat9;
        let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec2<f32> = u_xlat61;
        let x_640 : vec2<f32> = (x_639 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat10;
        let x_645 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_649 : vec2<f32> = u_xlat59;
        let x_650 : vec2<f32> = (x_649 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_651 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_653.y, x_653.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_657 : f32 = u_xlat10.x;
        u_xlat11.z = x_657;
        let x_660 : f32 = u_xlat59.x;
        u_xlat11.w = x_660;
        let x_663 : f32 = u_xlat12.x;
        u_xlat9.z = x_663;
        let x_666 : f32 = u_xlat8.x;
        u_xlat9.w = x_666;
        let x_669 : vec4<f32> = u_xlat9;
        let x_671 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_669.z, x_669.w, x_669.x, x_669.z) + vec4<f32>(x_671.z, x_671.w, x_671.x, x_671.z));
        let x_675 : f32 = u_xlat11.y;
        u_xlat10.z = x_675;
        let x_678 : f32 = u_xlat59.y;
        u_xlat10.w = x_678;
        let x_681 : f32 = u_xlat9.y;
        u_xlat12.z = x_681;
        let x_684 : f32 = u_xlat8.z;
        u_xlat12.w = x_684;
        let x_686 : vec4<f32> = u_xlat10;
        let x_688 : vec4<f32> = u_xlat12;
        let x_690 : vec3<f32> = (vec3<f32>(x_686.z, x_686.y, x_686.w) + vec3<f32>(x_688.z, x_688.y, x_688.w));
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat9;
        let x_695 : vec4<f32> = u_xlat13;
        let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.z, x_693.w) / vec3<f32>(x_695.z, x_695.w, x_695.y));
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat9;
        let x_705 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_706 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat12;
        let x_710 : vec4<f32> = u_xlat8;
        let x_712 : vec3<f32> = (vec3<f32>(x_708.z, x_708.y, x_708.w) / vec3<f32>(x_710.x, x_710.y, x_710.z));
        let x_713 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat10;
        let x_717 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_718 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat9;
        let x_723 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_725 : vec3<f32> = (vec3<f32>(x_720.y, x_720.x, x_720.z) * vec3<f32>(x_723.x, x_723.x, x_723.x));
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat10;
        let x_731 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_733 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_731.y, x_731.y, x_731.y));
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_737 : f32 = u_xlat10.x;
        u_xlat9.w = x_737;
        let x_739 : vec4<f32> = u_xlat7;
        let x_742 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.y, x_745.w, x_745.x, x_745.w));
        let x_748 : vec4<f32> = u_xlat7;
        let x_751 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_751.x, x_751.y)) + vec2<f32>(x_754.z, x_754.w));
        let x_758 : f32 = u_xlat9.y;
        u_xlat10.w = x_758;
        let x_760 : vec4<f32> = u_xlat10;
        let x_761 : vec2<f32> = vec2<f32>(x_760.y, x_760.z);
        let x_762 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_761.x, x_762.z, x_761.y);
        let x_764 : vec4<f32> = u_xlat7;
        let x_767 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y) * vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y)) + vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.y));
        let x_773 : vec4<f32> = u_xlat7;
        let x_776 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y) * vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y)) + vec4<f32>(x_779.w, x_779.y, x_779.w, x_779.z));
        let x_782 : vec4<f32> = u_xlat7;
        let x_785 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) * vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y)) + vec4<f32>(x_788.x, x_788.w, x_788.z, x_788.w));
        let x_792 : vec4<f32> = u_xlat8;
        let x_794 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_792.x, x_792.x, x_792.x, x_792.y) * vec4<f32>(x_794.z, x_794.w, x_794.y, x_794.z));
        let x_798 : vec4<f32> = u_xlat8;
        let x_800 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_798.y, x_798.y, x_798.z, x_798.z) * x_800);
        let x_804 : f32 = u_xlat8.z;
        let x_806 : f32 = u_xlat13.y;
        u_xlat84 = (x_804 * x_806);
        let x_809 : vec4<f32> = u_xlat11;
        let x_810 : vec2<f32> = vec2<f32>(x_809.x, x_809.y);
        let x_812 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_810.x, x_810.y, x_812);
        let x_819 : vec3<f32> = txVec4;
        let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_819.xy, x_819.z);
        u_xlat7.x = x_821;
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_835 : vec3<f32> = txVec5;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat33 = x_837;
        let x_838 : f32 = u_xlat33;
        let x_840 : f32 = u_xlat14.y;
        u_xlat33 = (x_838 * x_840);
        let x_843 : f32 = u_xlat14.x;
        let x_845 : f32 = u_xlat7.x;
        let x_847 : f32 = u_xlat33;
        u_xlat7.x = ((x_843 * x_845) + x_847);
        let x_851 : vec2<f32> = u_xlat59;
        let x_853 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec6;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_860.xy, x_860.z);
        u_xlat33 = x_862;
        let x_864 : f32 = u_xlat14.z;
        let x_865 : f32 = u_xlat33;
        let x_868 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_864 * x_865) + x_868);
        let x_872 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = vec2<f32>(x_872.x, x_872.y);
        let x_875 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_882 : vec3<f32> = txVec7;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat33 = x_884;
        let x_886 : f32 = u_xlat14.w;
        let x_887 : f32 = u_xlat33;
        let x_890 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_886 * x_887) + x_890);
        let x_894 : vec4<f32> = u_xlat12;
        let x_895 : vec2<f32> = vec2<f32>(x_894.x, x_894.y);
        let x_897 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_895.x, x_895.y, x_897);
        let x_904 : vec3<f32> = txVec8;
        let x_906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_904.xy, x_904.z);
        u_xlat33 = x_906;
        let x_908 : f32 = u_xlat15.x;
        let x_909 : f32 = u_xlat33;
        let x_912 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_908 * x_909) + x_912);
        let x_916 : vec4<f32> = u_xlat12;
        let x_917 : vec2<f32> = vec2<f32>(x_916.z, x_916.w);
        let x_919 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_926 : vec3<f32> = txVec9;
        let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_926.xy, x_926.z);
        u_xlat33 = x_928;
        let x_930 : f32 = u_xlat15.y;
        let x_931 : f32 = u_xlat33;
        let x_934 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_930 * x_931) + x_934);
        let x_938 : vec4<f32> = u_xlat10;
        let x_939 : vec2<f32> = vec2<f32>(x_938.z, x_938.w);
        let x_941 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec10;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_948.xy, x_948.z);
        u_xlat33 = x_950;
        let x_952 : f32 = u_xlat15.z;
        let x_953 : f32 = u_xlat33;
        let x_956 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_952 * x_953) + x_956);
        let x_960 : vec4<f32> = u_xlat9;
        let x_961 : vec2<f32> = vec2<f32>(x_960.x, x_960.y);
        let x_963 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec11;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_970.xy, x_970.z);
        u_xlat33 = x_972;
        let x_974 : f32 = u_xlat15.w;
        let x_975 : f32 = u_xlat33;
        let x_978 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_974 * x_975) + x_978);
        let x_982 : vec4<f32> = u_xlat9;
        let x_983 : vec2<f32> = vec2<f32>(x_982.z, x_982.w);
        let x_985 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec12;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_992.xy, x_992.z);
        u_xlat33 = x_994;
        let x_995 : f32 = u_xlat84;
        let x_996 : f32 = u_xlat33;
        let x_999 : f32 = u_xlat7.x;
        u_xlat83 = ((x_995 * x_996) + x_999);
      } else {
        let x_1002 : vec4<f32> = vs_INTERP3;
        let x_1005 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1005.z, x_1005.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1009 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1013 : vec2<f32> = floor(vec2<f32>(x_1011.x, x_1011.y));
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : vec4<f32> = vs_INTERP3;
        let x_1019 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1016.x, x_1016.y) * vec2<f32>(x_1019.z, x_1019.w)) + -(vec2<f32>(x_1022.x, x_1022.y)));
        let x_1026 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1026.x, x_1026.x, x_1026.y, x_1026.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1029 : vec4<f32> = u_xlat8;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z) * vec4<f32>(x_1031.x, x_1031.x, x_1031.z, x_1031.z));
        let x_1034 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = (vec2<f32>(x_1034.y, x_1034.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1039 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1039.x, x_1038.x, x_1039.z, x_1038.y);
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = u_xlat59;
        let x_1046 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1044));
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1046.x, x_1047.y, x_1046.y, x_1047.w);
        let x_1049 : vec2<f32> = u_xlat59;
        let x_1051 : vec2<f32> = (-(x_1049) + vec2<f32>(1.0f, 1.0f));
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1054, vec2<f32>(0.0f, 0.0f));
        let x_1056 : vec2<f32> = u_xlat61;
        let x_1058 : vec2<f32> = u_xlat61;
        let x_1060 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = ((-(x_1056) * x_1058) + vec2<f32>(x_1060.x, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1065 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1065, vec2<f32>(0.0f, 0.0f));
        let x_1068 : vec2<f32> = u_xlat61;
        let x_1070 : vec2<f32> = u_xlat61;
        let x_1072 : vec4<f32> = u_xlat8;
        let x_1074 : vec2<f32> = ((-(x_1068) * x_1070) + vec2<f32>(x_1072.y, x_1072.w));
        let x_1075 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1074.x, x_1075.y, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1079 : vec2<f32> = (vec2<f32>(x_1077.x, x_1077.y) + vec2<f32>(2.0f, 2.0f));
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec3<f32> = u_xlat34;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1082.x, x_1082.z) + vec2<f32>(2.0f, 2.0f));
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1085.x, x_1084.x, x_1085.z, x_1084.y);
        let x_1088 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1088 * 0.08163200318813323975f);
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1092.z, x_1092.x, x_1092.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1096 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1105 : f32 = u_xlat12.y;
        u_xlat11.x = x_1105;
        let x_1107 : vec2<f32> = u_xlat59;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1115 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1115.x, x_1114.x, x_1115.z, x_1114.y);
        let x_1117 : vec2<f32> = u_xlat59;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1122.w);
        let x_1125 : f32 = u_xlat8.x;
        u_xlat9.y = x_1125;
        let x_1128 : f32 = u_xlat10.y;
        u_xlat9.w = x_1128;
        let x_1130 : vec4<f32> = u_xlat9;
        let x_1131 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1130 + x_1131);
        let x_1133 : vec2<f32> = u_xlat59;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1133.y, x_1133.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1137 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec2<f32> = u_xlat59;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1139.y, x_1139.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1146 : f32 = u_xlat8.y;
        u_xlat10.y = x_1146;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1148 + x_1149);
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1151 / x_1152);
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1154 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1160 / x_1161);
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1163 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1165 : vec4<f32> = u_xlat9;
        let x_1168 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1165.w, x_1165.x, x_1165.y, x_1165.z) * vec4<f32>(x_1168.x, x_1168.x, x_1168.x, x_1168.x));
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1174 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1171.x, x_1171.w, x_1171.y, x_1171.z) * vec4<f32>(x_1174.y, x_1174.y, x_1174.y, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat9;
        let x_1178 : vec3<f32> = vec3<f32>(x_1177.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
        let x_1182 : f32 = u_xlat10.x;
        u_xlat12.y = x_1182;
        let x_1184 : vec4<f32> = u_xlat7;
        let x_1187 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y) * vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y)) + vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1196 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.w, x_1199.y));
        let x_1203 : f32 = u_xlat12.y;
        u_xlat9.y = x_1203;
        let x_1206 : f32 = u_xlat10.z;
        u_xlat12.y = x_1206;
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat7;
        let x_1220 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat12;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.w, x_1223.y));
        let x_1226 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1229 : f32 = u_xlat12.y;
        u_xlat9.z = x_1229;
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1235 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.z));
        let x_1242 : f32 = u_xlat10.w;
        u_xlat12.y = x_1242;
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1248 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1258 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.x, x_1258.y)) + vec2<f32>(x_1261.w, x_1261.y));
        let x_1265 : f32 = u_xlat12.y;
        u_xlat9.w = x_1265;
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1271 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1274.x, x_1274.w));
        let x_1277 : vec4<f32> = u_xlat12;
        let x_1278 : vec3<f32> = vec3<f32>(x_1277.x, x_1277.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
        let x_1281 : vec4<f32> = u_xlat7;
        let x_1284 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y) * vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y)) + vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1287.y));
        let x_1291 : vec4<f32> = u_xlat7;
        let x_1294 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1301 : f32 = u_xlat9.x;
        u_xlat10.x = x_1301;
        let x_1303 : vec4<f32> = u_xlat7;
        let x_1306 : vec4<f32> = x_437.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat10;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.x, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1317 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.x) * x_1317);
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1322 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1320.y, x_1320.y, x_1320.y, x_1320.y) * x_1322);
        let x_1325 : vec4<f32> = u_xlat8;
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1325.z, x_1325.z, x_1325.z, x_1325.z) * x_1327);
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1331 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1329.w, x_1329.w, x_1329.w, x_1329.w) * x_1331);
        let x_1334 : vec4<f32> = u_xlat13;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec13;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat84 = x_1346;
        let x_1348 : vec4<f32> = u_xlat13;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.z, x_1348.w);
        let x_1351 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec14;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
        u_xlat9.x = x_1360;
        let x_1363 : f32 = u_xlat9.x;
        let x_1365 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1363 * x_1365);
        let x_1369 : f32 = u_xlat18.x;
        let x_1370 : f32 = u_xlat84;
        let x_1373 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1369 * x_1370) + x_1373);
        let x_1376 : vec2<f32> = u_xlat59;
        let x_1378 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec15;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat59.x = x_1387;
        let x_1390 : f32 = u_xlat18.z;
        let x_1392 : f32 = u_xlat59.x;
        let x_1394 : f32 = u_xlat84;
        u_xlat84 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat16;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec16;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat59.x = x_1409;
        let x_1412 : f32 = u_xlat18.w;
        let x_1414 : f32 = u_xlat59.x;
        let x_1416 : f32 = u_xlat84;
        u_xlat84 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat14;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec17;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat59.x = x_1431;
        let x_1434 : f32 = u_xlat19.x;
        let x_1436 : f32 = u_xlat59.x;
        let x_1438 : f32 = u_xlat84;
        u_xlat84 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat14;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec18;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat59.x = x_1453;
        let x_1456 : f32 = u_xlat19.y;
        let x_1458 : f32 = u_xlat59.x;
        let x_1460 : f32 = u_xlat84;
        u_xlat84 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat15;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec19;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat59.x = x_1475;
        let x_1478 : f32 = u_xlat19.z;
        let x_1480 : f32 = u_xlat59.x;
        let x_1482 : f32 = u_xlat84;
        u_xlat84 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat16;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec20;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat59.x = x_1497;
        let x_1500 : f32 = u_xlat19.w;
        let x_1502 : f32 = u_xlat59.x;
        let x_1504 : f32 = u_xlat84;
        u_xlat84 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat17;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec21;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat59.x = x_1519;
        let x_1522 : f32 = u_xlat20.x;
        let x_1524 : f32 = u_xlat59.x;
        let x_1526 : f32 = u_xlat84;
        u_xlat84 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat17;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.z, x_1529.w);
        let x_1532 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec22;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat59.x = x_1541;
        let x_1544 : f32 = u_xlat20.y;
        let x_1546 : f32 = u_xlat59.x;
        let x_1548 : f32 = u_xlat84;
        u_xlat84 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec2<f32> = u_xlat35;
        let x_1553 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec23;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat59.x = x_1562;
        let x_1565 : f32 = u_xlat20.z;
        let x_1567 : f32 = u_xlat59.x;
        let x_1569 : f32 = u_xlat84;
        u_xlat84 = ((x_1565 * x_1567) + x_1569);
        let x_1572 : vec2<f32> = u_xlat67;
        let x_1574 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec24;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat59.x = x_1583;
        let x_1586 : f32 = u_xlat20.w;
        let x_1588 : f32 = u_xlat59.x;
        let x_1590 : f32 = u_xlat84;
        u_xlat84 = ((x_1586 * x_1588) + x_1590);
        let x_1593 : vec4<f32> = u_xlat12;
        let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
        let x_1596 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec25;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat59.x = x_1605;
        let x_1608 : f32 = u_xlat8.x;
        let x_1610 : f32 = u_xlat59.x;
        let x_1612 : f32 = u_xlat84;
        u_xlat84 = ((x_1608 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat12;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.z, x_1615.w);
        let x_1618 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec26;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat59.x = x_1627;
        let x_1630 : f32 = u_xlat8.y;
        let x_1632 : f32 = u_xlat59.x;
        let x_1634 : f32 = u_xlat84;
        u_xlat84 = ((x_1630 * x_1632) + x_1634);
        let x_1637 : vec2<f32> = u_xlat62;
        let x_1639 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec27;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat59.x = x_1648;
        let x_1651 : f32 = u_xlat8.z;
        let x_1653 : f32 = u_xlat59.x;
        let x_1655 : f32 = u_xlat84;
        u_xlat84 = ((x_1651 * x_1653) + x_1655);
        let x_1658 : vec4<f32> = u_xlat7;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.x, x_1658.y);
        let x_1661 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec28;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1668.xy, x_1668.z);
        u_xlat7.x = x_1670;
        let x_1673 : f32 = u_xlat8.w;
        let x_1675 : f32 = u_xlat7.x;
        let x_1677 : f32 = u_xlat84;
        u_xlat83 = ((x_1673 * x_1675) + x_1677);
      }
    }
  } else {
    let x_1681 : vec4<f32> = vs_INTERP3;
    let x_1682 : vec2<f32> = vec2<f32>(x_1681.x, x_1681.y);
    let x_1684 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
    let x_1691 : vec3<f32> = txVec29;
    let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
    u_xlat83 = x_1693;
  }
  let x_1695 : f32 = x_437.x_MainLightShadowParams.x;
  u_xlat84 = (-(x_1695) + 1.0f);
  let x_1698 : f32 = u_xlat83;
  let x_1700 : f32 = x_437.x_MainLightShadowParams.x;
  let x_1702 : f32 = u_xlat84;
  u_xlat83 = ((x_1698 * x_1700) + x_1702);
  let x_1705 : f32 = vs_INTERP3.z;
  u_xlatb84 = (0.0f >= x_1705);
  let x_1709 : f32 = vs_INTERP3.z;
  u_xlatb7 = (x_1709 >= 1.0f);
  let x_1711 : bool = u_xlatb84;
  let x_1712 : bool = u_xlatb7;
  u_xlatb84 = (x_1711 | x_1712);
  let x_1714 : bool = u_xlatb84;
  let x_1715 : f32 = u_xlat83;
  u_xlat83 = select(x_1715, 1.0f, x_1714);
  let x_1717 : vec3<f32> = vs_INTERP7;
  let x_1719 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1721 : vec3<f32> = (x_1717 + -(x_1719));
  let x_1722 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
  let x_1724 : vec4<f32> = u_xlat7;
  let x_1726 : vec4<f32> = u_xlat7;
  u_xlat84 = dot(vec3<f32>(x_1724.x, x_1724.y, x_1724.z), vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1729 : f32 = u_xlat84;
  let x_1731 : f32 = x_437.x_MainLightShadowParams.z;
  let x_1734 : f32 = x_437.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_1729 * x_1731) + x_1734);
  let x_1738 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1738, 0.0f, 1.0f);
  let x_1741 : f32 = u_xlat83;
  u_xlat33 = (-(x_1741) + 1.0f);
  let x_1745 : f32 = u_xlat7.x;
  let x_1746 : f32 = u_xlat33;
  let x_1748 : f32 = u_xlat83;
  u_xlat83 = ((x_1745 * x_1746) + x_1748);
  let x_1750 : vec3<f32> = u_xlat4;
  let x_1752 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_1750), vec3<f32>(x_1752.x, x_1752.y, x_1752.w));
  let x_1757 : f32 = u_xlat7.x;
  let x_1759 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1757 + x_1759);
  let x_1762 : vec4<f32> = u_xlat1;
  let x_1764 : vec4<f32> = u_xlat7;
  let x_1768 : vec3<f32> = u_xlat4;
  let x_1770 : vec3<f32> = ((vec3<f32>(x_1762.x, x_1762.y, x_1762.w) * -(vec3<f32>(x_1764.x, x_1764.x, x_1764.x))) + -(x_1768));
  let x_1771 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
  let x_1774 : vec4<f32> = u_xlat1;
  let x_1776 : vec3<f32> = u_xlat4;
  u_xlat85 = dot(vec3<f32>(x_1774.x, x_1774.y, x_1774.w), x_1776);
  let x_1778 : f32 = u_xlat85;
  u_xlat85 = clamp(x_1778, 0.0f, 1.0f);
  let x_1780 : f32 = u_xlat85;
  u_xlat85 = (-(x_1780) + 1.0f);
  let x_1783 : f32 = u_xlat85;
  let x_1784 : f32 = u_xlat85;
  u_xlat85 = (x_1783 * x_1784);
  let x_1786 : f32 = u_xlat85;
  let x_1787 : f32 = u_xlat85;
  u_xlat85 = (x_1786 * x_1787);
  let x_1789 : f32 = u_xlat80;
  u_xlat8.x = ((-(x_1789) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1796 : f32 = u_xlat80;
  let x_1798 : f32 = u_xlat8.x;
  u_xlat2.w = (x_1796 * x_1798);
  let x_1801 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1801 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1814 : vec4<f32> = u_xlat7;
  let x_1817 : f32 = u_xlat2.w;
  let x_1818 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1814.x, x_1814.y, x_1814.z), x_1817);
  u_xlat8 = x_1818;
  let x_1820 : f32 = u_xlat8.w;
  u_xlat80 = (x_1820 + -1.0f);
  let x_1823 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_1824 : f32 = u_xlat80;
  u_xlat80 = ((x_1823 * x_1824) + 1.0f);
  let x_1827 : f32 = u_xlat80;
  u_xlat80 = max(x_1827, 0.0f);
  let x_1829 : f32 = u_xlat80;
  u_xlat80 = log2(x_1829);
  let x_1831 : f32 = u_xlat80;
  let x_1833 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1831 * x_1833);
  let x_1835 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1835);
  let x_1837 : f32 = u_xlat80;
  let x_1839 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1837 * x_1839);
  let x_1841 : vec4<f32> = u_xlat8;
  let x_1843 : f32 = u_xlat80;
  let x_1845 : vec3<f32> = (vec3<f32>(x_1841.x, x_1841.y, x_1841.z) * vec3<f32>(x_1843, x_1843, x_1843));
  let x_1846 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1848 : vec3<f32> = u_xlat3;
  let x_1850 : vec3<f32> = u_xlat3;
  let x_1854 : vec2<f32> = ((vec2<f32>(x_1848.x, x_1848.x) * vec2<f32>(x_1850.x, x_1850.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1855 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
  let x_1858 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_1858);
  let x_1860 : vec3<f32> = u_xlat0;
  let x_1862 : f32 = u_xlat81;
  u_xlat34 = (-(x_1860) + vec3<f32>(x_1862, x_1862, x_1862));
  let x_1865 : f32 = u_xlat85;
  let x_1867 : vec3<f32> = u_xlat34;
  let x_1869 : vec3<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1865, x_1865, x_1865) * x_1867) + x_1869);
  let x_1871 : f32 = u_xlat80;
  let x_1873 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1871, x_1871, x_1871) * x_1873);
  let x_1875 : vec4<f32> = u_xlat7;
  let x_1877 : vec3<f32> = u_xlat34;
  let x_1878 : vec3<f32> = (vec3<f32>(x_1875.x, x_1875.y, x_1875.z) * x_1877);
  let x_1879 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
  let x_1881 : vec4<f32> = u_xlat5;
  let x_1883 : vec3<f32> = u_xlat6;
  let x_1885 : vec4<f32> = u_xlat7;
  let x_1887 : vec3<f32> = ((vec3<f32>(x_1881.x, x_1881.y, x_1881.z) * x_1883) + vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : f32 = u_xlat83;
  let x_1892 : f32 = x_107.unity_LightData.z;
  u_xlat80 = (x_1890 * x_1892);
  let x_1894 : vec4<f32> = u_xlat1;
  let x_1897 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1894.x, x_1894.y, x_1894.w), vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
  let x_1902 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1902, 0.0f, 1.0f);
  let x_1905 : f32 = u_xlat80;
  let x_1907 : f32 = u_xlat3.x;
  u_xlat80 = (x_1905 * x_1907);
  let x_1909 : f32 = u_xlat80;
  let x_1912 : vec4<f32> = x_29.x_MainLightColor;
  let x_1914 : vec3<f32> = (vec3<f32>(x_1909, x_1909, x_1909) * vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
  let x_1917 : vec3<f32> = u_xlat4;
  let x_1919 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = (x_1917 + vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
  let x_1922 : vec3<f32> = u_xlat34;
  let x_1923 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(x_1922, x_1923);
  let x_1925 : f32 = u_xlat80;
  u_xlat80 = max(x_1925, 1.17549435e-38f);
  let x_1928 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1928);
  let x_1930 : f32 = u_xlat80;
  let x_1932 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1930, x_1930, x_1930) * x_1932);
  let x_1934 : vec4<f32> = u_xlat1;
  let x_1936 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.w), x_1936);
  let x_1938 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1938, 0.0f, 1.0f);
  let x_1941 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1943 : vec3<f32> = u_xlat34;
  u_xlat3.x = dot(vec3<f32>(x_1941.x, x_1941.y, x_1941.z), x_1943);
  let x_1947 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1947, 0.0f, 1.0f);
  let x_1950 : f32 = u_xlat80;
  let x_1951 : f32 = u_xlat80;
  u_xlat80 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat80;
  let x_1955 : f32 = u_xlat8.x;
  u_xlat80 = ((x_1953 * x_1955) + 1.00001001358032226562f);
  let x_1960 : f32 = u_xlat3.x;
  let x_1962 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1960 * x_1962);
  let x_1965 : f32 = u_xlat80;
  let x_1966 : f32 = u_xlat80;
  u_xlat80 = (x_1965 * x_1966);
  let x_1969 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1969, 0.10000000149011611938f);
  let x_1973 : f32 = u_xlat80;
  let x_1975 : f32 = u_xlat3.x;
  u_xlat80 = (x_1973 * x_1975);
  let x_1977 : f32 = u_xlat82;
  let x_1978 : f32 = u_xlat80;
  u_xlat80 = (x_1977 * x_1978);
  let x_1980 : f32 = u_xlat29;
  let x_1981 : f32 = u_xlat80;
  u_xlat80 = (x_1980 / x_1981);
  let x_1983 : vec3<f32> = u_xlat0;
  let x_1984 : f32 = u_xlat80;
  let x_1987 : vec3<f32> = u_xlat6;
  u_xlat34 = ((x_1983 * vec3<f32>(x_1984, x_1984, x_1984)) + x_1987);
  let x_1989 : vec4<f32> = u_xlat7;
  let x_1991 : vec3<f32> = u_xlat34;
  let x_1992 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.y, x_1989.z) * x_1991);
  let x_1993 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1996 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1998 : f32 = x_107.unity_LightData.y;
  u_xlat80 = min(x_1996, x_1998);
  let x_2002 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2002));
  let x_2005 : f32 = u_xlat84;
  let x_2008 : f32 = x_437.x_AdditionalShadowFadeParams.x;
  let x_2011 : f32 = x_437.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2005 * x_2008) + x_2011);
  let x_2015 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2015, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2028 : u32 = u_xlatu_loop_1;
    let x_2029 : u32 = u_xlatu80;
    if ((x_2028 < x_2029)) {
    } else {
      break;
    }
    let x_2032 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2032 >> 2u);
    let x_2036 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2036 & 3u));
    let x_2039 : u32 = u_xlatu83;
    let x_2042 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_2039)];
    let x_2052 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2057 : vec4<u32> = indexable[x_2052];
    u_xlat83 = dot(x_2042, bitcast<vec4<f32>>(x_2057));
    let x_2061 : f32 = u_xlat83;
    u_xlati83 = i32(x_2061);
    let x_2063 : vec3<f32> = vs_INTERP7;
    let x_2074 : i32 = u_xlati83;
    let x_2076 : vec4<f32> = x_2073.x_AdditionalLightsPosition[x_2074];
    let x_2079 : i32 = u_xlati83;
    let x_2081 : vec4<f32> = x_2073.x_AdditionalLightsPosition[x_2079];
    let x_2083 : vec3<f32> = ((-(x_2063) * vec3<f32>(x_2076.w, x_2076.w, x_2076.w)) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
    let x_2084 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
    let x_2086 : vec4<f32> = u_xlat9;
    let x_2088 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : f32 = u_xlat84;
    u_xlat84 = max(x_2091, 0.00006103515625f);
    let x_2094 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2094);
    let x_2096 : f32 = u_xlat85;
    let x_2098 : vec4<f32> = u_xlat9;
    let x_2100 : vec3<f32> = (vec3<f32>(x_2096, x_2096, x_2096) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2101 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
    let x_2104 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2104);
    let x_2106 : f32 = u_xlat84;
    let x_2107 : i32 = u_xlati83;
    let x_2109 : f32 = x_2073.x_AdditionalLightsAttenuation[x_2107].x;
    u_xlat84 = (x_2106 * x_2109);
    let x_2111 : f32 = u_xlat84;
    let x_2113 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2111) * x_2113) + 1.0f);
    let x_2116 : f32 = u_xlat84;
    u_xlat84 = max(x_2116, 0.0f);
    let x_2118 : f32 = u_xlat84;
    let x_2119 : f32 = u_xlat84;
    u_xlat84 = (x_2118 * x_2119);
    let x_2121 : f32 = u_xlat84;
    let x_2122 : f32 = u_xlat87;
    u_xlat84 = (x_2121 * x_2122);
    let x_2124 : i32 = u_xlati83;
    let x_2126 : vec4<f32> = x_2073.x_AdditionalLightsSpotDir[x_2124];
    let x_2128 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
    let x_2131 : f32 = u_xlat87;
    let x_2132 : i32 = u_xlati83;
    let x_2134 : f32 = x_2073.x_AdditionalLightsAttenuation[x_2132].z;
    let x_2136 : i32 = u_xlati83;
    let x_2138 : f32 = x_2073.x_AdditionalLightsAttenuation[x_2136].w;
    u_xlat87 = ((x_2131 * x_2134) + x_2138);
    let x_2140 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2140, 0.0f, 1.0f);
    let x_2142 : f32 = u_xlat87;
    let x_2143 : f32 = u_xlat87;
    u_xlat87 = (x_2142 * x_2143);
    let x_2145 : f32 = u_xlat84;
    let x_2146 : f32 = u_xlat87;
    u_xlat84 = (x_2145 * x_2146);
    let x_2150 : i32 = u_xlati83;
    let x_2152 : f32 = x_437.x_AdditionalShadowParams[x_2150].w;
    u_xlati87 = i32(x_2152);
    let x_2155 : i32 = u_xlati87;
    u_xlatb88 = (x_2155 >= 0i);
    let x_2157 : bool = u_xlatb88;
    if (x_2157) {
      let x_2161 : i32 = u_xlati83;
      let x_2163 : f32 = x_437.x_AdditionalShadowParams[x_2161].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2163, x_2163, x_2163, x_2163))));
      let x_2168 : bool = u_xlatb88;
      if (x_2168) {
        let x_2173 : vec4<f32> = u_xlat10;
        let x_2176 : vec4<f32> = u_xlat10;
        let x_2179 : vec4<bool> = (abs(vec4<f32>(x_2173.z, x_2173.z, x_2173.y, x_2173.z)) >= abs(vec4<f32>(x_2176.x, x_2176.y, x_2176.x, x_2176.x)));
        let x_2181 : vec3<bool> = vec3<bool>(x_2179.x, x_2179.y, x_2179.z);
        let x_2182 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
        let x_2185 : bool = u_xlatb11.y;
        let x_2187 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2185 & x_2187);
        let x_2189 : vec4<f32> = u_xlat10;
        let x_2192 : vec4<bool> = (-(vec4<f32>(x_2189.z, x_2189.y, x_2189.z, x_2189.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2193 : vec3<bool> = vec3<bool>(x_2192.x, x_2192.y, x_2192.w);
        let x_2194 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2193.x, x_2193.y, x_2194.z, x_2193.z);
        let x_2197 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2197);
        let x_2202 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2202);
        let x_2208 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2208);
        let x_2212 : bool = u_xlatb11.z;
        if (x_2212) {
          let x_2218 : f32 = u_xlat11.y;
          x_2214 = x_2218;
        } else {
          let x_2220 : f32 = u_xlat89;
          x_2214 = x_2220;
        }
        let x_2221 : f32 = x_2214;
        u_xlat37 = x_2221;
        let x_2223 : bool = u_xlatb88;
        if (x_2223) {
          let x_2228 : f32 = u_xlat11.x;
          x_2224 = x_2228;
        } else {
          let x_2230 : f32 = u_xlat37;
          x_2224 = x_2230;
        }
        let x_2231 : f32 = x_2224;
        u_xlat88 = x_2231;
        let x_2232 : i32 = u_xlati83;
        let x_2234 : f32 = x_437.x_AdditionalShadowParams[x_2232].w;
        u_xlat11.x = trunc(x_2234);
        let x_2237 : f32 = u_xlat88;
        let x_2239 : f32 = u_xlat11.x;
        u_xlat88 = (x_2237 + x_2239);
        let x_2241 : f32 = u_xlat88;
        u_xlati87 = i32(x_2241);
      }
      let x_2243 : i32 = u_xlati87;
      u_xlati87 = (x_2243 << bitcast<u32>(2i));
      let x_2245 : vec3<f32> = vs_INTERP7;
      let x_2248 : i32 = u_xlati87;
      let x_2251 : i32 = u_xlati87;
      let x_2255 : vec4<f32> = x_437.x_AdditionalLightsWorldToShadow[((x_2248 + 1i) / 4i)][((x_2251 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2245.y, x_2245.y, x_2245.y, x_2245.y) * x_2255);
      let x_2257 : i32 = u_xlati87;
      let x_2259 : i32 = u_xlati87;
      let x_2262 : vec4<f32> = x_437.x_AdditionalLightsWorldToShadow[(x_2257 / 4i)][(x_2259 % 4i)];
      let x_2263 : vec3<f32> = vs_INTERP7;
      let x_2266 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2262 * vec4<f32>(x_2263.x, x_2263.x, x_2263.x, x_2263.x)) + x_2266);
      let x_2268 : i32 = u_xlati87;
      let x_2271 : i32 = u_xlati87;
      let x_2275 : vec4<f32> = x_437.x_AdditionalLightsWorldToShadow[((x_2268 + 2i) / 4i)][((x_2271 + 2i) % 4i)];
      let x_2276 : vec3<f32> = vs_INTERP7;
      let x_2279 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2275 * vec4<f32>(x_2276.z, x_2276.z, x_2276.z, x_2276.z)) + x_2279);
      let x_2281 : vec4<f32> = u_xlat11;
      let x_2282 : i32 = u_xlati87;
      let x_2285 : i32 = u_xlati87;
      let x_2289 : vec4<f32> = x_437.x_AdditionalLightsWorldToShadow[((x_2282 + 3i) / 4i)][((x_2285 + 3i) % 4i)];
      u_xlat11 = (x_2281 + x_2289);
      let x_2291 : vec4<f32> = u_xlat11;
      let x_2293 : vec4<f32> = u_xlat11;
      let x_2295 : vec3<f32> = (vec3<f32>(x_2291.x, x_2291.y, x_2291.z) / vec3<f32>(x_2293.w, x_2293.w, x_2293.w));
      let x_2296 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
      let x_2299 : i32 = u_xlati83;
      let x_2301 : f32 = x_437.x_AdditionalShadowParams[x_2299].y;
      u_xlatb87 = (0.0f < x_2301);
      let x_2303 : bool = u_xlatb87;
      if (x_2303) {
        let x_2306 : i32 = u_xlati83;
        let x_2308 : f32 = x_437.x_AdditionalShadowParams[x_2306].y;
        u_xlatb87 = (1.0f == x_2308);
        let x_2310 : bool = u_xlatb87;
        if (x_2310) {
          let x_2313 : vec4<f32> = u_xlat11;
          let x_2316 : vec4<f32> = x_437.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2313.x, x_2313.y, x_2313.x, x_2313.y) + x_2316);
          let x_2319 : vec4<f32> = u_xlat12;
          let x_2320 : vec2<f32> = vec2<f32>(x_2319.x, x_2319.y);
          let x_2322 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2320.x, x_2320.y, x_2322);
          let x_2330 : vec3<f32> = txVec30;
          let x_2332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2330.xy, x_2330.z);
          u_xlat13.x = x_2332;
          let x_2335 : vec4<f32> = u_xlat12;
          let x_2336 : vec2<f32> = vec2<f32>(x_2335.z, x_2335.w);
          let x_2338 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2336.x, x_2336.y, x_2338);
          let x_2345 : vec3<f32> = txVec31;
          let x_2347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2345.xy, x_2345.z);
          u_xlat13.y = x_2347;
          let x_2349 : vec4<f32> = u_xlat11;
          let x_2353 : vec4<f32> = x_437.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y) + x_2353);
          let x_2356 : vec4<f32> = u_xlat12;
          let x_2357 : vec2<f32> = vec2<f32>(x_2356.x, x_2356.y);
          let x_2359 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2357.x, x_2357.y, x_2359);
          let x_2366 : vec3<f32> = txVec32;
          let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
          u_xlat13.z = x_2368;
          let x_2371 : vec4<f32> = u_xlat12;
          let x_2372 : vec2<f32> = vec2<f32>(x_2371.z, x_2371.w);
          let x_2374 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
          let x_2381 : vec3<f32> = txVec33;
          let x_2383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2381.xy, x_2381.z);
          u_xlat13.w = x_2383;
          let x_2385 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2385, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2388 : i32 = u_xlati83;
          let x_2390 : f32 = x_437.x_AdditionalShadowParams[x_2388].y;
          u_xlatb88 = (2.0f == x_2390);
          let x_2392 : bool = u_xlatb88;
          if (x_2392) {
            let x_2395 : vec4<f32> = u_xlat11;
            let x_2399 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2402 : vec2<f32> = ((vec2<f32>(x_2395.x, x_2395.y) * vec2<f32>(x_2399.z, x_2399.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2403 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat12;
            let x_2407 : vec2<f32> = floor(vec2<f32>(x_2405.x, x_2405.y));
            let x_2408 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2407.x, x_2407.y, x_2408.z, x_2408.w);
            let x_2411 : vec4<f32> = u_xlat11;
            let x_2414 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2417 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2411.x, x_2411.y) * vec2<f32>(x_2414.z, x_2414.w)) + -(vec2<f32>(x_2417.x, x_2417.y)));
            let x_2421 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2421.x, x_2421.x, x_2421.y, x_2421.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2424 : vec4<f32> = u_xlat13;
            let x_2426 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2424.x, x_2424.x, x_2424.z, x_2424.z) * vec4<f32>(x_2426.x, x_2426.x, x_2426.z, x_2426.z));
            let x_2429 : vec4<f32> = u_xlat14;
            let x_2431 : vec2<f32> = (vec2<f32>(x_2429.y, x_2429.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2432 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2431.x, x_2432.y, x_2431.y, x_2432.w);
            let x_2434 : vec4<f32> = u_xlat14;
            let x_2437 : vec2<f32> = u_xlat64;
            let x_2439 : vec2<f32> = ((vec2<f32>(x_2434.x, x_2434.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2437));
            let x_2440 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
            let x_2443 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2443) + vec2<f32>(1.0f, 1.0f));
            let x_2446 : vec2<f32> = u_xlat64;
            let x_2447 : vec2<f32> = min(x_2446, vec2<f32>(0.0f, 0.0f));
            let x_2448 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat15;
            let x_2453 : vec4<f32> = u_xlat15;
            let x_2456 : vec2<f32> = u_xlat66;
            let x_2457 : vec2<f32> = ((-(vec2<f32>(x_2450.x, x_2450.y)) * vec2<f32>(x_2453.x, x_2453.y)) + x_2456);
            let x_2458 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
            let x_2460 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2460, vec2<f32>(0.0f, 0.0f));
            let x_2462 : vec2<f32> = u_xlat64;
            let x_2464 : vec2<f32> = u_xlat64;
            let x_2466 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2462) * x_2464) + vec2<f32>(x_2466.y, x_2466.w));
            let x_2469 : vec4<f32> = u_xlat15;
            let x_2471 : vec2<f32> = (vec2<f32>(x_2469.x, x_2469.y) + vec2<f32>(1.0f, 1.0f));
            let x_2472 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
            let x_2474 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2474 + vec2<f32>(1.0f, 1.0f));
            let x_2476 : vec4<f32> = u_xlat14;
            let x_2478 : vec2<f32> = (vec2<f32>(x_2476.x, x_2476.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2479 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2478.x, x_2478.y, x_2479.z, x_2479.w);
            let x_2481 : vec2<f32> = u_xlat66;
            let x_2482 : vec2<f32> = (x_2481 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2483 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec4<f32> = u_xlat15;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2488 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec2<f32> = u_xlat64;
            let x_2491 : vec2<f32> = (x_2490 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2492 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2491.x, x_2491.y, x_2492.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2494.y, x_2494.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2498 : f32 = u_xlat15.x;
            u_xlat16.z = x_2498;
            let x_2501 : f32 = u_xlat64.x;
            u_xlat16.w = x_2501;
            let x_2504 : f32 = u_xlat17.x;
            u_xlat14.z = x_2504;
            let x_2507 : f32 = u_xlat13.x;
            u_xlat14.w = x_2507;
            let x_2509 : vec4<f32> = u_xlat14;
            let x_2511 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2509.z, x_2509.w, x_2509.x, x_2509.z) + vec4<f32>(x_2511.z, x_2511.w, x_2511.x, x_2511.z));
            let x_2515 : f32 = u_xlat16.y;
            u_xlat15.z = x_2515;
            let x_2518 : f32 = u_xlat64.y;
            u_xlat15.w = x_2518;
            let x_2521 : f32 = u_xlat14.y;
            u_xlat17.z = x_2521;
            let x_2524 : f32 = u_xlat13.z;
            u_xlat17.w = x_2524;
            let x_2526 : vec4<f32> = u_xlat15;
            let x_2528 : vec4<f32> = u_xlat17;
            let x_2530 : vec3<f32> = (vec3<f32>(x_2526.z, x_2526.y, x_2526.w) + vec3<f32>(x_2528.z, x_2528.y, x_2528.w));
            let x_2531 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
            let x_2533 : vec4<f32> = u_xlat14;
            let x_2535 : vec4<f32> = u_xlat18;
            let x_2537 : vec3<f32> = (vec3<f32>(x_2533.x, x_2533.z, x_2533.w) / vec3<f32>(x_2535.z, x_2535.w, x_2535.y));
            let x_2538 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
            let x_2540 : vec4<f32> = u_xlat14;
            let x_2542 : vec3<f32> = (vec3<f32>(x_2540.x, x_2540.y, x_2540.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2543 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat17;
            let x_2547 : vec4<f32> = u_xlat13;
            let x_2549 : vec3<f32> = (vec3<f32>(x_2545.z, x_2545.y, x_2545.w) / vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
            let x_2550 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
            let x_2552 : vec4<f32> = u_xlat15;
            let x_2554 : vec3<f32> = (vec3<f32>(x_2552.x, x_2552.y, x_2552.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2555 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat14;
            let x_2560 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2557.y, x_2557.x, x_2557.z) * vec3<f32>(x_2560.x, x_2560.x, x_2560.x));
            let x_2563 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat15;
            let x_2568 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2570 : vec3<f32> = (vec3<f32>(x_2565.x, x_2565.y, x_2565.z) * vec3<f32>(x_2568.y, x_2568.y, x_2568.y));
            let x_2571 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
            let x_2574 : f32 = u_xlat15.x;
            u_xlat14.w = x_2574;
            let x_2576 : vec4<f32> = u_xlat12;
            let x_2579 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2582 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2576.x, x_2576.y, x_2576.x, x_2576.y) * vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y)) + vec4<f32>(x_2582.y, x_2582.w, x_2582.x, x_2582.w));
            let x_2585 : vec4<f32> = u_xlat12;
            let x_2588 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2591 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2585.x, x_2585.y) * vec2<f32>(x_2588.x, x_2588.y)) + vec2<f32>(x_2591.z, x_2591.w));
            let x_2595 : f32 = u_xlat14.y;
            u_xlat15.w = x_2595;
            let x_2597 : vec4<f32> = u_xlat15;
            let x_2598 : vec2<f32> = vec2<f32>(x_2597.y, x_2597.z);
            let x_2599 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2599.x, x_2598.x, x_2599.z, x_2598.y);
            let x_2601 : vec4<f32> = u_xlat12;
            let x_2604 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2607 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2601.x, x_2601.y, x_2601.x, x_2601.y) * vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y)) + vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2607.y));
            let x_2610 : vec4<f32> = u_xlat12;
            let x_2613 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2616 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y) * vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y)) + vec4<f32>(x_2616.w, x_2616.y, x_2616.w, x_2616.z));
            let x_2619 : vec4<f32> = u_xlat12;
            let x_2622 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2625 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y) * vec4<f32>(x_2622.x, x_2622.y, x_2622.x, x_2622.y)) + vec4<f32>(x_2625.x, x_2625.w, x_2625.z, x_2625.w));
            let x_2628 : vec4<f32> = u_xlat13;
            let x_2630 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2628.x, x_2628.x, x_2628.x, x_2628.y) * vec4<f32>(x_2630.z, x_2630.w, x_2630.y, x_2630.z));
            let x_2633 : vec4<f32> = u_xlat13;
            let x_2635 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2633.y, x_2633.y, x_2633.z, x_2633.z) * x_2635);
            let x_2638 : f32 = u_xlat13.z;
            let x_2640 : f32 = u_xlat18.y;
            u_xlat88 = (x_2638 * x_2640);
            let x_2643 : vec4<f32> = u_xlat16;
            let x_2644 : vec2<f32> = vec2<f32>(x_2643.x, x_2643.y);
            let x_2646 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2644.x, x_2644.y, x_2646);
            let x_2653 : vec3<f32> = txVec34;
            let x_2655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2653.xy, x_2653.z);
            u_xlat89 = x_2655;
            let x_2657 : vec4<f32> = u_xlat16;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.z, x_2657.w);
            let x_2660 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2667 : vec3<f32> = txVec35;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat12.x = x_2669;
            let x_2672 : f32 = u_xlat12.x;
            let x_2674 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2672 * x_2674);
            let x_2678 : f32 = u_xlat19.x;
            let x_2679 : f32 = u_xlat89;
            let x_2682 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2678 * x_2679) + x_2682);
            let x_2685 : vec2<f32> = u_xlat64;
            let x_2687 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec36;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat12.x = x_2696;
            let x_2699 : f32 = u_xlat19.z;
            let x_2701 : f32 = u_xlat12.x;
            let x_2703 : f32 = u_xlat89;
            u_xlat89 = ((x_2699 * x_2701) + x_2703);
            let x_2706 : vec4<f32> = u_xlat15;
            let x_2707 : vec2<f32> = vec2<f32>(x_2706.x, x_2706.y);
            let x_2709 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec37;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat12.x = x_2718;
            let x_2721 : f32 = u_xlat19.w;
            let x_2723 : f32 = u_xlat12.x;
            let x_2725 : f32 = u_xlat89;
            u_xlat89 = ((x_2721 * x_2723) + x_2725);
            let x_2728 : vec4<f32> = u_xlat17;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.x, x_2728.y);
            let x_2731 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec38;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat12.x = x_2740;
            let x_2743 : f32 = u_xlat20.x;
            let x_2745 : f32 = u_xlat12.x;
            let x_2747 : f32 = u_xlat89;
            u_xlat89 = ((x_2743 * x_2745) + x_2747);
            let x_2750 : vec4<f32> = u_xlat17;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.z, x_2750.w);
            let x_2753 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec39;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat12.x = x_2762;
            let x_2765 : f32 = u_xlat20.y;
            let x_2767 : f32 = u_xlat12.x;
            let x_2769 : f32 = u_xlat89;
            u_xlat89 = ((x_2765 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat15;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.z, x_2772.w);
            let x_2775 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec40;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat12.x = x_2784;
            let x_2787 : f32 = u_xlat20.z;
            let x_2789 : f32 = u_xlat12.x;
            let x_2791 : f32 = u_xlat89;
            u_xlat89 = ((x_2787 * x_2789) + x_2791);
            let x_2794 : vec4<f32> = u_xlat14;
            let x_2795 : vec2<f32> = vec2<f32>(x_2794.x, x_2794.y);
            let x_2797 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
            let x_2804 : vec3<f32> = txVec41;
            let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
            u_xlat12.x = x_2806;
            let x_2809 : f32 = u_xlat20.w;
            let x_2811 : f32 = u_xlat12.x;
            let x_2813 : f32 = u_xlat89;
            u_xlat89 = ((x_2809 * x_2811) + x_2813);
            let x_2816 : vec4<f32> = u_xlat14;
            let x_2817 : vec2<f32> = vec2<f32>(x_2816.z, x_2816.w);
            let x_2819 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
            let x_2826 : vec3<f32> = txVec42;
            let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
            u_xlat12.x = x_2828;
            let x_2830 : f32 = u_xlat88;
            let x_2832 : f32 = u_xlat12.x;
            let x_2834 : f32 = u_xlat89;
            u_xlat87 = ((x_2830 * x_2832) + x_2834);
          } else {
            let x_2837 : vec4<f32> = u_xlat11;
            let x_2840 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2843 : vec2<f32> = ((vec2<f32>(x_2837.x, x_2837.y) * vec2<f32>(x_2840.z, x_2840.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2844 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2843.x, x_2843.y, x_2844.z, x_2844.w);
            let x_2846 : vec4<f32> = u_xlat12;
            let x_2848 : vec2<f32> = floor(vec2<f32>(x_2846.x, x_2846.y));
            let x_2849 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2848.x, x_2848.y, x_2849.z, x_2849.w);
            let x_2851 : vec4<f32> = u_xlat11;
            let x_2854 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_2857 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(x_2854.z, x_2854.w)) + -(vec2<f32>(x_2857.x, x_2857.y)));
            let x_2861 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2861.x, x_2861.x, x_2861.y, x_2861.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2864 : vec4<f32> = u_xlat13;
            let x_2866 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2864.x, x_2864.x, x_2864.z, x_2864.z) * vec4<f32>(x_2866.x, x_2866.x, x_2866.z, x_2866.z));
            let x_2869 : vec4<f32> = u_xlat14;
            let x_2871 : vec2<f32> = (vec2<f32>(x_2869.y, x_2869.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2872 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2872.x, x_2871.x, x_2872.z, x_2871.y);
            let x_2874 : vec4<f32> = u_xlat14;
            let x_2877 : vec2<f32> = u_xlat64;
            let x_2879 : vec2<f32> = ((vec2<f32>(x_2874.x, x_2874.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2877));
            let x_2880 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2879.x, x_2880.y, x_2879.y, x_2880.w);
            let x_2882 : vec2<f32> = u_xlat64;
            let x_2884 : vec2<f32> = (-(x_2882) + vec2<f32>(1.0f, 1.0f));
            let x_2885 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2884.x, x_2884.y, x_2885.z, x_2885.w);
            let x_2887 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2887, vec2<f32>(0.0f, 0.0f));
            let x_2889 : vec2<f32> = u_xlat66;
            let x_2891 : vec2<f32> = u_xlat66;
            let x_2893 : vec4<f32> = u_xlat14;
            let x_2895 : vec2<f32> = ((-(x_2889) * x_2891) + vec2<f32>(x_2893.x, x_2893.y));
            let x_2896 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2898, vec2<f32>(0.0f, 0.0f));
            let x_2901 : vec2<f32> = u_xlat66;
            let x_2903 : vec2<f32> = u_xlat66;
            let x_2905 : vec4<f32> = u_xlat13;
            let x_2907 : vec2<f32> = ((-(x_2901) * x_2903) + vec2<f32>(x_2905.y, x_2905.w));
            let x_2908 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2907.x, x_2908.y, x_2907.y);
            let x_2910 : vec4<f32> = u_xlat14;
            let x_2912 : vec2<f32> = (vec2<f32>(x_2910.x, x_2910.y) + vec2<f32>(2.0f, 2.0f));
            let x_2913 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2912.x, x_2912.y, x_2913.z, x_2913.w);
            let x_2915 : vec3<f32> = u_xlat39;
            let x_2917 : vec2<f32> = (vec2<f32>(x_2915.x, x_2915.z) + vec2<f32>(2.0f, 2.0f));
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2918.x, x_2917.x, x_2918.z, x_2917.y);
            let x_2921 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2921 * 0.08163200318813323975f);
            let x_2924 : vec4<f32> = u_xlat13;
            let x_2926 : vec3<f32> = (vec3<f32>(x_2924.z, x_2924.x, x_2924.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2927 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
            let x_2929 : vec4<f32> = u_xlat14;
            let x_2931 : vec2<f32> = (vec2<f32>(x_2929.x, x_2929.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2932 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2931.x, x_2931.y, x_2932.z, x_2932.w);
            let x_2935 : f32 = u_xlat17.y;
            u_xlat16.x = x_2935;
            let x_2937 : vec2<f32> = u_xlat64;
            let x_2940 : vec2<f32> = ((vec2<f32>(x_2937.x, x_2937.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2941 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2941.x, x_2940.x, x_2941.z, x_2940.y);
            let x_2943 : vec2<f32> = u_xlat64;
            let x_2946 : vec2<f32> = ((vec2<f32>(x_2943.x, x_2943.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2946.x, x_2947.y, x_2946.y, x_2947.w);
            let x_2950 : f32 = u_xlat13.x;
            u_xlat14.y = x_2950;
            let x_2953 : f32 = u_xlat15.y;
            u_xlat14.w = x_2953;
            let x_2955 : vec4<f32> = u_xlat14;
            let x_2956 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2955 + x_2956);
            let x_2958 : vec2<f32> = u_xlat64;
            let x_2961 : vec2<f32> = ((vec2<f32>(x_2958.y, x_2958.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2962 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2962.x, x_2961.x, x_2962.z, x_2961.y);
            let x_2964 : vec2<f32> = u_xlat64;
            let x_2967 : vec2<f32> = ((vec2<f32>(x_2964.y, x_2964.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2968 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2967.x, x_2968.y, x_2967.y, x_2968.w);
            let x_2971 : f32 = u_xlat13.y;
            u_xlat15.y = x_2971;
            let x_2973 : vec4<f32> = u_xlat15;
            let x_2974 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2973 + x_2974);
            let x_2976 : vec4<f32> = u_xlat14;
            let x_2977 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2976 / x_2977);
            let x_2979 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2979 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2981 : vec4<f32> = u_xlat15;
            let x_2982 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2981 / x_2982);
            let x_2984 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2984 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2989 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2986.w, x_2986.x, x_2986.y, x_2986.z) * vec4<f32>(x_2989.x, x_2989.x, x_2989.x, x_2989.x));
            let x_2992 : vec4<f32> = u_xlat15;
            let x_2995 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2992.x, x_2992.w, x_2992.y, x_2992.z) * vec4<f32>(x_2995.y, x_2995.y, x_2995.y, x_2995.y));
            let x_2998 : vec4<f32> = u_xlat14;
            let x_2999 : vec3<f32> = vec3<f32>(x_2998.y, x_2998.z, x_2998.w);
            let x_3000 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2999.x, x_3000.y, x_2999.y, x_2999.z);
            let x_3003 : f32 = u_xlat15.x;
            u_xlat17.y = x_3003;
            let x_3005 : vec4<f32> = u_xlat12;
            let x_3008 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3011 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3005.x, x_3005.y, x_3005.x, x_3005.y) * vec4<f32>(x_3008.x, x_3008.y, x_3008.x, x_3008.y)) + vec4<f32>(x_3011.x, x_3011.y, x_3011.z, x_3011.y));
            let x_3014 : vec4<f32> = u_xlat12;
            let x_3017 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3020 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(x_3017.x, x_3017.y)) + vec2<f32>(x_3020.w, x_3020.y));
            let x_3024 : f32 = u_xlat17.y;
            u_xlat14.y = x_3024;
            let x_3027 : f32 = u_xlat15.z;
            u_xlat17.y = x_3027;
            let x_3029 : vec4<f32> = u_xlat12;
            let x_3032 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3035 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y) * vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y)) + vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3035.y));
            let x_3038 : vec4<f32> = u_xlat12;
            let x_3041 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3044 : vec4<f32> = u_xlat17;
            let x_3046 : vec2<f32> = ((vec2<f32>(x_3038.x, x_3038.y) * vec2<f32>(x_3041.x, x_3041.y)) + vec2<f32>(x_3044.w, x_3044.y));
            let x_3047 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3046.x, x_3046.y, x_3047.z, x_3047.w);
            let x_3050 : f32 = u_xlat17.y;
            u_xlat14.z = x_3050;
            let x_3053 : vec4<f32> = u_xlat12;
            let x_3056 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3059 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y) * vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y)) + vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.z));
            let x_3063 : f32 = u_xlat15.w;
            u_xlat17.y = x_3063;
            let x_3066 : vec4<f32> = u_xlat12;
            let x_3069 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3066.x, x_3066.y, x_3066.x, x_3066.y) * vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y)) + vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3072.y));
            let x_3076 : vec4<f32> = u_xlat12;
            let x_3079 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3082 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3076.x, x_3076.y) * vec2<f32>(x_3079.x, x_3079.y)) + vec2<f32>(x_3082.w, x_3082.y));
            let x_3086 : f32 = u_xlat17.y;
            u_xlat14.w = x_3086;
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3092 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3095 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3089.x, x_3089.y) * vec2<f32>(x_3092.x, x_3092.y)) + vec2<f32>(x_3095.x, x_3095.w));
            let x_3098 : vec4<f32> = u_xlat17;
            let x_3099 : vec3<f32> = vec3<f32>(x_3098.x, x_3098.z, x_3098.w);
            let x_3100 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3099.x, x_3100.y, x_3099.y, x_3099.z);
            let x_3102 : vec4<f32> = u_xlat12;
            let x_3105 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3108 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y) * vec4<f32>(x_3105.x, x_3105.y, x_3105.x, x_3105.y)) + vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat12;
            let x_3114 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3117 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3111.x, x_3111.y) * vec2<f32>(x_3114.x, x_3114.y)) + vec2<f32>(x_3117.w, x_3117.y));
            let x_3121 : f32 = u_xlat14.x;
            u_xlat15.x = x_3121;
            let x_3123 : vec4<f32> = u_xlat12;
            let x_3126 : vec4<f32> = x_437.x_AdditionalShadowmapSize;
            let x_3129 : vec4<f32> = u_xlat15;
            let x_3131 : vec2<f32> = ((vec2<f32>(x_3123.x, x_3123.y) * vec2<f32>(x_3126.x, x_3126.y)) + vec2<f32>(x_3129.x, x_3129.y));
            let x_3132 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3131.x, x_3131.y, x_3132.z, x_3132.w);
            let x_3135 : vec4<f32> = u_xlat13;
            let x_3137 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3135.x, x_3135.x, x_3135.x, x_3135.x) * x_3137);
            let x_3140 : vec4<f32> = u_xlat13;
            let x_3142 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3140.y, x_3140.y, x_3140.y, x_3140.y) * x_3142);
            let x_3145 : vec4<f32> = u_xlat13;
            let x_3147 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3145.z, x_3145.z, x_3145.z, x_3145.z) * x_3147);
            let x_3149 : vec4<f32> = u_xlat13;
            let x_3151 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3149.w, x_3149.w, x_3149.w, x_3149.w) * x_3151);
            let x_3154 : vec4<f32> = u_xlat18;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.x, x_3154.y);
            let x_3157 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec43;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat88 = x_3166;
            let x_3168 : vec4<f32> = u_xlat18;
            let x_3169 : vec2<f32> = vec2<f32>(x_3168.z, x_3168.w);
            let x_3171 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
            let x_3178 : vec3<f32> = txVec44;
            let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
            u_xlat89 = x_3180;
            let x_3181 : f32 = u_xlat89;
            let x_3183 : f32 = u_xlat23.y;
            u_xlat89 = (x_3181 * x_3183);
            let x_3186 : f32 = u_xlat23.x;
            let x_3187 : f32 = u_xlat88;
            let x_3189 : f32 = u_xlat89;
            u_xlat88 = ((x_3186 * x_3187) + x_3189);
            let x_3192 : vec2<f32> = u_xlat64;
            let x_3194 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
            let x_3201 : vec3<f32> = txVec45;
            let x_3203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
            u_xlat89 = x_3203;
            let x_3205 : f32 = u_xlat23.z;
            let x_3206 : f32 = u_xlat89;
            let x_3208 : f32 = u_xlat88;
            u_xlat88 = ((x_3205 * x_3206) + x_3208);
            let x_3211 : vec4<f32> = u_xlat21;
            let x_3212 : vec2<f32> = vec2<f32>(x_3211.x, x_3211.y);
            let x_3214 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec46;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat89 = x_3223;
            let x_3225 : f32 = u_xlat23.w;
            let x_3226 : f32 = u_xlat89;
            let x_3228 : f32 = u_xlat88;
            u_xlat88 = ((x_3225 * x_3226) + x_3228);
            let x_3231 : vec4<f32> = u_xlat19;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.x, x_3231.y);
            let x_3234 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec47;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat89 = x_3243;
            let x_3245 : f32 = u_xlat24.x;
            let x_3246 : f32 = u_xlat89;
            let x_3248 : f32 = u_xlat88;
            u_xlat88 = ((x_3245 * x_3246) + x_3248);
            let x_3251 : vec4<f32> = u_xlat19;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.z, x_3251.w);
            let x_3254 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec48;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat89 = x_3263;
            let x_3265 : f32 = u_xlat24.y;
            let x_3266 : f32 = u_xlat89;
            let x_3268 : f32 = u_xlat88;
            u_xlat88 = ((x_3265 * x_3266) + x_3268);
            let x_3271 : vec4<f32> = u_xlat20;
            let x_3272 : vec2<f32> = vec2<f32>(x_3271.x, x_3271.y);
            let x_3274 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec49;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat89 = x_3283;
            let x_3285 : f32 = u_xlat24.z;
            let x_3286 : f32 = u_xlat89;
            let x_3288 : f32 = u_xlat88;
            u_xlat88 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec4<f32> = u_xlat21;
            let x_3292 : vec2<f32> = vec2<f32>(x_3291.z, x_3291.w);
            let x_3294 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec50;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat89 = x_3303;
            let x_3305 : f32 = u_xlat24.w;
            let x_3306 : f32 = u_xlat89;
            let x_3308 : f32 = u_xlat88;
            u_xlat88 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat22;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.x, x_3311.y);
            let x_3314 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec51;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat89 = x_3323;
            let x_3325 : f32 = u_xlat25.x;
            let x_3326 : f32 = u_xlat89;
            let x_3328 : f32 = u_xlat88;
            u_xlat88 = ((x_3325 * x_3326) + x_3328);
            let x_3331 : vec4<f32> = u_xlat22;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.z, x_3331.w);
            let x_3334 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec52;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat89 = x_3343;
            let x_3345 : f32 = u_xlat25.y;
            let x_3346 : f32 = u_xlat89;
            let x_3348 : f32 = u_xlat88;
            u_xlat88 = ((x_3345 * x_3346) + x_3348);
            let x_3351 : vec2<f32> = u_xlat40;
            let x_3353 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec53;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat89 = x_3362;
            let x_3364 : f32 = u_xlat25.z;
            let x_3365 : f32 = u_xlat89;
            let x_3367 : f32 = u_xlat88;
            u_xlat88 = ((x_3364 * x_3365) + x_3367);
            let x_3370 : vec2<f32> = u_xlat72;
            let x_3372 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3370.x, x_3370.y, x_3372);
            let x_3379 : vec3<f32> = txVec54;
            let x_3381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3379.xy, x_3379.z);
            u_xlat89 = x_3381;
            let x_3383 : f32 = u_xlat25.w;
            let x_3384 : f32 = u_xlat89;
            let x_3386 : f32 = u_xlat88;
            u_xlat88 = ((x_3383 * x_3384) + x_3386);
            let x_3389 : vec4<f32> = u_xlat17;
            let x_3390 : vec2<f32> = vec2<f32>(x_3389.x, x_3389.y);
            let x_3392 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
            let x_3399 : vec3<f32> = txVec55;
            let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
            u_xlat89 = x_3401;
            let x_3403 : f32 = u_xlat13.x;
            let x_3404 : f32 = u_xlat89;
            let x_3406 : f32 = u_xlat88;
            u_xlat88 = ((x_3403 * x_3404) + x_3406);
            let x_3409 : vec4<f32> = u_xlat17;
            let x_3410 : vec2<f32> = vec2<f32>(x_3409.z, x_3409.w);
            let x_3412 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec56;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat89 = x_3421;
            let x_3423 : f32 = u_xlat13.y;
            let x_3424 : f32 = u_xlat89;
            let x_3426 : f32 = u_xlat88;
            u_xlat88 = ((x_3423 * x_3424) + x_3426);
            let x_3429 : vec2<f32> = u_xlat67;
            let x_3431 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3429.x, x_3429.y, x_3431);
            let x_3438 : vec3<f32> = txVec57;
            let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
            u_xlat89 = x_3440;
            let x_3442 : f32 = u_xlat13.z;
            let x_3443 : f32 = u_xlat89;
            let x_3445 : f32 = u_xlat88;
            u_xlat88 = ((x_3442 * x_3443) + x_3445);
            let x_3448 : vec4<f32> = u_xlat12;
            let x_3449 : vec2<f32> = vec2<f32>(x_3448.x, x_3448.y);
            let x_3451 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec58;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat89 = x_3460;
            let x_3462 : f32 = u_xlat13.w;
            let x_3463 : f32 = u_xlat89;
            let x_3465 : f32 = u_xlat88;
            u_xlat87 = ((x_3462 * x_3463) + x_3465);
          }
        }
      } else {
        let x_3469 : vec4<f32> = u_xlat11;
        let x_3470 : vec2<f32> = vec2<f32>(x_3469.x, x_3469.y);
        let x_3472 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
        let x_3479 : vec3<f32> = txVec59;
        let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
        u_xlat87 = x_3481;
      }
      let x_3482 : i32 = u_xlati83;
      let x_3484 : f32 = x_437.x_AdditionalShadowParams[x_3482].x;
      u_xlat88 = (1.0f + -(x_3484));
      let x_3487 : f32 = u_xlat87;
      let x_3488 : i32 = u_xlati83;
      let x_3490 : f32 = x_437.x_AdditionalShadowParams[x_3488].x;
      let x_3492 : f32 = u_xlat88;
      u_xlat87 = ((x_3487 * x_3490) + x_3492);
      let x_3495 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3495);
      let x_3498 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3498 >= 1.0f);
      let x_3501 : bool = u_xlatb88;
      let x_3503 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3501 | x_3503);
      let x_3505 : bool = u_xlatb88;
      let x_3506 : f32 = u_xlat87;
      u_xlat87 = select(x_3506, 1.0f, x_3505);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3509 : f32 = u_xlat87;
    u_xlat88 = (-(x_3509) + 1.0f);
    let x_3513 : f32 = u_xlat3.x;
    let x_3514 : f32 = u_xlat88;
    let x_3516 : f32 = u_xlat87;
    u_xlat87 = ((x_3513 * x_3514) + x_3516);
    let x_3518 : f32 = u_xlat84;
    let x_3519 : f32 = u_xlat87;
    u_xlat84 = (x_3518 * x_3519);
    let x_3521 : vec4<f32> = u_xlat1;
    let x_3523 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_3521.x, x_3521.y, x_3521.w), vec3<f32>(x_3523.x, x_3523.y, x_3523.z));
    let x_3526 : f32 = u_xlat87;
    u_xlat87 = clamp(x_3526, 0.0f, 1.0f);
    let x_3528 : f32 = u_xlat84;
    let x_3529 : f32 = u_xlat87;
    u_xlat84 = (x_3528 * x_3529);
    let x_3531 : f32 = u_xlat84;
    let x_3533 : i32 = u_xlati83;
    let x_3535 : vec4<f32> = x_2073.x_AdditionalLightsColor[x_3533];
    let x_3537 : vec3<f32> = (vec3<f32>(x_3531, x_3531, x_3531) * vec3<f32>(x_3535.x, x_3535.y, x_3535.z));
    let x_3538 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3538.w);
    let x_3540 : vec4<f32> = u_xlat9;
    let x_3542 : f32 = u_xlat85;
    let x_3545 : vec3<f32> = u_xlat4;
    let x_3546 : vec3<f32> = ((vec3<f32>(x_3540.x, x_3540.y, x_3540.z) * vec3<f32>(x_3542, x_3542, x_3542)) + x_3545);
    let x_3547 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3546.x, x_3546.y, x_3546.z, x_3547.w);
    let x_3549 : vec4<f32> = u_xlat9;
    let x_3551 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3549.x, x_3549.y, x_3549.z), vec3<f32>(x_3551.x, x_3551.y, x_3551.z));
    let x_3554 : f32 = u_xlat83;
    u_xlat83 = max(x_3554, 1.17549435e-38f);
    let x_3556 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3556);
    let x_3558 : f32 = u_xlat83;
    let x_3560 : vec4<f32> = u_xlat9;
    let x_3562 : vec3<f32> = (vec3<f32>(x_3558, x_3558, x_3558) * vec3<f32>(x_3560.x, x_3560.y, x_3560.z));
    let x_3563 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3562.x, x_3562.y, x_3562.z, x_3563.w);
    let x_3565 : vec4<f32> = u_xlat1;
    let x_3567 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3565.x, x_3565.y, x_3565.w), vec3<f32>(x_3567.x, x_3567.y, x_3567.z));
    let x_3570 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3570, 0.0f, 1.0f);
    let x_3572 : vec4<f32> = u_xlat10;
    let x_3574 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3572.x, x_3572.y, x_3572.z), vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
    let x_3577 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3577, 0.0f, 1.0f);
    let x_3579 : f32 = u_xlat83;
    let x_3580 : f32 = u_xlat83;
    u_xlat83 = (x_3579 * x_3580);
    let x_3582 : f32 = u_xlat83;
    let x_3584 : f32 = u_xlat8.x;
    u_xlat83 = ((x_3582 * x_3584) + 1.00001001358032226562f);
    let x_3587 : f32 = u_xlat84;
    let x_3588 : f32 = u_xlat84;
    u_xlat84 = (x_3587 * x_3588);
    let x_3590 : f32 = u_xlat83;
    let x_3591 : f32 = u_xlat83;
    u_xlat83 = (x_3590 * x_3591);
    let x_3593 : f32 = u_xlat84;
    u_xlat84 = max(x_3593, 0.10000000149011611938f);
    let x_3595 : f32 = u_xlat83;
    let x_3596 : f32 = u_xlat84;
    u_xlat83 = (x_3595 * x_3596);
    let x_3598 : f32 = u_xlat82;
    let x_3599 : f32 = u_xlat83;
    u_xlat83 = (x_3598 * x_3599);
    let x_3601 : f32 = u_xlat29;
    let x_3602 : f32 = u_xlat83;
    u_xlat83 = (x_3601 / x_3602);
    let x_3604 : vec3<f32> = u_xlat0;
    let x_3605 : f32 = u_xlat83;
    let x_3608 : vec3<f32> = u_xlat6;
    let x_3609 : vec3<f32> = ((x_3604 * vec3<f32>(x_3605, x_3605, x_3605)) + x_3608);
    let x_3610 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3609.x, x_3609.y, x_3609.z, x_3610.w);
    let x_3612 : vec4<f32> = u_xlat9;
    let x_3614 : vec4<f32> = u_xlat11;
    let x_3617 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3612.x, x_3612.y, x_3612.z) * vec3<f32>(x_3614.x, x_3614.y, x_3614.z)) + x_3617);

    continuing {
      let x_3619 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3619 + bitcast<u32>(1i));
    }
  }
  let x_3621 : vec4<f32> = u_xlat5;
  let x_3623 : f32 = u_xlat55;
  let x_3626 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_3621.x, x_3621.y, x_3621.z) * vec3<f32>(x_3623, x_3623, x_3623)) + vec3<f32>(x_3626.x, x_3626.y, x_3626.z));
  let x_3629 : vec3<f32> = u_xlat34;
  let x_3630 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3629 + x_3630);
  let x_3632 : vec4<f32> = u_xlat2;
  let x_3634 : f32 = u_xlat53;
  let x_3637 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3632.x, x_3632.y, x_3632.z) * vec3<f32>(x_3634, x_3634, x_3634)) + x_3637);
  let x_3639 : f32 = u_xlat78;
  let x_3640 : f32 = u_xlat78;
  u_xlat78 = (x_3639 * -(x_3640));
  let x_3643 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3643);
  let x_3645 : vec3<f32> = u_xlat0;
  let x_3647 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_3645 + -(vec3<f32>(x_3647.x, x_3647.y, x_3647.z)));
  let x_3653 : f32 = u_xlat78;
  let x_3655 : vec3<f32> = u_xlat0;
  let x_3658 : vec4<f32> = x_29.unity_FogColor;
  let x_3660 : vec3<f32> = ((vec3<f32>(x_3653, x_3653, x_3653) * x_3655) + vec3<f32>(x_3658.x, x_3658.y, x_3658.z));
  let x_3661 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3660.x, x_3660.y, x_3660.z, x_3661.w);
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


