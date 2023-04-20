diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_DebugArrowColor : vec4<f32>,
  /* @offset(16) */
  x_DebugLocator01Color : vec4<f32>,
  /* @offset(32) */
  x_DebugLocator02Color : vec4<f32>,
}

var<private> phase0_Input0_3 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> u_xlatb0 : bool;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlati3 : vec2<i32>;

var<private> u_xlatb3 : bool;

var<private> u_xlati7 : vec2<i32>;

var<private> u_xlati1 : vec2<i32>;

var<private> u_xlat9 : f32;

var<private> u_xlati9 : i32;

var<private> u_xlatb6 : bool;

var<private> u_xlati6 : vec2<i32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_NumbersTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_NumbersTex : sampler;

var<private> u_xlatb9 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_339 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_100 : vec2<i32>;
  var x_136 : vec2<i32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD2;
  phase0_Input0_3 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_32 : f32 = vs_COLOR0.z;
  u_xlatb0 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_32, x_32, x_32, x_32))));
  let x_37 : bool = u_xlatb0;
  if (x_37) {
    let x_43 : vec4<f32> = phase0_Input0_3;
    u_xlat0 = (vec3<f32>(x_43.x, x_43.z, x_43.z) * vec3<f32>(4.0f, 100.0f, 10.0f));
    let x_52 : vec3<f32> = u_xlat0;
    u_xlat3 = fract(vec2<f32>(x_52.y, x_52.z));
    let x_55 : vec2<f32> = u_xlat3;
    u_xlat3 = (x_55 * vec2<f32>(10.0f, 10.0f));
    let x_58 : vec2<f32> = u_xlat3;
    u_xlat3 = floor(x_58);
    let x_64 : vec2<f32> = u_xlat3;
    u_xlati3 = vec2<i32>(x_64);
    let x_70 : i32 = u_xlati3.x;
    u_xlatb3 = (x_70 >= 5i);
    let x_73 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_73);
    let x_80 : i32 = u_xlati3.x;
    let x_83 : i32 = u_xlati3.y;
    u_xlati7.x = (x_80 + x_83);
    let x_87 : i32 = u_xlati7.x;
    u_xlatb3 = (x_87 >= 10i);
    let x_92 : i32 = u_xlati7.x;
    u_xlati1.x = (x_92 + -10i);
    u_xlati1.y = 1i;
    u_xlati7.y = 0i;
    let x_98 : bool = u_xlatb3;
    if (x_98) {
      let x_103 : vec2<i32> = u_xlati1;
      x_100 = x_103;
    } else {
      let x_105 : vec2<i32> = u_xlati7;
      x_100 = x_105;
    }
    let x_106 : vec2<i32> = x_100;
    u_xlati3 = x_106;
    let x_110 : f32 = phase0_Input0_3.z;
    u_xlat9 = fract(x_110);
    let x_112 : f32 = u_xlat9;
    u_xlat9 = (x_112 * 10.0f);
    let x_114 : f32 = u_xlat9;
    u_xlat9 = floor(x_114);
    let x_117 : f32 = u_xlat9;
    u_xlati9 = i32(x_117);
    let x_120 : i32 = u_xlati3.y;
    let x_121 : i32 = u_xlati9;
    u_xlati7.x = (x_120 + x_121);
    let x_126 : i32 = u_xlati7.x;
    u_xlatb6 = (x_126 >= 10i);
    let x_129 : i32 = u_xlati7.x;
    u_xlati1.x = (x_129 + -10i);
    u_xlati1.y = 1i;
    u_xlati7.y = 0i;
    let x_135 : bool = u_xlatb6;
    if (x_135) {
      let x_139 : vec2<i32> = u_xlati1;
      x_136 = x_139;
    } else {
      let x_141 : vec2<i32> = u_xlati7;
      x_136 = x_141;
    }
    let x_142 : vec2<i32> = x_136;
    u_xlati6 = x_142;
    let x_146 : f32 = phase0_Input0_3.x;
    u_xlatb1 = (0.25f >= x_146);
    let x_148 : bool = u_xlatb1;
    if (x_148) {
      let x_153 : f32 = phase0_Input0_3.z;
      u_xlat1.x = floor(x_153);
      let x_157 : f32 = u_xlat1.x;
      u_xlati1.x = i32(x_157);
      let x_161 : i32 = u_xlati6.y;
      let x_163 : i32 = u_xlati1.x;
      u_xlati9 = (x_161 + x_163);
      let x_166 : f32 = u_xlat0.x;
      u_xlat0.x = x_166;
      let x_169 : f32 = u_xlat0.x;
      u_xlat0.x = clamp(x_169, 0.0f, 1.0f);
      let x_173 : i32 = u_xlati9;
      u_xlat9 = f32(x_173);
      let x_175 : f32 = u_xlat9;
      let x_177 : f32 = u_xlat0.x;
      u_xlat0.x = (x_175 + x_177);
      let x_181 : f32 = u_xlat0.x;
      u_xlat1.x = (x_181 * 0.0625f);
      let x_186 : f32 = phase0_Input0_3.y;
      u_xlat1.y = x_186;
      let x_198 : vec4<f32> = u_xlat1;
      let x_200 : vec4<f32> = textureSample(x_NumbersTex, sampler_NumbersTex, vec2<f32>(x_198.x, x_198.y));
      u_xlat0.x = x_200.x;
    } else {
      let x_207 : f32 = phase0_Input0_3.x;
      u_xlatb9 = (0.5f >= x_207);
      let x_209 : bool = u_xlatb9;
      if (x_209) {
        let x_213 : f32 = phase0_Input0_3.x;
        u_xlat9 = ((x_213 * 4.0f) + -1.0f);
        let x_217 : f32 = u_xlat9;
        u_xlat9 = clamp(x_217, 0.0f, 1.0f);
        let x_219 : f32 = u_xlat9;
        u_xlat9 = (x_219 + 10.0f);
        let x_221 : f32 = u_xlat9;
        u_xlat1.x = (x_221 * 0.0625f);
        let x_225 : f32 = phase0_Input0_3.y;
        u_xlat1.y = x_225;
        let x_230 : vec4<f32> = u_xlat1;
        let x_232 : vec4<f32> = textureSample(x_NumbersTex, sampler_NumbersTex, vec2<f32>(x_230.x, x_230.y));
        u_xlat0.x = x_232.x;
      } else {
        let x_238 : f32 = phase0_Input0_3.x;
        u_xlatb9 = (0.75f >= x_238);
        let x_240 : bool = u_xlatb9;
        if (x_240) {
          let x_244 : f32 = phase0_Input0_3.x;
          u_xlat9 = ((x_244 * 4.0f) + -2.0f);
          let x_248 : f32 = u_xlat9;
          u_xlat9 = clamp(x_248, 0.0f, 1.0f);
          let x_252 : i32 = u_xlati6.x;
          u_xlat6 = f32(x_252);
          let x_254 : f32 = u_xlat6;
          let x_255 : f32 = u_xlat9;
          u_xlat6 = (x_254 + x_255);
          let x_257 : f32 = u_xlat6;
          u_xlat1.x = (x_257 * 0.0625f);
          let x_261 : f32 = phase0_Input0_3.y;
          u_xlat1.y = x_261;
          let x_266 : vec4<f32> = u_xlat1;
          let x_268 : vec4<f32> = textureSample(x_NumbersTex, sampler_NumbersTex, vec2<f32>(x_266.x, x_266.y));
          u_xlat0.x = x_268.x;
        } else {
          let x_273 : f32 = phase0_Input0_3.x;
          u_xlat6 = ((x_273 * 4.0f) + -3.0f);
          let x_277 : f32 = u_xlat6;
          u_xlat6 = clamp(x_277, 0.0f, 1.0f);
          let x_280 : i32 = u_xlati3.x;
          u_xlat3.x = f32(x_280);
          let x_284 : f32 = u_xlat3.x;
          let x_285 : f32 = u_xlat6;
          u_xlat3.x = (x_284 + x_285);
          let x_289 : f32 = u_xlat3.x;
          u_xlat1.x = (x_289 * 0.0625f);
          let x_293 : f32 = phase0_Input0_3.y;
          u_xlat1.y = x_293;
          let x_298 : vec4<f32> = u_xlat1;
          let x_300 : vec4<f32> = textureSample(x_NumbersTex, sampler_NumbersTex, vec2<f32>(x_298.x, x_298.y));
          u_xlat0.x = x_300.x;
        }
      }
    }
    let x_305 : f32 = phase0_Input0_3.w;
    u_xlatb3 = (0.0f < x_305);
    let x_307 : vec3<f32> = u_xlat0;
    u_xlat1 = ((vec4<f32>(x_307.x, x_307.x, x_307.x, x_307.x) * vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f)) + vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
    let x_314 : vec3<f32> = u_xlat0;
    u_xlat2 = ((vec4<f32>(x_314.x, x_314.x, x_314.x, x_314.x) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
    let x_322 : bool = u_xlatb3;
    let x_323 : vec4<f32> = u_xlat1;
    let x_324 : vec4<f32> = u_xlat2;
    SV_Target0 = select(x_324, x_323, vec4<bool>(x_322, x_322, x_322, x_322));
    return;
  } else {
    let x_330 : f32 = vs_COLOR0.y;
    u_xlatb0 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_330, x_330, x_330, x_330))));
    let x_334 : bool = u_xlatb0;
    if (x_334) {
      let x_342 : vec4<f32> = x_339.x_DebugArrowColor;
      SV_Target0 = x_342;
      return;
    } else {
      let x_346 : f32 = vs_COLOR0.x;
      u_xlatb0 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_346, x_346, x_346, x_346))));
      let x_350 : bool = u_xlatb0;
      if (x_350) {
        let x_355 : vec4<f32> = x_339.x_DebugLocator02Color;
        SV_Target0 = x_355;
        return;
      } else {
        let x_359 : vec4<f32> = x_339.x_DebugLocator01Color;
        SV_Target0 = x_359;
        return;
      }
    }
  }
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


