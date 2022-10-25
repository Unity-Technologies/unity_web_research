struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_SourceSize : vec4<f32>,
  x_CoCParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> SV_Target0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_SourceSize;
  u_xlat0 = (x_12 * vec2<f32>(x_21.x, x_21.y));
  let x_28 : vec2<f32> = u_xlat0;
  let x_32 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(x_28));
  let x_33 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_32.x, x_32.y, x_33.z, x_33.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_45 : vec4<u32> = u_xlatu0;
  let x_49 : u32 = u_xlatu0.w;
  let x_51 : vec4<f32> = textureLoad(x_CameraDepthTexture, bitcast<vec2<i32>>(vec2<u32>(x_45.x, x_45.y)), bitcast<i32>(x_49));
  u_xlat0.x = x_51.x;
  let x_58 : f32 = x_16.x_ZBufferParams.z;
  let x_60 : f32 = u_xlat0.x;
  let x_63 : f32 = x_16.x_ZBufferParams.w;
  u_xlat0.x = ((x_58 * x_60) + x_63);
  let x_68 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_68);
  let x_73 : f32 = x_16.x_CoCParams.x;
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = (x_73 / x_75);
  let x_79 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_79) + 1.0f);
  let x_84 : f32 = u_xlat0.x;
  let x_87 : f32 = x_16.x_CoCParams.y;
  u_xlat0.x = (x_84 * x_87);
  let x_92 : f32 = u_xlat0.x;
  u_xlat1 = max(x_92, -1.0f);
  let x_96 : f32 = u_xlat0.x;
  u_xlat0.x = x_96;
  let x_99 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_99, 0.0f, 1.0f);
  let x_103 : f32 = u_xlat1;
  u_xlat1 = min(x_103, 0.0f);
  let x_105 : f32 = u_xlat1;
  let x_107 : f32 = u_xlat0.x;
  u_xlat0.x = (x_105 + x_107);
  let x_111 : f32 = u_xlat0.x;
  u_xlat0.x = (x_111 + 1.0f);
  let x_117 : f32 = u_xlat0.x;
  SV_Target0 = (x_117 * 0.5f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

