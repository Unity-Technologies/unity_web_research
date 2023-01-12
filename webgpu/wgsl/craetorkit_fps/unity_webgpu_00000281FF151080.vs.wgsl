struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_FillAmount : f32,
  @size(12)
  padding_1 : u32,
  x_LiquidRotation : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD2 : f32;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec3<f32>;

var<private> vs_COLOR2 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_46 : f32 = u_xlat0.y;
  let x_50 : f32 = x_18.x_LiquidRotation[1i].y;
  u_xlat1.x = (x_46 * x_50);
  let x_55 : f32 = x_18.x_LiquidRotation[0i].y;
  let x_57 : f32 = u_xlat0.x;
  let x_60 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_55 * x_57) + x_60);
  let x_64 : f32 = x_18.x_LiquidRotation[2i].y;
  let x_67 : f32 = u_xlat0.z;
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_64 * x_67) + x_70);
  let x_73 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_73 + x_76);
  let x_79 : f32 = u_xlat1.x;
  let x_81 : f32 = x_18.x_LiquidRotation[3i].y;
  u_xlat1.x = (x_79 + x_81);
  let x_86 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_88 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat3 = dot(x_86, x_88);
  let x_90 : f32 = u_xlat3;
  u_xlat3 = sqrt(x_90);
  let x_96 : f32 = x_18.x_FillAmount;
  let x_98 : f32 = u_xlat3;
  let x_101 : f32 = u_xlat1.x;
  vs_TEXCOORD2 = ((-(x_96) * x_98) + x_101);
  let x_103 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_103.y, x_103.y, x_103.y, x_103.y) * x_107);
  let x_110 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_111 : vec4<f32> = u_xlat0;
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_110 * vec4<f32>(x_111.x, x_111.x, x_111.x, x_111.x)) + x_114);
  let x_117 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_118 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_117 * vec4<f32>(x_118.z, x_118.z, x_118.z, x_118.z)) + x_121);
  let x_124 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_124 * vec4<f32>(x_125.w, x_125.w, x_125.w, x_125.w)) + x_128);
  let x_131 : f32 = u_xlat0.z;
  let x_133 : f32 = x_18.x_ProjectionParams.y;
  u_xlat1.x = (x_131 / x_133);
  let x_140 : vec4<f32> = u_xlat0;
  gl_Position = x_140;
  let x_144 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_144) + 1.0f);
  let x_150 : f32 = u_xlat0.x;
  let x_152 : f32 = x_18.x_ProjectionParams.z;
  u_xlat0.x = (x_150 * x_152);
  let x_156 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_156, 0.0f);
  let x_161 : f32 = u_xlat0.x;
  let x_164 : f32 = x_18.unity_FogParams.x;
  u_xlat0.x = (x_161 * x_164);
  let x_168 : f32 = u_xlat0.x;
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = (x_168 * -(x_170));
  let x_176 : f32 = u_xlat0.x;
  vs_TEXCOORD1 = exp2(x_176);
  let x_183 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_183;
  let x_186 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_189 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_191 : vec3<f32> = (vec3<f32>(x_186.y, x_186.y, x_186.y) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_198 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_210 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_213 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_210.z, x_210.z, x_210.z)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat0;
  let x_221 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_223 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = in_POSITION0;
  let x_231 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + -(vec3<f32>(x_228.x, x_228.y, x_228.z)));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_240);
  let x_244 : f32 = u_xlat6;
  let x_246 : vec4<f32> = u_xlat0;
  vs_COLOR0 = (vec3<f32>(x_244, x_244, x_244) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_252 : vec3<f32> = in_NORMAL0;
  vs_COLOR2 = x_252;
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : f32,
  @location(2)
  vs_COLOR0_1 : vec3<f32>,
  @location(3)
  vs_COLOR2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD1, vs_COLOR0, vs_COLOR2);
}

