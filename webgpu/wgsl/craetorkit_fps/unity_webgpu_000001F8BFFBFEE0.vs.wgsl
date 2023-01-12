struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD7 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_67 * vec4<f32>(x_68.w, x_68.w, x_68.w, x_68.w)) + x_71);
  let x_79 : vec4<f32> = u_xlat1;
  gl_Position = x_79;
  let x_87 : f32 = u_xlat1.z;
  vs_TEXCOORD7 = x_87;
  let x_92 : vec4<f32> = in_TEXCOORD0;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_92.x, x_92.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(x_100.z, x_100.w));
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_112 : vec3<f32> = in_NORMAL0;
  let x_114 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_112, vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_118 : vec3<f32> = in_NORMAL0;
  let x_120 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_118, vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat13;
  let x_135 : vec4<f32> = u_xlat1;
  let x_137 : vec3<f32> = (vec3<f32>(x_133, x_133, x_133) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_141 : vec4<f32> = in_TANGENT0;
  let x_144 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_146 : vec3<f32> = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.y, x_144.z, x_144.x));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_152 : vec4<f32> = in_TANGENT0;
  let x_155 : vec4<f32> = u_xlat2;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.y, x_150.z, x_150.x) * vec3<f32>(x_152.x, x_152.x, x_152.x)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_163 : vec4<f32> = in_TANGENT0;
  let x_166 : vec4<f32> = u_xlat2;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.y, x_161.z, x_161.x) * vec3<f32>(x_163.z, x_163.z, x_163.z)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat13;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_192.z, x_192.x, x_192.y) * vec3<f32>(x_194.y, x_194.z, x_194.x)) + -(x_197));
  let x_203 : f32 = in_TANGENT0.w;
  let x_206 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat13 = (x_203 * x_206);
  let x_208 : f32 = u_xlat13;
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_208, x_208, x_208) * x_210);
  let x_215 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_215;
  let x_218 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_218;
  let x_221 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_221;
  let x_225 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_225;
  let x_229 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_229;
  let x_232 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_232;
  let x_235 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_235;
  let x_238 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_238;
  let x_241 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_241;
  let x_245 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_247 : vec4<f32> = in_POSITION0;
  let x_250 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.w, x_247.w, x_247.w)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_255 : vec4<f32> = in_POSITION0;
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_254 * vec4<f32>(x_255.w, x_255.w, x_255.w, x_255.w)) + x_258);
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat1 = (vec4<f32>(x_260.y, x_260.y, x_260.y, x_260.y) * x_264);
  let x_267 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_268 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_267 * vec4<f32>(x_268.x, x_268.x, x_268.x, x_268.x)) + x_271);
  let x_274 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_274 * vec4<f32>(x_275.z, x_275.z, x_275.z, x_275.z)) + x_278);
  let x_283 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = ((x_283 * vec4<f32>(x_284.w, x_284.w, x_284.w, x_284.w)) + x_287);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD7_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD7, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

