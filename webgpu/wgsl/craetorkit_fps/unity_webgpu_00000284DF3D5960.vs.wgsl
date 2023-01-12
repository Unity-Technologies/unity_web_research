struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FillAmount : f32,
  @size(12)
  padding_1 : u32,
  x_LiquidRotation : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD2 : f32;

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
  let x_23 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
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
  let x_108 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_108;
  let x_109 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_109.y, x_109.y, x_109.y, x_109.y) * x_112);
  let x_115 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_115 * vec4<f32>(x_116.x, x_116.x, x_116.x, x_116.x)) + x_119);
  let x_122 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_123 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_122 * vec4<f32>(x_123.z, x_123.z, x_123.z, x_123.z)) + x_126);
  let x_133 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_134 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = u_xlat1;
  gl_Position = ((x_133 * vec4<f32>(x_134.w, x_134.w, x_134.w, x_134.w)) + x_137);
  let x_143 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_146 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_148 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_155 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_167 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_180 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = in_POSITION0;
  let x_188 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(vec3<f32>(x_185.x, x_185.y, x_185.z)));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_197);
  let x_201 : f32 = u_xlat6;
  let x_203 : vec4<f32> = u_xlat0;
  vs_COLOR0 = (vec3<f32>(x_201, x_201, x_201) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_209 : vec3<f32> = in_NORMAL0;
  vs_COLOR2 = x_209;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD2_1 : f32,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_COLOR0_1 : vec3<f32>,
  @location(2)
  vs_COLOR2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_COLOR0, vs_COLOR2);
}

