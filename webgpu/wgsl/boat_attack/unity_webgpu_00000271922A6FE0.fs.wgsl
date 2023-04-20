diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_FlareColorValue : vec4<f32>,
  /* @offset(16) */
  x_FlareData3 : vec4<f32>,
  /* @offset(32) */
  x_FlareData4 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat1 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb9 : bool;

var<private> u_xlatb1 : bool;

@group(1) @binding(0) var<uniform> x_162 : PGlobals;

var<private> u_xlat2 : vec2<f32>;

var<private> u_xlati9 : i32;

var<private> u_xlati1 : i32;

var<private> u_xlati6 : i32;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_149 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_19 : vec2<f32> = ((x_13 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_20 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_19.x, x_19.y, x_20.z, x_20.w);
  let x_28 : f32 = u_xlat0.x;
  let x_32 : f32 = u_xlat0.y;
  u_xlat6.x = max(abs(x_28), abs(x_32));
  let x_38 : f32 = u_xlat6.x;
  u_xlat6.x = (1.0f / x_38);
  let x_43 : f32 = u_xlat0.x;
  let x_46 : f32 = u_xlat0.y;
  u_xlat9 = min(abs(x_43), abs(x_46));
  let x_50 : f32 = u_xlat6.x;
  let x_51 : f32 = u_xlat9;
  u_xlat6.x = (x_50 * x_51);
  let x_55 : f32 = u_xlat6.x;
  let x_57 : f32 = u_xlat6.x;
  u_xlat9 = (x_55 * x_57);
  let x_60 : f32 = u_xlat9;
  u_xlat1 = ((x_60 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_65 : f32 = u_xlat9;
  let x_66 : f32 = u_xlat1;
  u_xlat1 = ((x_65 * x_66) + 0.18014100193977355957f);
  let x_70 : f32 = u_xlat9;
  let x_71 : f32 = u_xlat1;
  u_xlat1 = ((x_70 * x_71) + -0.33029949665069580078f);
  let x_75 : f32 = u_xlat9;
  let x_76 : f32 = u_xlat1;
  u_xlat9 = ((x_75 * x_76) + 0.99986600875854492188f);
  let x_80 : f32 = u_xlat9;
  let x_82 : f32 = u_xlat6.x;
  u_xlat1 = (x_80 * x_82);
  let x_84 : f32 = u_xlat1;
  u_xlat1 = ((x_84 * -2.0f) + 1.57079637050628662109f);
  let x_93 : f32 = u_xlat0.x;
  let x_96 : f32 = u_xlat0.y;
  u_xlatb4 = (abs(x_93) < abs(x_96));
  let x_99 : bool = u_xlatb4;
  let x_100 : f32 = u_xlat1;
  u_xlat1 = select(0.0f, x_100, x_99);
  let x_104 : f32 = u_xlat6.x;
  let x_105 : f32 = u_xlat9;
  let x_107 : f32 = u_xlat1;
  u_xlat6.x = ((x_104 * x_105) + x_107);
  let x_112 : f32 = u_xlat0.x;
  let x_114 : f32 = u_xlat0.x;
  u_xlatb9 = (x_112 < -(x_114));
  let x_117 : bool = u_xlatb9;
  u_xlat9 = select(0.0f, -3.14159274101257324219f, x_117);
  let x_120 : f32 = u_xlat9;
  let x_122 : f32 = u_xlat6.x;
  u_xlat6.x = (x_120 + x_122);
  let x_126 : f32 = u_xlat0.x;
  let x_128 : f32 = u_xlat0.y;
  u_xlat9 = min(x_126, x_128);
  let x_130 : f32 = u_xlat9;
  let x_131 : f32 = u_xlat9;
  u_xlatb9 = (x_130 < -(x_131));
  let x_135 : f32 = u_xlat0.x;
  let x_137 : f32 = u_xlat0.y;
  u_xlat1 = max(x_135, x_137);
  let x_140 : f32 = u_xlat1;
  let x_141 : f32 = u_xlat1;
  u_xlatb1 = (x_140 >= -(x_141));
  let x_144 : bool = u_xlatb9;
  let x_145 : bool = u_xlatb1;
  u_xlatb9 = (x_144 & x_145);
  let x_147 : bool = u_xlatb9;
  if (x_147) {
    let x_153 : f32 = u_xlat6.x;
    x_149 = -(x_153);
  } else {
    let x_157 : f32 = u_xlat6.x;
    x_149 = x_157;
  }
  let x_158 : f32 = x_149;
  u_xlat6.x = x_158;
  let x_168 : f32 = x_162.x_FlareData4.z;
  let x_172 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_168 * 0.5f) + x_172);
  let x_176 : f32 = u_xlat6.x;
  let x_178 : f32 = x_162.x_FlareData4.z;
  u_xlat6.x = (x_176 / x_178);
  let x_182 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_182);
  let x_186 : f32 = u_xlat6.x;
  let x_188 : f32 = x_162.x_FlareData4.z;
  u_xlat6.x = (x_186 * x_188);
  let x_192 : f32 = u_xlat6.x;
  u_xlat1 = sin(x_192);
  let x_196 : f32 = u_xlat6.x;
  u_xlat2.x = cos(x_196);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec2<f32> = u_xlat2;
  u_xlat6 = (vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_201.x, x_201.x));
  let x_204 : f32 = u_xlat1;
  let x_206 : f32 = u_xlat0.y;
  let x_209 : f32 = u_xlat6.x;
  u_xlat2.x = ((x_204 * x_206) + x_209);
  let x_212 : f32 = u_xlat1;
  let x_215 : f32 = u_xlat0.x;
  let x_218 : f32 = u_xlat6.y;
  u_xlat2.y = ((-(x_212) * x_215) + x_218);
  let x_224 : vec4<f32> = x_162.x_FlareData4;
  let x_226 : vec3<f32> = -(vec3<f32>(x_224.w, x_224.x, x_224.y));
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : f32 = u_xlat0.x;
  let x_232 : f32 = u_xlat2.y;
  u_xlat0.x = max(x_230, x_232);
  let x_236 : f32 = u_xlat0.x;
  let x_239 : f32 = x_162.x_FlareData4.w;
  u_xlat0.x = min(x_236, x_239);
  let x_243 : f32 = u_xlat0.x;
  u_xlat0.w = -(x_243);
  let x_246 : vec4<f32> = u_xlat0;
  let x_248 : vec2<f32> = u_xlat2;
  let x_249 : vec2<f32> = (vec2<f32>(x_246.z, x_246.w) + x_248);
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_250.y, x_249.y, x_250.w);
  let x_255 : f32 = u_xlat0.x;
  u_xlati9 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_255)));
  let x_262 : f32 = u_xlat0.x;
  u_xlati1 = bitcast<i32>(select(0u, 4294967295u, (x_262 < 0.0f)));
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_266.x, x_266.z), vec2<f32>(x_268.x, x_268.z));
  let x_273 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_273);
  let x_277 : i32 = u_xlati9;
  let x_279 : i32 = u_xlati1;
  u_xlati6 = (-(x_277) + x_279);
  let x_281 : i32 = u_xlati6;
  u_xlat6.x = f32(x_281);
  let x_285 : f32 = u_xlat0.x;
  let x_287 : f32 = u_xlat6.x;
  let x_290 : f32 = u_xlat0.y;
  u_xlat0.x = ((x_285 * x_287) + x_290);
  let x_294 : f32 = u_xlat0.x;
  let x_297 : f32 = x_162.x_FlareData3.y;
  u_xlat0.x = (x_294 * x_297);
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = -(x_301);
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_305, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_309);
  let x_313 : f32 = u_xlat0.x;
  let x_315 : f32 = x_162.x_FlareData3.z;
  u_xlat0.x = (x_313 * x_315);
  let x_319 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_319);
  let x_323 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_323, 1.0f);
  let x_326 : vec4<f32> = u_xlat0;
  let x_330 : vec4<f32> = x_162.x_FlareColorValue;
  u_xlat0 = (vec4<f32>(x_326.x, x_326.x, x_326.x, x_326.x) * x_330);
  let x_334 : vec4<f32> = u_xlat0;
  let x_337 : f32 = vs_TEXCOORD1;
  SV_Target0 = (x_334 * vec4<f32>(x_337, x_337, x_337, x_337));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


