struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(13) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_133 : vec4<f32> = in_POSITION0;
  let x_136 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_155 : vec4<f32> = in_POSITION0;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.w, x_166.w, x_166.w)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_180 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_178));
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_190);
  let x_193 : f32 = u_xlat13;
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = (vec3<f32>(x_193, x_193, x_193) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat0.w = 0.0f;
  let x_205 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_205.w, x_205.w, x_205.w, x_205.x);
  let x_208 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_208.w, x_208.w, x_208.w, x_208.y);
  let x_213 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_213;
  let x_217 : vec3<f32> = in_NORMAL0;
  let x_220 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_217, vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : vec3<f32> = in_NORMAL0;
  let x_227 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_225, vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_231 : vec3<f32> = in_NORMAL0;
  let x_233 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_231, vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat12;
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = vec3<f32>(x_252.x, x_252.y, x_252.z);
  let x_254 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : f32 = u_xlat0.y;
  let x_259 : f32 = u_xlat0.y;
  u_xlat1.x = (x_257 * x_259);
  let x_263 : f32 = u_xlat0.x;
  let x_265 : f32 = u_xlat0.x;
  let x_268 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_263 * x_265) + -(x_268));
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_273.y, x_273.z, x_273.z, x_273.x) * vec4<f32>(x_275.x, x_275.y, x_275.z, x_275.z));
  let x_282 : vec4<f32> = x_18.unity_SHBr;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_282, x_283);
  let x_288 : vec4<f32> = x_18.unity_SHBg;
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_288, x_289);
  let x_294 : vec4<f32> = x_18.unity_SHBb;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_294, x_295);
  let x_300 : vec4<f32> = x_18.unity_SHC;
  let x_302 : vec4<f32> = u_xlat1;
  let x_305 : vec3<f32> = u_xlat3;
  let x_306 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.x, x_302.x)) + x_305);
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  u_xlat0.w = 1.0f;
  let x_312 : vec4<f32> = x_18.unity_SHAr;
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_312, x_313);
  let x_317 : vec4<f32> = x_18.unity_SHAg;
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_317, x_318);
  let x_322 : vec4<f32> = x_18.unity_SHAb;
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_322, x_323);
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = max(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_338 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
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

