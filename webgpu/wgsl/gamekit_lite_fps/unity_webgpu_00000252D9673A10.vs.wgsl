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
  unity_WorldTransformParams : vec4<f32>,
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

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  vs_TEXCOORD1 = (vec3<f32>(x_176.x, x_176.y, x_176.z) + -(x_180));
  let x_187 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_187;
  let x_192 : vec4<f32> = in_TANGENT0;
  let x_195 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_197 : vec3<f32> = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_203 : vec4<f32> = in_TANGENT0;
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203.x, x_203.x, x_203.x)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_214 : vec4<f32> = in_TANGENT0;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.z, x_214.z, x_214.z)) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_229 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_229);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.x, x_232.x, x_232.x) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = vec3<f32>(x_239.x, x_239.y, x_239.z);
  let x_241 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_245 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_245;
  let x_250 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_250;
  let x_254 : vec3<f32> = in_NORMAL0;
  let x_257 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_254, vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_261 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_261, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : vec3<f32> = in_NORMAL0;
  let x_269 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_267, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_279);
  let x_281 : f32 = u_xlat9;
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec3<f32> = (vec3<f32>(x_281, x_281, x_281) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_289.y, x_289.z, x_289.x) * vec3<f32>(x_291.z, x_291.x, x_291.y));
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = u_xlat1;
  let x_299 : vec3<f32> = u_xlat2;
  let x_301 : vec3<f32> = ((vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y)) + -(x_299));
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_306 : f32 = in_TANGENT0.w;
  let x_309 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat9 = (x_306 * x_309);
  let x_311 : f32 = u_xlat9;
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = (vec3<f32>(x_311, x_311, x_311) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = vec3<f32>(x_318.x, x_318.y, x_318.z);
  let x_320 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = u_xlat0.y;
  let x_325 : f32 = u_xlat0.y;
  u_xlat9 = (x_323 * x_325);
  let x_328 : f32 = u_xlat0.x;
  let x_330 : f32 = u_xlat0.x;
  let x_332 : f32 = u_xlat9;
  u_xlat9 = ((x_328 * x_330) + -(x_332));
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_335.y, x_335.z, x_335.z, x_335.x) * vec4<f32>(x_337.x, x_337.y, x_337.z, x_337.z));
  let x_341 : vec4<f32> = x_18.unity_SHBr;
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_341, x_342);
  let x_346 : vec4<f32> = x_18.unity_SHBg;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_346, x_347);
  let x_351 : vec4<f32> = x_18.unity_SHBb;
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_351, x_352);
  let x_358 : vec4<f32> = x_18.unity_SHC;
  let x_360 : f32 = u_xlat9;
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360, x_360, x_360)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  vs_TEXCOORD5.w = 0.0f;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

