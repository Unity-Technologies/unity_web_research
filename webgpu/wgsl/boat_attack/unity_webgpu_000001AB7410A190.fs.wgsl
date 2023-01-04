struct PGlobals {
  x_FlareColorValue : vec4<f32>,
  x_FlareData3 : vec4<f32>,
  x_FlareData4 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_161 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : f32;
  var u_xlatb4 : bool;
  var u_xlatb9 : bool;
  var u_xlatb1 : bool;
  var x_148 : f32;
  var u_xlat2 : vec2<f32>;
  var u_xlati9 : i32;
  var u_xlati1 : i32;
  var u_xlati6 : i32;
  var u_xlat3 : f32;
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
  u_xlat1 = ((x_60 * 0.0208351f) + -0.085133001f);
  let x_65 : f32 = u_xlat9;
  let x_66 : f32 = u_xlat1;
  u_xlat1 = ((x_65 * x_66) + 0.180141002f);
  let x_70 : f32 = u_xlat9;
  let x_71 : f32 = u_xlat1;
  u_xlat1 = ((x_70 * x_71) + -0.330299497f);
  let x_75 : f32 = u_xlat9;
  let x_76 : f32 = u_xlat1;
  u_xlat9 = ((x_75 * x_76) + 0.999866009f);
  let x_80 : f32 = u_xlat9;
  let x_82 : f32 = u_xlat6.x;
  u_xlat1 = (x_80 * x_82);
  let x_84 : f32 = u_xlat1;
  u_xlat1 = ((x_84 * -2.0f) + 1.570796371f);
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
  u_xlat9 = select(0.0f, -3.141592741f, x_117);
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
    let x_152 : f32 = u_xlat6.x;
    x_148 = -(x_152);
  } else {
    let x_156 : f32 = u_xlat6.x;
    x_148 = x_156;
  }
  let x_157 : f32 = x_148;
  u_xlat6.x = x_157;
  let x_167 : f32 = x_161.x_FlareData4.z;
  let x_171 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_167 * 0.5f) + x_171);
  let x_175 : f32 = u_xlat6.x;
  let x_177 : f32 = x_161.x_FlareData4.z;
  u_xlat6.x = (x_175 / x_177);
  let x_181 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_181);
  let x_185 : f32 = u_xlat6.x;
  let x_187 : f32 = x_161.x_FlareData4.z;
  u_xlat6.x = (x_185 * x_187);
  let x_191 : f32 = u_xlat6.x;
  u_xlat1 = sin(x_191);
  let x_195 : f32 = u_xlat6.x;
  u_xlat2.x = cos(x_195);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec2<f32> = u_xlat2;
  u_xlat6 = (vec2<f32>(x_198.x, x_198.y) * vec2<f32>(x_200.x, x_200.x));
  let x_203 : f32 = u_xlat1;
  let x_205 : f32 = u_xlat0.y;
  let x_208 : f32 = u_xlat6.x;
  u_xlat2.x = ((x_203 * x_205) + x_208);
  let x_211 : f32 = u_xlat1;
  let x_214 : f32 = u_xlat0.x;
  let x_217 : f32 = u_xlat6.y;
  u_xlat2.y = ((-(x_211) * x_214) + x_217);
  let x_223 : vec4<f32> = x_161.x_FlareData4;
  let x_225 : vec3<f32> = -(vec3<f32>(x_223.w, x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : f32 = u_xlat0.x;
  let x_231 : f32 = u_xlat2.y;
  u_xlat0.x = max(x_229, x_231);
  let x_235 : f32 = u_xlat0.x;
  let x_238 : f32 = x_161.x_FlareData4.w;
  u_xlat0.x = min(x_235, x_238);
  let x_242 : f32 = u_xlat0.x;
  u_xlat0.w = -(x_242);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec2<f32> = u_xlat2;
  let x_248 : vec2<f32> = (vec2<f32>(x_245.z, x_245.w) + x_247);
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_249.y, x_248.y, x_249.w);
  let x_254 : f32 = u_xlat0.x;
  u_xlati9 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_254)));
  let x_261 : f32 = u_xlat0.x;
  u_xlati1 = bitcast<i32>(select(0u, 4294967295u, (x_261 < 0.0f)));
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_265.x, x_265.z), vec2<f32>(x_267.x, x_267.z));
  let x_272 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_272);
  let x_276 : i32 = u_xlati9;
  let x_278 : i32 = u_xlati1;
  u_xlati6 = (-(x_276) + x_278);
  let x_280 : i32 = u_xlati6;
  u_xlat6.x = f32(x_280);
  let x_284 : f32 = u_xlat0.x;
  let x_286 : f32 = u_xlat6.x;
  let x_289 : f32 = u_xlat0.y;
  u_xlat0.x = ((x_284 * x_286) + x_289);
  let x_293 : f32 = u_xlat0.x;
  let x_296 : f32 = x_161.x_FlareData3.y;
  u_xlat0.x = (x_293 * x_296);
  let x_300 : f32 = u_xlat0.x;
  u_xlat0.x = -(x_300);
  let x_304 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_304, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat0.x;
  u_xlat3 = (-(x_309) + 1.0f);
  let x_312 : f32 = u_xlat3;
  let x_314 : f32 = u_xlat0.x;
  u_xlat3 = (x_312 * x_314);
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = (x_317 + 0.000001f);
  let x_321 : f32 = u_xlat3;
  let x_323 : f32 = u_xlat0.x;
  u_xlat0.x = (x_321 / x_323);
  let x_327 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_327);
  let x_331 : f32 = u_xlat0.x;
  let x_333 : f32 = x_161.x_FlareData3.z;
  u_xlat0.x = (x_331 * x_333);
  let x_337 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_337);
  let x_341 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_341, 1.0f);
  let x_344 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_161.x_FlareColorValue;
  u_xlat0 = (vec4<f32>(x_344.x, x_344.x, x_344.x, x_344.x) * x_348);
  let x_352 : vec4<f32> = u_xlat0;
  let x_355 : f32 = vs_TEXCOORD1;
  SV_Target0 = (x_352 * vec4<f32>(x_355, x_355, x_355, x_355));
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

