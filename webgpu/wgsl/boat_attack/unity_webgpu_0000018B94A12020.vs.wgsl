diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightPosition : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_16 : UnityPerMaterial;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_87 : VGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_BaseMap_ST;
  let x_25 : vec4<f32> = x_16.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  let x_33 : vec4<f32> = in_POSITION0;
  let x_44 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  let x_46 : vec3<f32> = (vec3<f32>(x_33.y, x_33.y, x_33.y) * vec3<f32>(x_44.x, x_44.y, x_44.z));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  let x_57 : vec3<f32> = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.x, x_52.x, x_52.x)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_57.x, x_57.y, x_57.z, x_58.w);
  let x_62 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.z, x_64.z, x_64.z)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  let x_78 : vec3<f32> = (vec3<f32>(x_72.x, x_72.y, x_72.z) + vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_90 : vec3<f32> = x_87.x_LightPosition;
  let x_91 : vec3<f32> = (-(vec3<f32>(x_82.x, x_82.y, x_82.z)) + x_90);
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_96.x, x_96.y, x_96.z), vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_101);
  let x_103 : f32 = u_xlat9;
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat1;
  let x_113 : vec4<f32> = x_87.x_ShadowBias;
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_113.x, x_113.x, x_113.x)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_127 : vec4<f32> = x_41.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_125, vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_132 : vec3<f32> = in_NORMAL0;
  let x_134 : vec4<f32> = x_41.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_132, vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec3<f32> = in_NORMAL0;
  let x_141 : vec4<f32> = x_41.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_139, vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_145 : vec3<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat9;
  u_xlat9 = max(x_148, 1.17549435e-38f);
  let x_151 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_151);
  let x_153 : f32 = u_xlat9;
  let x_155 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_153, x_153, x_153) * x_155);
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_157.x, x_157.y, x_157.z), x_159);
  let x_161 : f32 = u_xlat9;
  u_xlat9 = clamp(x_161, 0.0f, 1.0f);
  let x_165 : f32 = u_xlat9;
  u_xlat9 = (-(x_165) + 1.0f);
  let x_168 : f32 = u_xlat9;
  let x_171 : f32 = x_87.x_ShadowBias.y;
  u_xlat9 = (x_168 * x_171);
  let x_173 : vec3<f32> = u_xlat2;
  let x_174 : f32 = u_xlat9;
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec3<f32> = ((x_173 * vec3<f32>(x_174, x_174, x_174)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_87.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_182.y, x_182.y, x_182.y, x_182.y) * x_185);
  let x_188 : vec4<f32> = x_87.unity_MatrixVP[0i];
  let x_189 : vec4<f32> = u_xlat0;
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_188 * vec4<f32>(x_189.x, x_189.x, x_189.x, x_189.x)) + x_192);
  let x_195 : vec4<f32> = x_87.unity_MatrixVP[2i];
  let x_196 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_195 * vec4<f32>(x_196.z, x_196.z, x_196.z, x_196.z)) + x_199);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = x_87.unity_MatrixVP[3i];
  u_xlat0 = (x_201 + x_203);
  let x_210 : f32 = u_xlat0.z;
  gl_Position.z = min(x_210, 1.0f);
  let x_214 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = vec3<f32>(x_214.x, x_214.y, x_214.w);
  let x_218 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_215.x, x_215.y, x_218.z, x_215.z);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}


