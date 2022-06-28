struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(7) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_95 : vec2<f32>;
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
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat0;
  gl_Position = x_80;
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb1;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_116 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_118 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_119.x, x_119.y, x_118.x, x_118.y);
  let x_121 : vec2<f32> = in_TEXCOORD0;
  let x_124 : vec4<f32> = x_18.x_MainTex_ST;
  let x_128 : vec4<f32> = x_18.x_MainTex_ST;
  let x_130 : vec2<f32> = ((x_121 * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(x_128.z, x_128.w));
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_133 : vec4<f32> = in_POSITION0;
  let x_136 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_155 : vec4<f32> = in_POSITION0;
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.w, x_166.w, x_166.w)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_181 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + -(x_179));
  let x_182 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_188 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_196 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_198 : vec3<f32> = ((-(vec3<f32>(x_188.x, x_188.y, x_188.z)) * vec3<f32>(x_192.w, x_192.w, x_192.w)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_203 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  u_xlat2.w = 0.0f;
  let x_208 : vec4<f32> = u_xlat2;
  vs_TEXCOORD2 = vec4<f32>(x_208.w, x_208.w, x_208.w, x_208.x);
  let x_211 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = vec4<f32>(x_211.w, x_211.w, x_211.w, x_211.y);
  let x_216 : f32 = u_xlat2.z;
  vs_TEXCOORD4.w = x_216;
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_223 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_220, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec3<f32> = in_NORMAL0;
  let x_230 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_228, vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_234 : vec3<f32> = in_NORMAL0;
  let x_236 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_234, vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_246);
  let x_248 : f32 = u_xlat10;
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = (vec3<f32>(x_248, x_248, x_248) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : f32 = u_xlat0.y;
  let x_258 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_256 * x_258);
  let x_261 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = (vec3<f32>(x_261.x, x_261.w, x_261.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_266.y, x_265.y, x_265.z);
  let x_269 : vec4<f32> = u_xlat0;
  let x_270 : vec2<f32> = vec2<f32>(x_269.z, x_269.w);
  let x_271 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_271.x, x_271.y, x_270.x, x_270.y);
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : vec2<f32> = (vec2<f32>(x_273.z, x_273.z) + vec2<f32>(x_275.x, x_275.w));
  let x_278 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_277.x, x_277.y, x_278.z, x_278.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD7);
}

