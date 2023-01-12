struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_95 : vec2<f32>;
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
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_52);
  let x_55 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_62 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z)) + x_66);
  let x_75 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  gl_Position = ((x_75 * vec4<f32>(x_76.w, x_76.w, x_76.w, x_76.w)) + x_79);
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb0;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat0;
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
  vs_TEXCOORD1.w = 0.0f;
  let x_137 : vec4<f32> = in_POSITION0;
  let x_140 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_142 : vec3<f32> = (vec3<f32>(x_137.y, x_137.y, x_137.y) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_148 : vec4<f32> = in_POSITION0;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_159 : vec4<f32> = in_POSITION0;
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_170 : vec4<f32> = in_POSITION0;
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.w, x_170.w, x_170.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_184 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + -(x_182));
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  u_xlat0.w = 0.0f;
  let x_190 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_190.w, x_190.w, x_190.w, x_190.x);
  let x_193 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_193.w, x_193.w, x_193.w, x_193.y);
  let x_198 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_198;
  let x_202 : vec3<f32> = in_NORMAL0;
  let x_205 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_202, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_210 : vec3<f32> = in_NORMAL0;
  let x_212 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_210, vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec3<f32> = in_NORMAL0;
  let x_218 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_216, vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_228);
  let x_230 : f32 = u_xlat6;
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = (vec3<f32>(x_230, x_230, x_230) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = vec3<f32>(x_237.x, x_237.y, x_237.z);
  let x_239 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : f32 = u_xlat0.y;
  let x_244 : f32 = u_xlat0.y;
  u_xlat6 = (x_242 * x_244);
  let x_247 : f32 = u_xlat0.x;
  let x_249 : f32 = u_xlat0.x;
  let x_251 : f32 = u_xlat6;
  u_xlat6 = ((x_247 * x_249) + -(x_251));
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_254.y, x_254.z, x_254.z, x_254.x) * vec4<f32>(x_256.x, x_256.y, x_256.z, x_256.z));
  let x_260 : vec4<f32> = x_18.unity_SHBr;
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_260, x_261);
  let x_265 : vec4<f32> = x_18.unity_SHBg;
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_265, x_266);
  let x_270 : vec4<f32> = x_18.unity_SHBb;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_270, x_271);
  let x_277 : vec4<f32> = x_18.unity_SHC;
  let x_279 : f32 = u_xlat6;
  let x_282 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279, x_279, x_279)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

