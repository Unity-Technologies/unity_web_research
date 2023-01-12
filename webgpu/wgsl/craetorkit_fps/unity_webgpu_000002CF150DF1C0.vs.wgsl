struct VGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TEXCOORD1 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_41 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb9 : bool;
  var x_177 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD1 = vec2<f32>(x_13.x, x_13.y);
  let x_18 : vec4<f32> = in_TEXCOORD0;
  let x_19 : vec2<f32> = vec2<f32>(x_18.z, x_18.w);
  let x_20 : vec3<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec3<f32>(x_19.x, x_19.y, x_20.z);
  let x_24 : f32 = in_TEXCOORD1;
  vs_TEXCOORD2.z = x_24;
  let x_32 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD3 = x_32;
  let x_37 : vec3<f32> = in_NORMAL0;
  let x_47 : vec4<f32> = x_41.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_37, vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_53 : vec3<f32> = in_NORMAL0;
  let x_56 : vec4<f32> = x_41.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_53, vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : vec3<f32> = in_NORMAL0;
  let x_64 : vec4<f32> = x_41.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_61, vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat9;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_76, x_76, x_76) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_85.y, x_85.y, x_85.y, x_85.y) * x_88);
  let x_91 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_92 : vec4<f32> = in_POSITION0;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_91 * vec4<f32>(x_92.x, x_92.x, x_92.x, x_92.x)) + x_95);
  let x_98 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_99 : vec4<f32> = in_POSITION0;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_98 * vec4<f32>(x_99.z, x_99.z, x_99.z, x_99.z)) + x_102);
  let x_105 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  let x_106 : vec4<f32> = in_POSITION0;
  let x_109 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_105 * vec4<f32>(x_106.w, x_106.w, x_106.w, x_106.w)) + x_109);
  let x_112 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = x_41.x_WorldSpaceLightPos0;
  let x_120 : vec4<f32> = x_41.x_WorldSpaceLightPos0;
  let x_122 : vec3<f32> = ((-(vec3<f32>(x_112.x, x_112.y, x_112.z)) * vec3<f32>(x_116.w, x_116.w, x_116.w)) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_130);
  let x_132 : f32 = u_xlat9;
  let x_134 : vec4<f32> = u_xlat2;
  let x_136 : vec3<f32> = (vec3<f32>(x_132, x_132, x_132) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : f32 = u_xlat9;
  let x_146 : f32 = u_xlat9;
  u_xlat9 = ((-(x_144) * x_146) + 1.0f);
  let x_150 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_150);
  let x_152 : f32 = u_xlat9;
  let x_155 : f32 = x_41.unity_LightShadowBias.z;
  u_xlat9 = (x_152 * x_155);
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : f32 = u_xlat9;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = ((-(vec3<f32>(x_157.x, x_157.y, x_157.z)) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_172 : f32 = x_41.unity_LightShadowBias.z;
  u_xlatb9 = !((x_172 == 0.0f));
  let x_175 : bool = u_xlatb9;
  if (x_175) {
    let x_180 : vec4<f32> = u_xlat0;
    x_177 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  } else {
    let x_183 : vec4<f32> = u_xlat1;
    x_177 = vec3<f32>(x_183.x, x_183.y, x_183.z);
  }
  let x_185 : vec3<f32> = x_177;
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat0;
  let x_192 : vec4<f32> = x_41.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_188.y, x_188.y, x_188.y, x_188.y) * x_192);
  let x_195 : vec4<f32> = x_41.unity_MatrixVP[0i];
  let x_196 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_195 * vec4<f32>(x_196.x, x_196.x, x_196.x, x_196.x)) + x_199);
  let x_202 : vec4<f32> = x_41.unity_MatrixVP[2i];
  let x_203 : vec4<f32> = u_xlat0;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_202 * vec4<f32>(x_203.z, x_203.z, x_203.z, x_203.z)) + x_206);
  let x_209 : vec4<f32> = x_41.unity_MatrixVP[3i];
  let x_210 : vec4<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_209 * vec4<f32>(x_210.w, x_210.w, x_210.w, x_210.w)) + x_213);
  let x_217 : f32 = u_xlat0.w;
  let x_219 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_217, x_219);
  let x_223 : f32 = u_xlat0.z;
  let x_226 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_223) + x_226);
  let x_234 : f32 = x_41.unity_LightShadowBias.y;
  let x_236 : f32 = u_xlat1.x;
  let x_239 : f32 = u_xlat0.z;
  gl_Position.z = ((x_234 * x_236) + x_239);
  let x_242 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = vec3<f32>(x_242.x, x_242.y, x_242.w);
  let x_245 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_243.x, x_243.y, x_245.z, x_243.z);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : f32, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position);
}

