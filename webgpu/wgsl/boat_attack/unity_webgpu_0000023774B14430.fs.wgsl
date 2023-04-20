diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_HDRDebugParams : vec4<f32>,
}

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_DebugScreenTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlatu0 : vec4<u32>;

@group(0) @binding(1) var x_xyBufferRW_origX1X : texture_storage_2d<r32float, write>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_104 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_HDRDebugParams.w;
  u_xlatb0 = (x_21 == 0.0f);
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  let x_42 : f32 = x_14.x_GlobalMipBias.x;
  let x_43 : vec4<f32> = textureSampleBias(x_DebugScreenTexture, sampler_PointClamp, x_38, x_42);
  u_xlat1 = x_43;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(0.4123910069465637207f, 0.3575839996337890625f, 0.18048100173473358154f), vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_60 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(vec3<f32>(0.21263900399208068848f, 0.71516901254653930664f, 0.07219229638576507568f), vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(vec3<f32>(0.01933079957962036133f, 0.1191949993371963501f, 0.95053201913833618164f), vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec3<f32>(0.63857400417327880859f, 0.14461700618267059326f, 0.16726499795913696289f), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(vec3<f32>(0.26336699724197387695f, 0.67799800634384155273f, 0.05863529816269874573f), vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(vec2<f32>(0.0280726999044418335f, 1.06098997592926025391f), vec2<f32>(x_94.y, x_94.z));
  let x_100 : vec4<f32> = u_xlat1;
  SV_Target0 = x_100;
  let x_102 : bool = u_xlatb0;
  if (x_102) {
    let x_107 : vec3<f32> = u_xlat2;
    x_104 = x_107;
  } else {
    let x_109 : vec3<f32> = u_xlat3;
    x_104 = x_109;
  }
  let x_110 : vec3<f32> = x_104;
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat8 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : f32 = u_xlat8;
  u_xlat0 = (vec4<f32>(x_119.x, x_119.y, x_119.y, x_119.y) / vec4<f32>(x_121, x_121, x_121, x_121));
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = x_14.x_HDRDebugParams;
  u_xlat0 = (x_124 * vec4<f32>(x_127.x, x_127.y, x_127.y, x_127.y));
  let x_133 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec4<u32>(x_133);
  let x_140 : vec4<u32> = u_xlatu0;
  textureStore(x_xyBufferRW_origX1X, bitcast<vec2<i32>>(vec2<u32>(x_140.x, x_140.y)), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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


