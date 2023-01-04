struct VGlobals {
  x_TimeParameters : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_ShadowBias : vec4<f32>,
  x_LightDirection : vec3<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

var<private> in_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_61 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_101 : UnityPerDraw;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_TEXCOORD0;
  let x_18 : vec2<f32> = (vec2<f32>(x_13.y, x_13.y) + vec2<f32>(0.5f, 1.0f));
  let x_19 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_18.x, x_18.y, x_19.z, x_19.w);
  let x_28 : f32 = u_xlat0.y;
  u_xlat2.x = floor(x_28);
  let x_33 : f32 = u_xlat2.x;
  let x_36 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + x_36);
  let x_40 : f32 = u_xlat0.x;
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = (x_40 + x_42);
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = ((abs(x_46) * 2.0f) + -1.0f);
  let x_54 : f32 = u_xlat0.x;
  u_xlat0.x = (x_54 * 6.283185959f);
  let x_66 : f32 = x_61.x_TimeParameters.x;
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_66 * 3.0f) + x_70);
  let x_74 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_74);
  let x_78 : f32 = u_xlat0.x;
  let x_82 : f32 = in_COLOR0.y;
  u_xlat0.x = (x_78 * x_82);
  let x_86 : f32 = u_xlat0.x;
  let x_93 : f32 = in_POSITION0.z;
  u_xlat0.x = ((-(x_86) * 0.5f) + x_93);
  let x_96 : vec3<f32> = in_POSITION0;
  let x_105 : vec4<f32> = x_101.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_96.y, x_96.y, x_96.y) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_109 : vec4<f32> = x_101.unity_ObjectToWorld[0i];
  let x_111 : vec3<f32> = in_POSITION0;
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + x_114);
  let x_118 : vec4<f32> = x_101.unity_ObjectToWorld[2i];
  let x_120 : vec4<f32> = u_xlat0;
  let x_123 : vec3<f32> = u_xlat2;
  let x_124 : vec3<f32> = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + x_123);
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = x_101.unity_ObjectToWorld[3i];
  let x_133 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.z) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_138 : vec3<f32> = x_61.x_LightDirection;
  let x_140 : vec4<f32> = x_61.x_ShadowBias;
  let x_143 : vec4<f32> = u_xlat0;
  let x_145 : vec3<f32> = ((x_138 * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_150 : vec3<f32> = in_NORMAL0;
  let x_152 : vec4<f32> = x_101.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_150, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_156 : vec3<f32> = in_NORMAL0;
  let x_158 : vec4<f32> = x_101.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_156, vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_164 : vec4<f32> = x_101.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_162, vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : f32 = u_xlat6;
  u_xlat6 = max(x_174, 1.17549435e-37f);
  let x_177 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_177);
  let x_179 : f32 = u_xlat6;
  let x_181 : vec4<f32> = u_xlat1;
  let x_183 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = x_61.x_LightDirection;
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_187, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat6;
  u_xlat6 = clamp(x_191, 0.0f, 1.0f);
  let x_194 : f32 = u_xlat6;
  u_xlat6 = (-(x_194) + 1.0f);
  let x_197 : f32 = u_xlat6;
  let x_199 : f32 = x_61.x_ShadowBias.y;
  u_xlat6 = (x_197 * x_199);
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : f32 = u_xlat6;
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203, x_203, x_203)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_213 : vec4<f32> = u_xlat1;
  vs_INTERP0 = vec3<f32>(x_213.x, x_213.y, x_213.z);
  let x_215 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = x_61.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_215.y, x_215.y, x_215.y, x_215.y) * x_218);
  let x_221 : vec4<f32> = x_61.unity_MatrixVP[0i];
  let x_222 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_221 * vec4<f32>(x_222.x, x_222.x, x_222.x, x_222.x)) + x_225);
  let x_228 : vec4<f32> = x_61.unity_MatrixVP[2i];
  let x_229 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_228 * vec4<f32>(x_229.z, x_229.z, x_229.z, x_229.z)) + x_232);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = x_61.unity_MatrixVP[3i];
  u_xlat0 = (x_234 + x_236);
  let x_243 : f32 = u_xlat0.z;
  gl_Position.z = min(x_243, 1.0f);
  let x_247 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = vec3<f32>(x_247.x, x_247.y, x_247.w);
  let x_251 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_248.x, x_248.y, x_251.z, x_248.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}

