diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 42u>;

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BokehKernel : Arr,
  /* @offset(720) */
  x_BokehConstants : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlat10 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati24 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_30.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_36);
  u_xlat0.x = x_37.w;
  let x_47 : vec4<f32> = x_30.x_BlitTexture_TexelSize;
  u_xlat8 = ((-(vec2<f32>(x_47.x, x_47.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_58 : vec2<f32> = u_xlat8;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_60 : vec2<f32> = min(x_58, x_59);
  let x_61 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_60.x, x_60.y, x_61.z, x_61.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_30.x_RTHandleScale;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67.x, x_67.y));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : f32 = x_30.x_GlobalMipBias.x;
  let x_79 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_75.x, x_75.y), x_78);
  u_xlat1 = x_79;
  let x_82 : f32 = u_xlat0.x;
  let x_84 : f32 = u_xlat1.w;
  u_xlat24 = min(x_82, x_84);
  let x_86 : f32 = u_xlat24;
  u_xlat24 = max(x_86, 0.0f);
  let x_89 : f32 = u_xlat24;
  let x_93 : f32 = x_30.x_BokehConstants.y;
  u_xlat24 = (x_89 + x_93);
  let x_95 : f32 = u_xlat24;
  let x_97 : f32 = x_30.x_BokehConstants.y;
  u_xlat24 = (x_95 / x_97);
  let x_99 : f32 = u_xlat24;
  u_xlat24 = clamp(x_99, 0.0f, 1.0f);
  let x_103 : f32 = u_xlat1.w;
  let x_106 : f32 = x_30.x_BokehConstants.y;
  u_xlat2.x = (-(x_103) + x_106);
  let x_110 : f32 = u_xlat2.x;
  let x_112 : f32 = x_30.x_BokehConstants.y;
  u_xlat2.x = (x_110 / x_112);
  let x_116 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_116, 0.0f, 1.0f);
  let x_123 : f32 = u_xlat1.w;
  let x_126 : f32 = x_30.x_BokehConstants.x;
  u_xlatb10 = (-(x_123) >= x_126);
  let x_129 : bool = u_xlatb10;
  u_xlat10 = select(0.0f, 1.0f, x_129);
  let x_131 : f32 = u_xlat10;
  let x_133 : f32 = u_xlat2.x;
  u_xlat2.x = (x_131 * x_133);
  u_xlat1.w = 1.0f;
  let x_138 : f32 = u_xlat24;
  let x_140 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_138, x_138, x_138, x_138) * x_140);
  let x_142 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_142.x, x_142.x, x_142.x, x_142.x) * x_144);
  u_xlat2.w = 1.0f;
  let x_148 : vec4<f32> = u_xlat3;
  u_xlat4 = x_148;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat5 = x_150;
  u_xlati_loop_1 = 0i;
  loop {
    let x_158 : i32 = u_xlati_loop_1;
    if ((x_158 < 42i)) {
    } else {
      break;
    }
    let x_162 : vec2<f32> = vs_TEXCOORD0;
    let x_164 : i32 = u_xlati_loop_1;
    let x_166 : vec4<f32> = x_30.x_BokehKernel[x_164];
    let x_168 : vec2<f32> = (x_162 + vec2<f32>(x_166.w, x_166.y));
    let x_169 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_168.x, x_168.y, x_169.z, x_169.w);
    let x_171 : vec2<f32> = u_xlat8;
    let x_172 : vec4<f32> = u_xlat6;
    let x_174 : vec2<f32> = min(x_171, vec2<f32>(x_172.x, x_172.y));
    let x_175 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
    let x_177 : vec4<f32> = u_xlat6;
    let x_180 : vec4<f32> = x_30.x_RTHandleScale;
    let x_182 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) * vec2<f32>(x_180.x, x_180.y));
    let x_183 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
    let x_188 : vec4<f32> = u_xlat6;
    let x_191 : f32 = x_30.x_GlobalMipBias.x;
    let x_192 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_188.x, x_188.y), x_191);
    u_xlat6 = x_192;
    let x_195 : f32 = u_xlat0.x;
    let x_197 : f32 = u_xlat6.w;
    u_xlat7.x = min(x_195, x_197);
    let x_201 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_201, 0.0f);
    let x_205 : f32 = u_xlat7.x;
    let x_206 : i32 = u_xlati_loop_1;
    let x_209 : f32 = x_30.x_BokehKernel[x_206].z;
    u_xlat7.x = (x_205 + -(x_209));
    let x_214 : f32 = u_xlat7.x;
    let x_216 : f32 = x_30.x_BokehConstants.y;
    u_xlat7.x = (x_214 + x_216);
    let x_221 : f32 = u_xlat6.w;
    let x_223 : i32 = u_xlati_loop_1;
    let x_225 : f32 = x_30.x_BokehKernel[x_223].z;
    u_xlat15 = (-(x_221) + -(x_225));
    let x_228 : f32 = u_xlat15;
    let x_230 : f32 = x_30.x_BokehConstants.y;
    u_xlat7.y = (x_228 + x_230);
    let x_233 : vec2<f32> = u_xlat7;
    let x_235 : vec4<f32> = x_30.x_BokehConstants;
    u_xlat7 = (x_233 / vec2<f32>(x_235.y, x_235.y));
    let x_238 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_238, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_244 : f32 = u_xlat6.w;
    let x_247 : f32 = x_30.x_BokehConstants.x;
    u_xlatb30 = (-(x_244) >= x_247);
    let x_250 : bool = u_xlatb30;
    u_xlat30 = select(0.0f, 1.0f, x_250);
    let x_252 : f32 = u_xlat30;
    let x_254 : f32 = u_xlat7.y;
    u_xlat30 = (x_252 * x_254);
    let x_256 : vec4<f32> = u_xlat6;
    let x_257 : vec3<f32> = vec3<f32>(x_256.x, x_256.y, x_256.z);
    let x_258 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_260 : vec4<f32> = u_xlat2;
    let x_261 : vec2<f32> = u_xlat7;
    let x_264 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_260 * vec4<f32>(x_261.x, x_261.x, x_261.x, x_261.x)) + x_264);
    let x_266 : vec4<f32> = u_xlat2;
    let x_267 : f32 = u_xlat30;
    let x_270 : vec4<f32> = u_xlat5;
    u_xlat5 = ((x_266 * vec4<f32>(x_267, x_267, x_267, x_267)) + x_270);

    continuing {
      let x_272 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_272 + 1i);
    }
  }
  let x_276 : f32 = u_xlat4.w;
  u_xlatb0 = (x_276 == 0.0f);
  let x_278 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_278);
  let x_282 : f32 = u_xlat0.x;
  let x_284 : f32 = u_xlat4.w;
  u_xlat0.x = (x_282 + x_284);
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_287.x, x_287.y, x_287.z) / vec3<f32>(x_289.x, x_289.x, x_289.x));
  let x_294 : f32 = u_xlat5.w;
  u_xlatb24 = (x_294 == 0.0f);
  let x_296 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_296);
  let x_298 : f32 = u_xlat24;
  let x_300 : f32 = u_xlat5.w;
  u_xlat24 = (x_298 + x_300);
  let x_302 : vec4<f32> = u_xlat5;
  let x_304 : f32 = u_xlat24;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) / vec3<f32>(x_304, x_304, x_304));
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_310 : f32 = u_xlat5.w;
  u_xlat24 = (x_310 * 0.07306029647588729858f);
  let x_313 : f32 = u_xlat24;
  u_xlat24 = min(x_313, 1.0f);
  let x_315 : vec3<f32> = u_xlat0;
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = (-(x_315) + vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_324 : f32 = u_xlat24;
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec3<f32> = u_xlat0;
  let x_330 : vec3<f32> = ((vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + x_329);
  let x_331 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : f32 = u_xlat24;
  SV_Target0.w = x_333;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


